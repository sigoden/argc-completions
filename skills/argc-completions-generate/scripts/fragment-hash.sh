#!/usr/bin/env bash
# Compute the cache hash for one fragment.
#
# Usage:
#   fragment-hash.sh <root> [<sub>...] [options]
#
# Options:
#   --cache-dir <dir>   Fragment cache directory (default:
#                       <REPO_ROOT>/cache/compile/<root>)
#   --completion <file> Completion script that supplies the context body
#   --fragment <file>   Fragment baseline for source.command and the context diff
#   --command <cmd>     Override the fragment source.command
#   --help-file <file>  Reuse an already captured help file instead of running
#                       source.command
#   -h, --help          Show this help
#
# The hash covers the fixed skill tag, SKILL_CACHE_VERSION, the context body
# (HINTS + DIFF, without META), and the canonical full help output. Exit status:
#   0  hash printed on stdout
#   2  missing/invalid source.command, or a bad input path
#   3  help command failed, timed out, or produced no output

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd jq "run $REPO_ROOT/install.sh"
require_sha256

usage() {
    cat <<'USAGE'
Usage: fragment-hash.sh <root> [<sub>...] [options]

Options:
  --cache-dir <dir>    Fragment cache directory
  --completion <file>  Completion script that supplies the context body
  --fragment <file>    Fragment baseline for source.command and the context diff
  --command <cmd>      Override the fragment source.command
  --help-file <file>   Reuse a captured help file instead of running the command
  -h, --help           Show this help

Exit 2 on an invalid source.command, 3 when help is unavailable.
USAGE
}

root=""
subs=()
cache_override=""
completion_file=""
fragment_override=""
command_override=""
help_file=""

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
        --completion)
            [[ $# -ge 2 ]] || die "--completion requires a value"
            completion_file="$2"
            shift 2
            ;;
        --fragment)
            [[ $# -ge 2 ]] || die "--fragment requires a value"
            fragment_override="$2"
            shift 2
            ;;
        --command)
            [[ $# -ge 2 ]] || die "--command requires a value"
            command_override="$2"
            shift 2
            ;;
        --help-file)
            [[ $# -ge 2 ]] || die "--help-file requires a value"
            help_file="$2"
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

for part in "$root" "${subs[@]}"; do
    [[ -n "$part" ]] || { log_error "empty command path component"; exit 2; }
    [[ "$part" =~ ^[A-Za-z0-9_.+@-]+$ ]] || { log_error "invalid command path component: $part"; exit 2; }
    [[ "$part" != "." && "$part" != ".." ]] || { log_error "invalid command path component: $part"; exit 2; }
done

cache_dir="${cache_override:-$REPO_ROOT/cache/compile/$root}"
fragment="$(fragment_file_path "$cache_dir" "$root" "${subs[@]}")"
if [[ -n "$fragment_override" ]]; then
    [[ -f "$fragment_override" ]] || { log_error "fragment not found: $fragment_override"; exit 2; }
    fragment="$fragment_override"
fi

command="$command_override"
if [[ -z "$command" ]]; then
    [[ -f "$fragment" ]] || { log_error "fragment not found: $fragment"; exit 2; }
    kind="$(jq -r '.source.kind // empty' "$fragment" 2>/dev/null)" || {
        log_error "cannot read fragment: $fragment"
        exit 2
    }
    case "$kind" in
        help|man) ;;
        *)
            log_error "fragment source.kind is not help/man: $fragment"
            exit 2
            ;;
    esac
    command="$(jq -r '.source.command // empty' "$fragment")"
    [[ -n "$command" ]] || { log_error "fragment has no source.command: $fragment"; exit 2; }
fi

if ! source_command_ok "$command"; then
    log_error "unsafe source.command: $command"
    exit 2
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

canonical_help="$tmp_dir/help.txt"

if [[ -n "$help_file" ]]; then
    [[ -f "$help_file" ]] || { log_error "help file not found: $help_file"; exit 3; }
    canonicalize_help_file "$help_file" "$canonical_help"
else
    raw_help="$tmp_dir/raw-help.txt"
    if ! capture_source_command "$raw_help" 10 "$command"; then
        exit 3
    fi
    canonicalize_help_file "$raw_help" "$canonical_help"
fi

[[ -s "$canonical_help" ]] || exit 3

context_file="$tmp_dir/context.txt"
context_args=("$root" "${subs[@]}" --cache-dir "$cache_dir")
if [[ -n "$completion_file" ]]; then
    context_args+=(--completion "$completion_file")
fi
if [[ -n "$fragment_override" ]]; then
    context_args+=(--fragment "$fragment_override")
fi
bash "$SCRIPT_DIR/extract-cmd-context.sh" "${context_args[@]}" --no-meta >"$context_file"

{
    printf 'argc-completions-generate\0'
    printf '%s\0' "$SKILL_CACHE_VERSION"
    cat "$context_file"
    printf '\0'
    cat "$canonical_help"
} | sha256_hex
