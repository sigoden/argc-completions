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
# write, so an invalid parent cannot leave a half-finalized cache. One
# fragment-records read per node yields the validation verdict and the
# declaration data (name, status, aliases, description) the sync pass needs.
declare -A declared=()
# S-record data of each parent, keyed by parent path, kept as the raw record
# lines so pass 2 never re-reads or re-parses a parent fragment.
declare -A parent_subs=()
queue=("$root_fragment")
keys=("$root")
while [[ ${#queue[@]} -gt 0 ]]; do
    parent="${queue[0]}"
    parent_key="${keys[0]}"
    queue=("${queue[@]:1}")
    keys=("${keys[@]:1}")

    declared["$parent"]=1
    if ! records="$(read_fragment_records "$parent_key" "$parent" 2>/dev/null)"; then
        die "invalid fragment: $parent"
    fi

    if [[ "$parent" == "$root_fragment" ]]; then
        child_dir="$cache_dir"
    else
        child_dir="${parent%.json}"
    fi
    subs=""
    while IFS=$'\x1f' read -r kind name status aliases description; do
        [[ "$kind" == S ]] || continue
        [[ -n "$name" ]] || continue
        child="$child_dir/$(fragment_name_encode "$name").json"
        declared["$child"]=1
        subs+="$name"$'\x1f'"$status"$'\x1f'"$aliases"$'\x1f'"$description"$'\n'
        if [[ -f "$child" ]]; then
            queue+=("$child")
            keys+=("$parent_key|$name")
        fi
    done <<<"$records"
    parent_subs["$parent"]="$subs"
done

# Pass 2: sync derived metadata and statuses. The parent entry already produced
# the desired description/aliases, so the child is read once (records) and is
# only rewritten when it differs.
synced=0
queue=("$root_fragment")
keys=("$root")
while [[ ${#queue[@]} -gt 0 ]]; do
    parent="${queue[0]}"
    parent_key="${keys[0]}"
    queue=("${queue[@]:1}")
    keys=("${keys[@]:1}")

    if [[ "$parent" == "$root_fragment" ]]; then
        child_dir="$cache_dir"
    else
        child_dir="${parent%.json}"
    fi

    updates=""
    while IFS=$'\x1f' read -r name status aliases entry_description; do
        [[ -n "$name" ]] || continue
        child="$child_dir/$(fragment_name_encode "$name").json"
        if [[ -f "$child" ]]; then
            queue+=("$child")
            keys+=("$parent_key|$name")
            # Pass 1 already validated every reachable fragment, so this read
            # only needs the derived fields.
            if ! child_records="$(extract_fragment_records "$parent_key|$name" "$child" 2>/dev/null)"; then
                die "cannot read fragment: $child"
            fi
            child_description=""
            child_aliases=""
            kind=""
            while IFS=$'\x1f' read -r child_kind c1 _c2 _c3 _c4; do
                case "$child_kind" in
                    D) child_description="$c1" ;;
                    A) child_aliases="$c1" ;;
                    X) kind="$c1" ;;
                esac
            done <<<"$child_records"
            if [[ "$entry_description" != "$child_description" || "$aliases" != "$child_aliases" ]]; then
                aliases_json="[]"
                if [[ -n "$aliases" ]]; then
                    IFS=',' read -r -a alias_parts <<<"$aliases"
                    aliases_json=""
                    for alias_name in "${alias_parts[@]}"; do
                        aliases_json+="${aliases_json:+,}\"$alias_name\""
                    done
                    aliases_json="[$aliases_json]"
                fi
                updated="$(jq --arg description "$entry_description" --argjson aliases "$aliases_json" \
                    '.description = $description | .aliases = $aliases' "$(native_path "$child")")"
                write_file_atomic "$child" "$updated"
                synced=$((synced + 1))
            fi
            if [[ "$kind" == "none" ]]; then
                status="failed"
            else
                status="succeeded"
            fi
        else
            status="todo"
        fi
        updates+="${updates:+,}\"$name\":\"$status\""
    done <<<"${parent_subs[$parent]}"

    updated_parent="$(jq --argjson updates "{$updates}" \
        '.subcommands = ((.subcommands // []) | map(.status = ($updates[.name] // .status)))' "$(native_path "$parent")")"
    if [[ "$updated_parent" != "$(<"$parent")" ]]; then
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
