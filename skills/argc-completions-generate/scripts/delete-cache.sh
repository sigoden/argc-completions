#!/usr/bin/env bash
# Delete the entire fragment cache for one root command and recreate it empty.
#
# Usage: delete-cache.sh <root>
#
# The caller asks the user for confirmation first; this script never prompts.
# Subcommand paths are rejected: only a full-root reset is supported. The
# completion script itself is not touched.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"

usage() {
    cat <<'USAGE'
Usage: delete-cache.sh <root>

Delete <REPO_ROOT>/cache/compile/<root> and recreate it empty. Only a full
root is accepted; a subcommand path is rejected.

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

[[ ${#args[@]} -eq 1 ]] || { usage >&2; exit 2; }

root="${args[0]}"
[[ -n "$root" ]] || die "empty root command name"
root_name_ok "$root" || die "invalid root command name: $root"

cache_root="$REPO_ROOT/cache/compile"
cache_dir="$cache_root/$root"

case "$cache_dir" in
    "$cache_root"/*) ;;
    *) die "refusing to delete outside $cache_root: $cache_dir" ;;
esac
[[ "$cache_dir" != "$cache_root" ]] || die "refusing to delete $cache_root"

if [[ -e "$cache_dir" || -L "$cache_dir" ]]; then
    rm -rf -- "$cache_dir"
fi
[[ ! -e "$cache_dir" && ! -L "$cache_dir" ]] || die "failed to remove $cache_dir"

mkdir -p -- "$cache_dir"
[[ -d "$cache_dir" ]] || die "failed to create $cache_dir"

printf 'mode=full\n'
printf 'root=%s\n' "$root"
printf 'cache_dir=%s\n' "$cache_dir"
printf 'deleted=1\n'
