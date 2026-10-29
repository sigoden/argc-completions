#!/usr/bin/env bash
# Extract choice-fn bindings, META tags, and HINTS text for one command path
# from an existing argc completion script.
#
# Usage: extract-cmd-context.sh <command path...> [--completion <file>]
#
# If no completion script exists, stdout is empty and the exit status is 0.
# Skip this script when preflight.sh reports existing=0; there is no context.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd gawk "run $REPO_ROOT/install.sh or install gawk"

usage() {
    cat <<'USAGE'
Usage: extract-cmd-context.sh <command path...> [--completion <file>]

Examples:
  extract-cmd-context.sh git
  extract-cmd-context.sh git remote
  extract-cmd-context.sh git remote add --completion <REPO_ROOT>/completions/git.sh
USAGE
}

completion_override=""
words=()
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            usage
            exit 0
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
            words+=("$1")
            shift
            ;;
    esac
done

[[ ${#words[@]} -gt 0 ]] || { usage >&2; exit 2; }

root="${words[0]}"
path_string="${words[*]}"
completion_file=""
if [[ -n "$completion_override" ]]; then
    completion_file="$completion_override"
    if [[ ! -f "$completion_file" ]]; then
        exit 0
    fi
elif completion_file="$(resolve_completion_file "$root")"; then
    :
else
    # No completion script means no context.
    exit 0
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

structural_file="$tmp_dir/structural.txt"
if grep -q '^# >>> SPEC$' "$completion_file"; then
    gawk '
        /^# >>> SPEC$/ { inblock = 1; next }
        /^# <<< SPEC$/ { if (inblock) exit }
        inblock { print }
    ' "$completion_file" >"$structural_file"
else
    cp "$completion_file" "$structural_file"
fi

region_file="$tmp_dir/region.txt"
: >"$region_file"

if [[ ${#words[@]} -eq 1 ]]; then
    gawk '
        /^# \{+ / { exit }
        /^[A-Za-z0-9_:.@+.-]+\(\)[[:space:]]*\{/ { exit }
        { print }
    ' "$structural_file" >"$region_file"
else
    marker_matches="$(gawk -v path="$path_string" '
        {
            line = $0
            if (line ~ /^# \{+ /) {
                s = line
                sub(/^# /, "", s)
                gsub(/[{}]/, "", s)
                sub(/^ +/, "", s)
                if (s == path) count++
            }
        }
        END { print count + 0 }
    ' "$structural_file")"
    if [[ "$marker_matches" -gt 1 ]]; then
        die "multiple command blocks found for: $path_string"
    fi
    if [[ "$marker_matches" -eq 1 ]]; then
        gawk -v path="$path_string" '
            function is_start(line) {
                if (line !~ /^# \{+ /) return 0
                s = line
                sub(/^# /, "", s)
                gsub(/[{}]/, "", s)
                sub(/^ +/, "", s)
                return s == path
            }
            function is_end(line) {
                if (line !~ /^# \}+ /) return 0
                s = line
                sub(/^# /, "", s)
                gsub(/[{}]/, "", s)
                sub(/^ +/, "", s)
                return s == path
            }
            {
                if (!inblock && is_start($0)) { inblock = 1; next }
                if (inblock && is_end($0)) { exit }
                if (inblock) print
            }
        ' "$structural_file" >"$region_file"
    else
        # Legacy/hand-written fallback: locate the command function and its tags.
        base_path="${words[*]:1}"
        fn_base="${base_path// /::}"
        fn_candidates=("$fn_base")
        last="${words[${#words[@]}-1]}"
        case "$last" in
            "case"|"coproc"|"do"|"done"|"elif"|"else"|"esac"|"fi"|"for"|"function"|"if"|"in"|"select"|"then"|"time"|"until"|"while"|"command"|"echo"|"cat"|"tail"|"head"|"eval"|"exec"|"exit"|"return"|"set"|"shift"|"source"|"test")
                fn_candidates+=("${fn_base}_")
                ;;
        esac
        fn_line=0
        for fn in "${fn_candidates[@]}"; do
            fn_line="$(gawk -v fn="$fn" '
                {
                    line = $0
                    sub(/[[:space:]]*\{.*/, "", line)
                    if (line == fn "()") { print NR; exit }
                }
            ' "$structural_file")"
            if [[ -n "$fn_line" ]]; then
                break
            fi
        done
        if [[ -n "$fn_line" ]]; then
            gawk -v fnline="$fn_line" '
                { lines[NR] = $0 }
                END {
                    start = 0
                    for (i = fnline - 1; i >= 1; i--) {
                        if (lines[i] ~ /^# @/) { start = i; continue }
                        if (lines[i] ~ /^#/ || lines[i] ~ /^[[:space:]]*$/) {
                            if (start > 0) break
                            continue
                        }
                        break
                    }
                    if (start == 0) exit
                    for (i = start; i < fnline; i++) print lines[i]
                }
            ' "$structural_file" >"$region_file"
        fi
    fi
fi

meta_file="$tmp_dir/meta.txt"
choices_file="$tmp_dir/choices.txt"
: >"$meta_file"
: >"$choices_file"

# Meta tags from the current command block.
gawk '
    function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
    /^# @meta( |$)/ { print rtrim($0) }
' "$region_file" >"$meta_file"

# A tag is a choice-fn tag only when the backtick is in its signature.
gawk '
    function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
    /^# @(option|flag|arg) / {
        rest = $0
        sub(/^# @[a-z]+ /, "", rest)
        idx = match(rest, /\t|[ ][ ]+/)
        sig = idx ? substr(rest, 1, idx - 1) : rest
        if (index(sig, "`") > 0) print rtrim($0)
    }
' "$region_file" >"$choices_file"

prompt_file="$tmp_dir/prompt.txt"
: >"$prompt_file"
gawk -v path="$path_string" '
    /^# >>> HINTS$/ { inblock = 1; next }
    /^# <<< HINTS$/ { if (inblock) exit }
    inblock {
        if ($0 == "# %%" path) { found = 1; next }
        if (found && $0 ~ /^# %%/) exit
        if (found) print
    }
' "$completion_file" >"$prompt_file"

printf '# >>> META\n'
cat "$meta_file"
printf '# <<< META\n'
printf '\n'
printf '# >>> HINTS\n'
cat "$prompt_file"
printf '# <<< HINTS\n'
printf '\n'
printf '# >>> BINDINGS\n'
cat "$choices_file"
printf '# <<< BINDINGS\n'
