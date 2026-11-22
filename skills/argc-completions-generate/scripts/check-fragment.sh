#!/usr/bin/env bash
# Check one fragment before dispatching a compile subagent.
#
# Usage:
#   check-fragment.sh <root> [<sub>...] [--cache-dir <dir>] [--completion <file>]
#
# Prints one line of key=value pairs. Status values:
#   hit         the recomputed hash matches the fragment
#   invalid     schema error, invalid source.command, or hash mismatch
#   missing     no fragment for this path
#   unverified  the help command failed, timed out, or produced no output
#   failed      source.kind is none (reuse the minimal failed fragment)
#
# The script never recurses, never writes the cache, and never migrates an old
# fragment. Exit status is 0 for every reported status; non-zero is reserved
# for usage and dependency errors.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    cat <<'USAGE'
Usage: check-fragment.sh <root> [<sub>...] [--cache-dir <dir>] [--completion <file>]

Options:
  --cache-dir <dir>    Fragment cache directory
  --completion <file>  Completion script that supplies the context body
  -h, --help           Show this help

Prints `path=<root>[/<sub>...] status=<hit|invalid|missing|unverified|failed>`.
A status of invalid also prints reason=<schema|hash-mismatch>.
Exit status is 0 for every reported status; non-zero is reserved for usage
and dependency errors.
USAGE
}

root=""
subs=()
cache_override=""
completion_file=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --cache-dir)
            cli_require_value "$1" "$#"
            cache_override="$2"
            shift 2
            ;;
        --completion)
            cli_require_value "$1" "$#"
            completion_file="$2"
            shift 2
            ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            if [[ -z "$root" ]]; then
                root="$1"
            else
                subs+=("$1")
            fi
            shift
            ;;
    esac
done

[[ -n "$root" ]] || { usage >&2; exit 2; }

parts=("$root" "${subs[@]}")
root_name_ok "$root" || die "invalid command path component: $root"
for part in "${subs[@]}"; do
    [[ -n "$part" ]] || die "empty command path component"
    sub_name_ok "$part" || die "invalid command path component: $part"
done

# Report the path slash-separated so `path=` stays a single whitespace-free
# field; "/" cannot occur in a validated component.
path_string="$root"
for part in "${subs[@]}"; do
    path_string+="/$part"
done

cache_dir="$(fragment_cache_dir "$root" "$cache_override")"
fragment="$(fragment_file_path "$cache_dir" "$root" "${subs[@]}")"

if [[ ! -f "$fragment" ]]; then
    printf 'path=%s status=missing\n' "$path_string"
    exit 0
fi

key="${parts[*]}"
key="${key// /|}"
# One records read validates the fragment and yields its hash/source.kind: a
# failing read means the schema verdict was a rejection.
if ! records="$(read_fragment_records "$key" "$fragment" 2>/dev/null)"; then
    printf 'path=%s status=invalid reason=schema\n' "$path_string"
    exit 0
fi
kind=""
recorded_hash=""
if provenance="$(records_provenance "$records")"; then
    IFS=$'\x1f' read -r kind recorded_hash _ _ <<<"$provenance"
fi
if [[ "$kind" == "none" ]]; then
    printf 'path=%s status=failed hash=\n' "$path_string"
    exit 0
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT
err_file="$tmp_dir/hash.err"
rc=0
hash_args=("$root" "${subs[@]}" --cache-dir "$cache_dir")
if [[ -n "$completion_file" ]]; then
    hash_args+=(--completion "$completion_file")
fi
if hash_out="$(bash "$SCRIPT_DIR/fragment-hash.sh" "${hash_args[@]}" 2>"$err_file")"; then
    rc=0
else
    rc=$?
fi

case "$rc" in
    0) ;;
    3)
        printf 'path=%s status=unverified reason=help-unavailable\n' "$path_string"
        exit 0
        ;;
    2)
        printf 'path=%s status=invalid reason=schema\n' "$path_string"
        exit 0
        ;;
    *)
        cat "$err_file" >&2
        exit "$rc"
        ;;
esac

if [[ "$hash_out" == "$recorded_hash" ]]; then
    printf 'path=%s status=hit hash=%s\n' "$path_string" "$hash_out"
else
    printf 'path=%s status=invalid reason=hash-mismatch\n' "$path_string"
fi
