#!/usr/bin/env bash
# Preflight checks and path discovery for the argc-completions-generate skill.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"

usage() {
    cat <<'USAGE'
Usage: preflight.sh <root> [options]

Options:
  --output <file>       Override the completion output path
  --completion <file>   Override the existing completion script
  -h, --help            Show this help
USAGE
}

absolute_path() {
    local path="$1"
    case "$path" in
        /*) printf '%s\n' "$path" ;;
        *) printf '%s/%s\n' "$PWD" "$path" ;;
    esac
}

root=""
output_override=""
completion_override=""

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
            ;;
        --output)
            [[ $# -ge 2 ]] || die "--output requires a value"
            output_override="$2"
            shift 2
            ;;
        --completion)
            [[ $# -ge 2 ]] || die "--completion requires a value"
            completion_override="$2"
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

require_pipeline_tools

if ! command -v "$root" >/dev/null 2>&1; then
    die "command not found: $root"
fi

completion_file=""
existing=0
other_completion_file=""
if [[ -n "$completion_override" ]]; then
    completion_file="$(absolute_path "$completion_override")"
    if [[ -f "$completion_file" ]]; then
        existing=1
    else
        die "completion file not found: $completion_file"
    fi
elif completion_file="$(resolve_completion_file "$root")"; then
    existing=1
    if other_completion_file="$(resolve_other_completion_file "$root" "$completion_file")"; then
        :
    else
        other_completion_file=""
    fi
else
    completion_file=""
fi

if [[ -n "$output_override" ]]; then
    output_file="$(absolute_path "$output_override")"
elif [[ -n "$completion_file" ]]; then
    output_file="$completion_file"
else
    output_file="$REPO_ROOT/completions/$root.sh"
fi

cache_dir="$REPO_ROOT/cache/compile/$root"
root_fragment="$cache_dir/_root.json"
root_help="$cache_dir/_root.txt"

root_help_exists=0
if [[ -f "$root_help" ]]; then
    root_help_exists=1
fi

blocks="missing"
prompt_region=0
if [[ -f "$completion_file" ]]; then
    blocks="legacy"
    if grep -q '^# >>> llm-generate$' "$completion_file"; then
        blocks="new"
    fi
    if grep -q '^# >>> llm-prompt$' "$completion_file"; then
        prompt_region=1
    fi
fi

skill_root="$(dirname "$SCRIPT_DIR")"
printf 'skill_root=%s\n' "$skill_root"
printf 'repo_root=%s\n' "$REPO_ROOT"
printf 'root=%s\n' "$root"
printf 'command=%s\n' "$(command -v "$root")"
printf 'os=%s\n' "$(detect_os)"
printf 'existing=%s\n' "$existing"
printf 'completion_file=%s\n' "$completion_file"
printf 'other_completion_file=%s\n' "$other_completion_file"
printf 'output_file=%s\n' "$output_file"
printf 'cache_dir=%s\n' "$cache_dir"
printf 'root_fragment=%s\n' "$root_fragment"
printf 'root_help=%s\n' "$root_help"
printf 'root_help_exists=%s\n' "$root_help_exists"
printf 'blocks=%s\n' "$blocks"
printf 'prompt_region=%s\n' "$prompt_region"
