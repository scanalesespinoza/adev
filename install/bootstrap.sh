#!/usr/bin/env bash
# Clone or fast-forward A-Dev and optional overlay repositories, then run install.sh.
set -euo pipefail

adev_url="${ADEV_REPOSITORY_URL:-https://github.com/scanalesespinoza/adev.git}"
workspace_path="$PWD"
reference=""
profile="standard"
overlay_urls=()
extra_urls=()

usage() {
    printf '%s\n' \
        'Usage: bootstrap.sh [--workspace PATH] [--ref BRANCH_OR_TAG] [--profile NAME]' \
        '                    [--overlay-repo URL]... [--repo URL]...' \
        '' \
        'Clones or fast-forwards A-Dev into PATH/adev, each --overlay-repo and --repo into' \
        'PATH/<name>, then registers A-Dev and the overlays. --repo only keeps a checkout' \
        'current, for repositories that an overlay references. Existing checkouts are' \
        'never replaced: a non-Git path, an unexpected origin, local changes, or a' \
        'non-default branch stop the bootstrap.'
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        --workspace) workspace_path="${2:?}"; shift 2 ;;
        --ref) reference="${2:?}"; shift 2 ;;
        --profile) profile="${2:?}"; shift 2 ;;
        --overlay-repo) overlay_urls+=("${2:?}"); shift 2 ;;
        --repo) extra_urls+=("${2:?}"); shift 2 ;;
        --help|-h) usage; exit 0 ;;
        *) printf 'Unknown argument: %s\n' "$1" >&2; usage >&2; exit 2 ;;
    esac
done

command -v git >/dev/null 2>&1 || { printf 'git is required.\n' >&2; exit 1; }

same_remote() {
    local expected="${1%.git}" actual="${2%.git}"
    if [[ "$expected" == https://github.com/* ]]; then
        [[ "$actual" == "$expected" || "$actual" == "git@github.com:${expected#https://github.com/}" ]]
    else
        [[ "$actual" == "$expected" ]]
    fi
}

checkout_name() {
    local name="${1%.git}"
    printf '%s' "${name##*/}"
}

sync_repository() {
    local url="$1" destination="$2" requested_ref="$3" branch default_branch target
    if [[ ! -e "$destination" ]]; then
        if [[ -n "$requested_ref" ]]; then
            git clone --branch "$requested_ref" "$url" "$destination"
        else
            git clone "$url" "$destination"
        fi
        return
    fi
    git -C "$destination" rev-parse --is-inside-work-tree >/dev/null 2>&1 \
        || { printf 'Refusing to replace non-Git path: %s\n' "$destination" >&2; exit 1; }
    same_remote "$url" "$(git -C "$destination" remote get-url origin)" \
        || { printf 'Refusing to update a checkout with an unexpected origin: %s\n' "$destination" >&2; exit 1; }
    [[ -z "$(git -C "$destination" status --porcelain)" ]] \
        || { printf 'Refusing to update a checkout with local changes: %s\n' "$destination" >&2; exit 1; }
    git -C "$destination" fetch --prune origin
    git -C "$destination" remote set-head origin -a >/dev/null
    branch="$(git -C "$destination" branch --show-current)"
    default_branch="$(git -C "$destination" symbolic-ref --quiet --short refs/remotes/origin/HEAD)"
    target="${requested_ref:-${default_branch#origin/}}"
    [[ "$branch" == "$target" ]] \
        || { printf 'Refusing to change branch in %s (current: %s, expected: %s)\n' "$destination" "$branch" "$target" >&2; exit 1; }
    git -C "$destination" merge --ff-only "origin/$target"
}

mkdir -p -- "$workspace_path"
workspace_path="$(cd -- "$workspace_path" && pwd -P)"

sync_repository "$adev_url" "$workspace_path/adev" "$reference"
install_args=(--profile "$profile")
for url in ${overlay_urls[@]+"${overlay_urls[@]}"}; do
    destination="$workspace_path/$(checkout_name "$url")"
    sync_repository "$url" "$destination" ""
    install_args+=(--overlay "$destination")
done
for url in ${extra_urls[@]+"${extra_urls[@]}"}; do
    sync_repository "$url" "$workspace_path/$(checkout_name "$url")" ""
done

exec "$workspace_path/adev/install/install.sh" "${install_args[@]}"
