#!/usr/bin/env bash
# End-to-end test of bin/adev against a temporary home and local Git remotes. No network access.
set -euo pipefail

source_root="$(CDPATH= cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
sandbox="$(mktemp -d)"
trap 'rm -rf -- "$sandbox"' EXIT
step() { printf -- '- %s\n' "$1"; }
fail() { printf 'FAIL: %s\n' "$1" >&2; exit 1; }
git_quiet() { git -c user.name=test -c user.email=test@example.com -c init.defaultBranch=main "$@" >/dev/null 2>&1; }

export HOME="$sandbox/home"
export PATH="$HOME/.local/bin:$PATH"
unset CLAUDE_CONFIG_DIR CODEX_HOME AGENT_SKILLS_PATH XDG_CONFIG_HOME ADEV_BIN_DIR
mkdir -p "$HOME/.claude/skills" "$sandbox/remotes"

# Upstream A-Dev built from the current working tree, then a clone that acts as the user's checkout.
mkdir "$sandbox/src"
(cd "$source_root" && git ls-files -z --cached --others --exclude-standard | xargs -0 cp --parents -t "$sandbox/src")
git_quiet -C "$sandbox/src" init && git_quiet -C "$sandbox/src" add -A && git_quiet -C "$sandbox/src" commit -m initial
git_quiet clone --bare "$sandbox/src" "$sandbox/remotes/adev.git"
git_quiet clone "$sandbox/remotes/adev.git" "$sandbox/ws/adev"

# A personal overlay created from the template, with its own remote.
cp -r "$source_root/starter-kit/personal-overlay" "$sandbox/overlay-src"
sed -i 's/^name: personal-overlay$/name: test-overlay/' "$sandbox/overlay-src/SKILL.md"
git_quiet -C "$sandbox/overlay-src" init && git_quiet -C "$sandbox/overlay-src" add -A && git_quiet -C "$sandbox/overlay-src" commit -m initial
git_quiet clone --bare "$sandbox/overlay-src" "$sandbox/remotes/test-overlay.git"
git_quiet clone "$sandbox/remotes/test-overlay.git" "$sandbox/ws/test-overlay"

# Pre-existing user configuration: unrelated guidance, a legacy managed block, a foreign skill.
printf '# My notes\n\nKeep me.\n\n<!-- legacy-context:start -->\nold guidance\n<!-- legacy-context:end -->\n' >"$HOME/.claude/CLAUDE.md"
mkdir "$sandbox/foreign" && ln -s "$sandbox/foreign" "$HOME/.claude/skills/foreign"

adev="$sandbox/ws/adev/bin/adev"
claude="$HOME/.claude/CLAUDE.md"
overlay="$sandbox/ws/test-overlay"

step "install with profile, overlay, and legacy-section removal"
"$adev" install --profile guided --overlay "$overlay" --remove-section legacy-context >/dev/null
grep -Fq 'Keep me.' "$claude" || fail "unrelated guidance preserved"
! grep -Fq 'old guidance' "$claude" || fail "legacy section removed"
grep -Fq 'A-Dev profile: guided' "$claude" || fail "profile written"
grep -Fq 'engineering-baseline.md' "$claude" || fail "engineering baseline referenced"
grep -Fq 'Learning loop:' "$claude" || fail "learning loop referenced"
grep -Fq 'record evidence in overlay test-overlay' "$claude" || fail "learning loop targets the overlay"
for base in "$HOME/.claude/skills" "$HOME/.codex/skills" "$HOME/.agents/skills"; do
    for skill in adev adev-learn test-overlay; do
        [[ -L "$base/$skill" ]] || fail "skill $skill linked in $base"
    done
done
[[ "$(readlink -f "$HOME/.local/bin/adev")" == "$sandbox/ws/adev/bin/adev" ]] || fail "command linked"
command -v adev >/dev/null || fail "adev on PATH"

step "doctor passes on a healthy installation"
adev doctor >"$sandbox/doctor.out" || { cat "$sandbox/doctor.out"; fail "doctor healthy"; }
grep -q '0 failure' "$sandbox/doctor.out" || fail "doctor reports zero failures"

step "capture scaffolds records and indexes them"
(cd "$sandbox" && adev capture session --title "Timeouts & retries in CI" >/dev/null)
session_file="$overlay/evidence/sessions/$(date +%F)-timeouts-retries-in-ci.md"
[[ -f "$session_file" ]] || fail "session record created"
head -1 "$session_file" | grep -Fq 'Timeouts & retries in CI' || fail "title written with special characters"
grep -Fq "[Timeouts & retries in CI](sessions/$(date +%F)-timeouts-retries-in-ci.md)" "$overlay/evidence/INDEX.md" || fail "session indexed"
adev capture daily >/dev/null
[[ -f "$overlay/evidence/daily/$(date +%F).md" ]] || fail "daily record created"
head -1 "$overlay/evidence/daily/$(date +%F).md" | grep -Fq "$(date +%F)" || fail "daily date filled"
if adev capture daily >/dev/null 2>&1; then fail "existing record not overwritten"; fi
if adev capture incident >/dev/null 2>&1; then fail "incident requires a title"; fi
if adev capture lesson --title x >/dev/null 2>&1; then fail "unknown type rejected"; fi

step "update fast-forwards A-Dev and skips an overlay with local changes"
git_quiet clone "$sandbox/remotes/adev.git" "$sandbox/upstream-work"
printf '\nUpstream change.\n' >>"$sandbox/upstream-work/README.md"
git_quiet -C "$sandbox/upstream-work" commit -am "upstream change" && git_quiet -C "$sandbox/upstream-work" push
before="$(git -C "$sandbox/ws/adev" rev-parse HEAD)"
adev update >"$sandbox/update.out" 2>&1 || { cat "$sandbox/update.out"; fail "update ran"; }
[[ "$(git -C "$sandbox/ws/adev" rev-parse HEAD)" != "$before" ]] || fail "A-Dev fast-forwarded"
grep -q "local changes, skipped: $overlay" "$sandbox/update.out" || fail "dirty overlay skipped"
grep -Fq 'A-Dev profile: guided' "$claude" || fail "saved profile reapplied"
grep -Fq 'Overlay test-overlay:' "$claude" || fail "saved overlay reapplied"
[[ "$(grep -c '<!-- adev:start -->' "$claude")" == 1 ]] || fail "single managed section after update"

step "doctor detects a broken installation"
rm "$HOME/.codex/skills/adev-learn"
if adev doctor >/dev/null; then fail "doctor fails on a missing skill link"; fi
"$adev" install --profile guided --overlay "$overlay" >/dev/null 2>&1
adev doctor >/dev/null || fail "reinstall repairs the installation"

step "uninstall disconnects without touching repositories or foreign entries"
adev uninstall >/dev/null
! grep -Fq '<!-- adev:start -->' "$claude" || fail "managed section removed"
grep -Fq 'Keep me.' "$claude" || fail "unrelated guidance kept"
[[ ! -e "$HOME/.claude/skills/adev" && ! -e "$HOME/.agents/skills/test-overlay" ]] || fail "owned skill links removed"
[[ -L "$HOME/.claude/skills/foreign" ]] || fail "foreign skill link kept"
[[ ! -e "$HOME/.local/bin/adev" ]] || fail "command link removed"
[[ -d "$sandbox/ws/adev/.git" && -d "$overlay/.git" ]] || fail "repositories kept"
[[ -f "$session_file" ]] || fail "evidence kept"

printf 'adev CLI: PASS\n'
