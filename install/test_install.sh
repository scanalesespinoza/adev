#!/usr/bin/env bash
# Exercise install.sh against a temporary home directory. No network access is used.
set -euo pipefail

script_dir="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)"
adev_root="$(CDPATH= cd -- "$script_dir/.." && pwd -P)"
sandbox="$(mktemp -d)"
trap 'rm -rf -- "$sandbox"' EXIT

fail() { printf 'FAIL: %s\n' "$1" >&2; exit 1; }

export HOME="$sandbox/home"
unset CLAUDE_CONFIG_DIR CODEX_HOME AGENT_SKILLS_PATH
mkdir -p "$HOME/.claude" "$sandbox/overlay"
printf '# Existing user guidance\n\nKeep me.\n' >"$HOME/.claude/CLAUDE.md"
printf -- '---\nname: example-overlay\ndescription: Test overlay.\n---\n\n# Overlay\n' >"$sandbox/overlay/SKILL.md"

"$adev_root/install/install.sh" --profile guided --overlay "$sandbox/overlay" >/dev/null

for base in "$HOME/.claude/skills" "$HOME/.codex/skills" "$HOME/.agents/skills"; do
    [[ "$(readlink -f "$base/adev")" == "$adev_root" ]] || fail "adev skill link in $base"
    [[ "$(readlink -f "$base/example-overlay")" == "$(readlink -f "$sandbox/overlay")" ]] || fail "overlay skill link in $base"
done

claude="$HOME/.claude/CLAUDE.md"
grep -Fq 'Keep me.' "$claude" || fail "existing guidance preserved"
grep -Fq 'A-Dev profile: guided' "$claude" || fail "profile recorded"
grep -Fq 'Overlay example-overlay:' "$claude" || fail "overlay recorded"
grep -Fq 'A-Dev profile: guided' "$HOME/.codex/AGENTS.md" || fail "codex guidance written"

"$adev_root/install/install.sh" --profile standard >/dev/null
[[ "$(grep -c '<!-- adev:start -->' "$claude")" == 1 ]] || fail "managed section is replaced, not duplicated"
grep -Fq 'A-Dev profile: standard' "$claude" || fail "profile updated"
! grep -Fq 'Overlay example-overlay:' "$claude" || fail "removed overlay no longer listed"
grep -Fq 'Keep me.' "$claude" || fail "existing guidance preserved after update"

if "$adev_root/install/install.sh" --profile reckless >/dev/null 2>&1; then fail "unknown profile rejected"; fi
if "$adev_root/install/install.sh" --overlay "$sandbox/missing" >/dev/null 2>&1; then fail "overlay without SKILL.md rejected"; fi

printf 'install.sh: PASS\n'
