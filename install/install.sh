#!/usr/bin/env bash
# Register A-Dev, a baseline profile, and optional overlays for local coding agents.
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
adev_root="$(CDPATH= cd -- "$script_dir/.." && pwd -P)"
user_home_path="${HOME:?HOME must be set}"
codex_home_path="${CODEX_HOME:-$user_home_path/.codex}"
claude_home_path="${CLAUDE_CONFIG_DIR:-$user_home_path/.claude}"
agent_skills_path="${AGENT_SKILLS_PATH:-$user_home_path/.agents/skills}"
profile="standard"
overlays=()
start_marker='<!-- adev:start -->'
end_marker='<!-- adev:end -->'

usage() {
    printf '%s\n' \
        'Usage: install.sh [--profile guided|standard|autonomous] [--overlay PATH]...' \
        '' \
        'Registers the A-Dev skill and each overlay skill for Claude Code, Codex, and' \
        'agents that read ~/.agents/skills, then writes a managed guidance section in' \
        'Claude Code CLAUDE.md and Codex AGENTS.md. Existing unrelated configuration is' \
        'preserved. CLAUDE_CONFIG_DIR, CODEX_HOME, and AGENT_SKILLS_PATH override the' \
        'default locations.'
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --profile) profile="${2:?--profile requires a value}"; shift 2 ;;
        --overlay) overlays+=("${2:?--overlay requires a path}"); shift 2 ;;
        --help|-h) usage; exit 0 ;;
        *) printf 'Unknown argument: %s\n' "$1" >&2; usage >&2; exit 2 ;;
    esac
done

if [[ ! -f "$adev_root/profiles/$profile.md" ]]; then
    printf 'Unknown profile: %s (expected guided, standard, or autonomous)\n' "$profile" >&2
    exit 2
fi

skill_name() {
    local name
    name="$(awk '/^---$/ { n++; next } n == 1 && /^name:/ { sub(/^name:[[:space:]]*/, ""); print; exit }' "$1/SKILL.md")"
    if [[ ! "$name" =~ ^[a-z0-9][a-z0-9-]*$ ]]; then
        printf 'SKILL.md in %s needs a frontmatter name of lowercase letters, digits, and hyphens.\n' "$1" >&2
        exit 1
    fi
    printf '%s' "$name"
}

ensure_skill_link() {
    local source_path="$1" destination_path="$2" existing_target
    mkdir -p -- "$(dirname -- "$destination_path")"
    if [[ -e "$destination_path" || -L "$destination_path" ]]; then
        existing_target="$(readlink -f -- "$destination_path" 2>/dev/null || true)"
        if [[ "$existing_target" == "$source_path" ]]; then
            printf 'Skill already registered: %s\n' "$destination_path"
        else
            printf 'Warning: kept existing skill location: %s\n' "$destination_path" >&2
        fi
        return
    fi
    ln -s -- "$source_path" "$destination_path"
    printf 'Registered skill: %s -> %s\n' "$destination_path" "$source_path"
}

register_skill() {
    local source_path="$1" name="$2"
    ensure_skill_link "$source_path" "$agent_skills_path/$name"
    ensure_skill_link "$source_path" "$codex_home_path/skills/$name"
    ensure_skill_link "$source_path" "$claude_home_path/skills/$name"
}

guidance_path="$(mktemp)"
trap 'rm -f -- "$guidance_path"' EXIT

register_skill "$adev_root" "$(skill_name "$adev_root")"
{
    printf '%s\n' "$start_marker" '# A-Dev' ''
    printf '%s\n' "- For software-delivery work, read and apply $adev_root/SKILL.md within the authorized scope."
    printf '%s\n' "- A-Dev profile: $profile ($adev_root/profiles/$profile.md). A more specific declaration in the task or repository takes precedence."
} >"$guidance_path"

for overlay in ${overlays[@]+"${overlays[@]}"}; do
    overlay_root="$(readlink -f -- "$overlay" 2>/dev/null || true)"
    if [[ -z "$overlay_root" || ! -f "$overlay_root/SKILL.md" ]]; then
        printf 'Overlay has no SKILL.md: %s\n' "$overlay" >&2
        exit 1
    fi
    name="$(skill_name "$overlay_root")"
    register_skill "$overlay_root" "$name"
    printf '%s\n' "- Overlay $name: at the beginning of every session, read $overlay_root/SKILL.md and follow its startup procedure." >>"$guidance_path"
done

printf '%s\n' \
    '- Loading this guidance does not authorize remote writes, deployment, or destructive operations.' \
    "$end_marker" >>"$guidance_path"

write_guidance() {
    local destination_path="$1" output_path
    output_path="$(mktemp)"
    mkdir -p -- "$(dirname -- "$destination_path")"
    if [[ -f "$destination_path" ]] && grep -Fxq "$start_marker" "$destination_path" && grep -Fxq "$end_marker" "$destination_path"; then
        awk -v guide="$guidance_path" -v start="$start_marker" -v end="$end_marker" '
            $0 == start { while ((getline line < guide) > 0) print line; close(guide); skipping = 1; next }
            skipping { if ($0 == end) skipping = 0; next }
            { print }
        ' "$destination_path" >"$output_path"
    else
        if [[ -s "$destination_path" ]]; then
            awk '1' "$destination_path" >"$output_path"
            printf '\n' >>"$output_path"
        fi
        awk '1' "$guidance_path" >>"$output_path"
    fi
    mv -- "$output_path" "$destination_path"
    printf 'Updated managed agent guidance: %s\n' "$destination_path"
    if grep -q -- '-context:start -->' "$destination_path"; then
        printf 'Note: %s also contains a section managed by another installer; review it for duplicate guidance.\n' "$destination_path" >&2
    fi
}

write_guidance "$codex_home_path/AGENTS.md"
write_guidance "$claude_home_path/CLAUDE.md"
printf 'Restart Claude Code and Codex, or begin new sessions, to load the updated guidance.\n'
