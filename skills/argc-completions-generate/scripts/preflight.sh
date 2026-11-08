#!/usr/bin/env bash
# Preflight checks and path discovery for the argc-completions-generate skill.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"

usage() {
    cat <<'USAGE'
Usage: preflight.sh [<root>] [options]

Options:
  --output <file>       Override the completion output path
  --completion <file>   Override the existing completion script
  -h, --help            Show this help

Without <root>, only the two roots are printed (mode=paths). Run with
<root> for the full workflow report.
USAGE
}

# completion_has_external_subcommands <file>: the script declares the root-level
# `@meta external-subcommands` before its first `# {{` command block. An
# unmarked script has no command blocks, so every @meta line is root-level.
completion_has_external_subcommands() {
    local file="$1"
    gawk '
        /^# \{\{/ { exit }
        /^# @meta external-subcommands([[:space:]]|$)/ { found = 1; exit }
        END { exit (found ? 0 : 1) }
    ' "$file"
}

# resolve_invoke <root>: the words that actually run the root command. A
# hyphenated binary is an external subcommand when its host's completion
# script declares the root-level external-subcommands meta:
# `cargo-audit` -> `cargo audit`, `cargo-llvm-cov` -> `cargo llvm-cov`.
# Artifact paths keep <root>; only help and command execution use this form.
resolve_invoke() {
    local root="$1" host host_completion
    if [[ "$root" != *-* ]]; then
        return 1
    fi
    host="${root%%-*}"
    if [[ -z "$host" || "$host" == "$root" ]]; then
        return 1
    fi
    host_completion="$(resolve_completion_file "$host")" || return 1
    completion_has_external_subcommands "$host_completion" || return 1
    printf '%s %s\n' "$host" "${root#"$host"-}"
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
            cli_require_value "$1" "$#"
            output_override="$2"
            shift 2
            ;;
        --completion)
            cli_require_value "$1" "$#"
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

skill_root="$(dirname "$SCRIPT_DIR")"

# No root means path discovery only: keep this mode free of tool and command
# checks so a bare call (for example to learn the roots) never fails.
if [[ -z "$root" ]]; then
    [[ -z "$output_override" && -z "$completion_override" ]] || {
        usage >&2
        die "<root> is required with --output/--completion"
    }
    printf 'skill_root=%s\n' "$skill_root"
    printf 'repo_root=%s\n' "$REPO_ROOT"
    printf 'mode=paths\n'
    exit 0
fi

root_name_ok "$root" || die "invalid root command name: $root"

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

cache_dir="$(fragment_cache_dir "$root")"
root_fragment="$cache_dir/_root.json"

cache_exists=0
if [[ -d "$cache_dir" ]]; then
    cache_exists=1
fi

root_fragment_exists=0
if [[ -f "$root_fragment" ]]; then
    root_fragment_exists=1
fi

cache_version=""
if [[ "$root_fragment_exists" -eq 1 ]]; then
    cache_version="$(jq -r '.schemaVersion // empty' "$(native_path "$root_fragment")" 2>/dev/null || true)"
fi

blocks="missing"
prompt_region=0
if [[ -f "$completion_file" ]]; then
    blocks="unmarked"
    block_facts_load "$completion_file"
    if [[ "${BLOCK_OPENS[SPEC]:-0}" -gt 0 ]]; then
        blocks="new"
    fi
    if [[ "${BLOCK_OPENS[HINTS]:-0}" -gt 0 ]]; then
        prompt_region=1
    fi
fi

printf 'skill_root=%s\n' "$skill_root"
printf 'repo_root=%s\n' "$REPO_ROOT"
invoke="$(resolve_invoke "$root")" || invoke=""
if [[ -n "$invoke" ]]; then
    invoke_source="external-subcommands"
else
    invoke="$root"
    invoke_source="root"
fi

# A non-empty bridge means the command already has a bash completion generated
# by a known framework; the skill may copy bridges/<bridge>.sh instead of
# generating fragments. detect-bridge.sh exits 1 when nothing matches.
bridge="$(bash "$SCRIPT_DIR/detect-bridge.sh" "$root" 2>/dev/null || true)"

# completion_is_bridge=1 means the resolved completion is already a copy of a
# bridge template, so the bridge shortcut can refresh it without asking.
completion_is_bridge=0
if [[ -n "$completion_file" ]] && [[ -n "$(completion_bridge_name "$completion_file")" ]]; then
    completion_is_bridge=1
fi

printf 'root=%s\n' "$root"
printf 'command=%s\n' "$(command -v "$root")"
printf 'invoke=%s\n' "$invoke"
printf 'invoke_source=%s\n' "$invoke_source"
printf 'bridge=%s\n' "$bridge"
printf 'completion_is_bridge=%s\n' "$completion_is_bridge"
printf 'os=%s\n' "$(detect_os)"
printf 'existing=%s\n' "$existing"
printf 'completion_file=%s\n' "$completion_file"
printf 'other_completion_file=%s\n' "$other_completion_file"
printf 'output_file=%s\n' "$output_file"
printf 'cache_dir=%s\n' "$cache_dir"
printf 'root_fragment=%s\n' "$root_fragment"
printf 'cache_exists=%s\n' "$cache_exists"
printf 'root_fragment_exists=%s\n' "$root_fragment_exists"
printf 'cache_version=%s\n' "$cache_version"
printf 'blocks=%s\n' "$blocks"
printf 'prompt_region=%s\n' "$prompt_region"
