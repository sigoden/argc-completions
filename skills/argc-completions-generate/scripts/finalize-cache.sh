#!/usr/bin/env bash
# Finalize a fragment cache after the compile queue is empty.
#
# Usage: finalize-cache.sh <root> [--cache-dir <dir>]
#
# - Copies each child's description and aliases from the parent entry.
# - Sets each parent entry status from the child fragment's source.kind:
#   none -> failed, help/man -> succeeded, missing fragment -> todo.
# - Deletes .json fragments that the current tree no longer declares and any
#   directories left empty.
#
# Old .txt help files are not removed or migrated. The script refuses to change
# anything when a declared existing fragment fails validation.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    cat <<'USAGE'
Usage: finalize-cache.sh <root> [--cache-dir <dir>]

Options:
  --cache-dir <dir>  Fragment cache directory (default:
                     <REPO_ROOT>/cache/compile/<root>)
  -h, --help         Show this help

Prints `synced=<n> removed=<n>`.
USAGE
}

root=""
cache_override=""
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --cache-dir)
            [[ $# -ge 2 ]] || die "--cache-dir requires a value"
            cache_override="$2"
            shift 2
            ;;
        -*)
            die "unknown option: $1"
            ;;
        *)
            [[ -z "$root" ]] || die "only one root command is supported"
            root="$1"
            shift
            ;;
    esac
done

[[ -n "$root" ]] || { usage >&2; exit 2; }
[[ "$root" =~ ^[A-Za-z0-9_.+@-]+$ ]] || die "invalid root command name: $root"
[[ "$root" != "." && "$root" != ".." ]] || die "invalid root command name: $root"

cache_dir="${cache_override:-$REPO_ROOT/cache/compile/$root}"
# Strip trailing slashes before building the declared-path set: find(1)
# normalizes a single trailing slash, so otherwise every declared fragment
# would look undeclared in pass 3 and be removed.
while [[ "$cache_dir" == */ ]]; do
    cache_dir="${cache_dir%/}"
done
[[ -n "$cache_dir" ]] || die "invalid cache directory: $cache_override"
root_fragment="$cache_dir/_root.json"
[[ -f "$root_fragment" ]] || die "root fragment not found: $root_fragment"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

# Pass 1: validate every fragment reachable from the current tree before any
# write, so an invalid parent cannot leave a half-finalized cache.
declare -A declared=()
queue=("$root_fragment")
keys=("$root")
while [[ ${#queue[@]} -gt 0 ]]; do
    parent="${queue[0]}"
    parent_key="${keys[0]}"
    queue=("${queue[@]:1}")
    keys=("${keys[@]:1}")

    declared["$parent"]=1
    if ! jq_skill -e -f "$(native_path "$SCRIPT_DIR/validate-fragment.jq")" --arg key "$parent_key" "$(native_path "$parent")" >/dev/null 2>&1; then
        die "invalid fragment: $parent"
    fi

    if [[ "$parent" == "$root_fragment" ]]; then
        child_dir="$cache_dir"
    else
        child_dir="${parent%.json}"
    fi
    while IFS= read -r name; do
        [[ -n "$name" ]] || continue
        child="$child_dir/$(fragment_name_encode "$name").json"
        declared["$child"]=1
        if [[ -f "$child" ]]; then
            queue+=("$child")
            keys+=("$parent_key|$name")
        fi
    done < <(jq -b -r '.subcommands[]?.name' "$(native_path "$parent")")
done

# Pass 2: sync derived metadata and statuses.
synced=0
queue=("$root_fragment")
while [[ ${#queue[@]} -gt 0 ]]; do
    parent="${queue[0]}"
    queue=("${queue[@]:1}")

    if [[ "$parent" == "$root_fragment" ]]; then
        child_dir="$cache_dir"
    else
        child_dir="${parent%.json}"
    fi

    updates='{}'
    while IFS= read -r name; do
        [[ -n "$name" ]] || continue
        child="$child_dir/$(fragment_name_encode "$name").json"
        if [[ -f "$child" ]]; then
            queue+=("$child")
            entry="$(jq -c --arg name "$name" '.subcommands[] | select(.name == $name)' "$(native_path "$parent")")"
            entry_description="$(jq -r '.description // ""' <<<"$entry")"
            entry_aliases="$(jq -c '.aliases // []' <<<"$entry")"
            child_description="$(jq -r '.description // ""' "$(native_path "$child")")"
            child_aliases="$(jq -c '.aliases // []' "$(native_path "$child")")"
            if [[ "$entry_description" != "$child_description" || "$entry_aliases" != "$child_aliases" ]]; then
                updated="$(jq --arg description "$entry_description" --argjson aliases "$entry_aliases" \
                    '.description = $description | .aliases = $aliases' "$(native_path "$child")")"
                write_file_atomic "$child" "$updated"
                synced=$((synced + 1))
            fi
            kind="$(jq -r '.source.kind' "$(native_path "$child")")"
            if [[ "$kind" == "none" ]]; then
                status="failed"
            else
                status="succeeded"
            fi
        else
            status="todo"
        fi
        updates="$(jq -n --argjson prev "$updates" --arg name "$name" --arg status "$status" \
            '$prev + {($name): $status}')"
    done < <(jq -b -r '.subcommands[]?.name' "$(native_path "$parent")")

    updated_parent="$(jq --argjson updates "$updates" \
        '.subcommands = ((.subcommands // []) | map(.status = ($updates[.name] // .status)))' "$(native_path "$parent")")"
    if [[ "$updated_parent" != "$(cat "$parent")" ]]; then
        write_file_atomic "$parent" "$updated_parent"
    fi
done

# Pass 3: remove fragments that the current tree no longer declares, then any
# directories left empty. Old .txt files are intentionally untouched.
removed=0
while IFS= read -r fragment; do
    if [[ -z "${declared["$fragment"]:-}" ]]; then
        rm -f -- "$fragment"
        removed=$((removed + 1))
    fi
done < <(find "$cache_dir" -type f -name '*.json' | LC_ALL=C sort)

find "$cache_dir" -mindepth 1 -depth -type d -empty -delete

printf 'synced=%d removed=%d\n' "$synced" "$removed"
