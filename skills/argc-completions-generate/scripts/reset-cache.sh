#!/usr/bin/env bash
# Reset the fragment cache for a root command or a subcommand subtree.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"

usage() {
    cat <<'USAGE'
Usage: reset-cache.sh <root> [<sub>...]

Delete fragment cache entries so the next compile treats them as absent.

  reset-cache.sh git              full root reset
  reset-cache.sh git add          reset the `git add` subtree
  reset-cache.sh git remote add   reset the `git remote add` subtree

A full reset deletes and recreates <REPO_ROOT>/cache/compile/<root>.
A subtree reset deletes the target fragment, its help text, and its descendant
fragments, then marks the target as todo in its parent fragment. The completion
script itself is not touched.

Options:
  -h, --help  Show this help
USAGE
}

args=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            args+=("$1")
            shift
            ;;
    esac
done

[[ ${#args[@]} -ge 1 ]] || { usage >&2; exit 2; }

for part in "${args[@]}"; do
    [[ -n "$part" ]] || die "empty command path component"
    [[ "$part" =~ ^[A-Za-z0-9_.+@-]+$ ]] || die "invalid command path component: $part"
    [[ "$part" != "." && "$part" != ".." ]] || die "invalid command path component: $part"
done

root="${args[0]}"
subs=("${args[@]:1}")

cache_root="$REPO_ROOT/cache/compile"
cache_dir="$cache_root/$root"

# Guard against path escapes; only one cache directory may be removed.
case "$cache_dir" in
    "$cache_root"/*) ;;
    *) die "refusing to reset outside $cache_root: $cache_dir" ;;
esac
[[ "$cache_dir" != "$cache_root" ]] || die "refusing to reset $cache_root"

if [[ ${#subs[@]} -eq 0 ]]; then
    if [[ -e "$cache_dir" || -L "$cache_dir" ]]; then
        rm -rf -- "$cache_dir"
    fi
    [[ ! -e "$cache_dir" && ! -L "$cache_dir" ]] || die "failed to remove $cache_dir"

    mkdir -p -- "$cache_dir"
    [[ -d "$cache_dir" ]] || die "failed to create $cache_dir"

    printf 'mode=full\n'
    printf 'root=%s\n' "$root"
    printf 'path=%s\n' "$root"
    printf 'cache_dir=%s\n' "$cache_dir"
    printf 'fragment=%s\n' "$cache_dir/_root.json"
    printf 'help=%s\n' "$cache_dir/_root.txt"
    printf 'parent_fragment=\n'
    printf 'reset=1\n'
    exit 0
fi

require_cmd jq "run $REPO_ROOT/install.sh"

target_fragment="$(fragment_file_path "$cache_dir" "$root" "${subs[@]}")"
target_help="${target_fragment%.json}.txt"
target_dir="${target_fragment%.json}"
parent_child="${subs[${#subs[@]}-1]}"
parent_subs=("${subs[@]:0:${#subs[@]}-1}")
parent_fragment="$(fragment_file_path "$cache_dir" "$root" "${parent_subs[@]}")"

[[ -f "$parent_fragment" ]] || die "parent fragment not found: $parent_fragment"
if ! jq -e 'type == "object" and (.subcommands | type == "array")' "$parent_fragment" >/dev/null 2>&1; then
    die "invalid parent fragment: $parent_fragment"
fi

if ! jq -e --arg name "$parent_child" '.subcommands[]? | select(.name == $name)' "$parent_fragment" >/dev/null; then
    alias_target="$(jq -r --arg name "$parent_child" '.subcommands[]? | select((.aliases // []) | index($name)) | .name' "$parent_fragment")"
    if [[ -n "$alias_target" ]]; then
        die "alias not supported: $parent_child (canonical name: $alias_target)"
    fi
    die "subcommand not declared: ${args[*]} (regenerate the parent or use full regenerate)"
fi

# Mark the parent entry todo before deleting files. A failure after this point
# leaves a blocked cache instead of a silently incomplete one.
tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT
jq --arg name "$parent_child" \
    '(.subcommands[] | select(.name == $name) | .status) = "todo"' \
    "$parent_fragment" >"$tmp"
mv "$tmp" "$parent_fragment"
trap - EXIT

if [[ -e "$target_fragment" || -L "$target_fragment" ]]; then
    rm -rf -- "$target_fragment"
fi
if [[ -e "$target_help" || -L "$target_help" ]]; then
    rm -rf -- "$target_help"
fi
if [[ -e "$target_dir" || -L "$target_dir" ]]; then
    rm -rf -- "$target_dir"
fi

printf 'mode=subtree\n'
printf 'root=%s\n' "$root"
printf 'path=%s\n' "${args[*]}"
printf 'cache_dir=%s\n' "$cache_dir"
printf 'fragment=%s\n' "$target_fragment"
printf 'help=%s\n' "$target_help"
printf 'parent_fragment=%s\n' "$parent_fragment"
printf 'reset=1\n'
