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
#
# Stages (see main): parse_args -> resolve_cache -> walk_declared
# -> apply_updates -> prune. walk_declared validates every reachable fragment
# and collects the data apply_updates writes, so a fragment is read once.

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

# --- state ------------------------------------------------------------------

root=""
cache_override=""
cache_dir=""
root_fragment=""
tmp_dir=""

# Declared fragment file -> 1, over the whole tree reachable from the root.
declare -A declared=()
# Parent fragment -> its "name<US>status<US>aliases-csv<US>description" lines.
declare -A parent_subs=()
# Derived fields of every visited fragment (filled by walk_declared).
declare -A frag_desc=()
declare -A frag_aliases=()
declare -A frag_kind=()

synced=0
removed=0

# --- inputs -----------------------------------------------------------------

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -h | --help)
                usage
                exit 0
                ;;
            --cache-dir)
                cli_require_value "$1" "$#"
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

    [[ -n "$root" ]] || {
        usage >&2
        exit 2
    }
    root_name_ok "$root" || die "invalid root command name: $root"
}

resolve_cache() {
    cache_dir="$(fragment_cache_dir "$root" "$cache_override")"
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
}

# --- traversal --------------------------------------------------------------

# Depth-first walk over the fragments the current tree declares. Pass 1
# validates every reachable fragment before any write, so an invalid parent
# cannot leave a half-finalized cache, and records the derived fields the write
# pass needs (description, aliases, source.kind) so nothing is read twice.
walk_declared() {
    local queue=("$root_fragment")
    local keys=("$root")
    local index=0 parent parent_key child records subs
    local record_kind f1 f2 f3 f4 name status aliases description

    while [[ "$index" -lt "${#queue[@]}" ]]; do
        parent="${queue[$index]}"
        parent_key="${keys[$index]}"
        index=$((index + 1))

        declared["$parent"]=1
        if ! records="$(read_fragment_records "$parent_key" "$parent" 2>/dev/null)"; then
            die "invalid fragment: $parent"
        fi

        # Derived fields of this fragment, read from the same record stream.
        while IFS=$'\x1f' read -r record_kind f1 f2 f3 f4; do
            case "$record_kind" in
                D) frag_desc["$parent"]="$f1" ;;
                A) frag_aliases["$parent"]="$f1" ;;
                X) frag_kind["$parent"]="$f1" ;;
            esac
        done <<<"$records"

        subs=""
        while IFS=$'\x1f' read -r record_kind name status aliases description; do
            [[ "$record_kind" == S ]] || continue
            [[ -n "$name" ]] || continue
            child="$(fragment_child_file "$cache_dir" "$parent" "$name")"
            declared["$child"]=1
            subs+="$name"$'\x1f'"$status"$'\x1f'"$aliases"$'\x1f'"$description"$'\n'
            if [[ -f "$child" ]]; then
                queue+=("$child")
                keys+=("$parent_key|$name")
            fi
        done < <(records_declared_subcommands "$records")
        parent_subs["$parent"]="$subs"
    done
}

# --- write pass -------------------------------------------------------------

# Sync derived metadata and statuses. The parent entry already produced the
# desired description/aliases, and walk_declared holds the child's current
# values, so a child is only rewritten when it differs.
apply_updates() {
    local queue=("$root_fragment")
    local keys=("$root")
    local index=0 parent parent_key child name status aliases entry_description
    local child_description child_aliases child_kind updated updated_parent updates aliases_json
    local -a alias_parts

    while [[ "$index" -lt "${#queue[@]}" ]]; do
        parent="${queue[$index]}"
        parent_key="${keys[$index]}"
        index=$((index + 1))

        updates=""
        while IFS=$'\x1f' read -r name status aliases entry_description; do
            [[ -n "$name" ]] || continue
            child="$(fragment_child_file "$cache_dir" "$parent" "$name")"
            if [[ -f "$child" ]]; then
                queue+=("$child")
                keys+=("$parent_key|$name")
                child_description="${frag_desc[$child]:-}"
                child_aliases="${frag_aliases[$child]:-}"
                child_kind="${frag_kind[$child]:-}"
                if [[ "$entry_description" != "$child_description" || "$aliases" != "$child_aliases" ]]; then
                    aliases_json="[]"
                    if [[ -n "$aliases" ]]; then
                        IFS=',' read -r -a alias_parts <<<"$aliases"
                        aliases_json="$(json_string_array "${alias_parts[@]}")"
                    fi
                    updated="$(jq --arg description "$entry_description" --argjson aliases "$aliases_json" \
                        '.description = $description | .aliases = $aliases' "$(native_path "$child")")"
                    write_file_atomic "$child" "$updated"
                    synced=$((synced + 1))
                fi
                if [[ "$child_kind" == "none" ]]; then
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
}

# --- prune ------------------------------------------------------------------

# Remove fragments that the current tree no longer declares, then any
# directories left empty. Old .txt files are intentionally untouched.
prune() {
    local fragment
    while IFS= read -r fragment; do
        if [[ -z "${declared["$fragment"]:-}" ]]; then
            rm -f -- "$fragment"
            removed=$((removed + 1))
        fi
    done < <(find "$cache_dir" -type f -name '*.json' | LC_ALL=C sort)

    find "$cache_dir" -mindepth 1 -depth -type d -empty -delete
}

main() {
    parse_args "$@"
    resolve_cache
    walk_declared
    apply_updates
    prune
    printf 'synced=%d removed=%d\n' "$synced" "$removed"
}

main "$@"
