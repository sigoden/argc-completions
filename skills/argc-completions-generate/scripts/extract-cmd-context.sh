#!/usr/bin/env bash
# Extract the root DESCRIBE line, META tags, HINTS text, and a context DIFF for
# one command path from an existing argc completion script.
#
# Usage: extract-cmd-context.sh <command path...> [options]
#
# DESCRIBE is root-only: it carries the current root `@describe` line so a
# recompile can keep the description when the new help has no summary. It is
# context, not behavior, so --no-meta omits it from the cache hash body.
#
# The DIFF compares the command block's notation, choice_fn, and terminated
# values with the fragment that produced it. Only changed fields are printed;
# descriptions, names, choices, and structural fields are left to the new help.
#
# If no completion script exists, stdout is empty and the exit status is 0.
# Skip this script when preflight.sh reports existing=0; there is no context.
#
# Stages (see main): parse_args -> resolve_completion -> resolve_baseline
# -> extract_region -> render_describe/render_meta/render_hints
# -> render_script_items -> render_fragment_items -> render_diff -> emit.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
require_cmd gawk "run $REPO_ROOT/install.sh or install gawk"
require_cmd jq "run $REPO_ROOT/install.sh"

usage() {
    cat <<'USAGE'
Usage: extract-cmd-context.sh <command path...> [options]

Options:
  --completion <file>  Completion script to read (default: resolve by root)
  --cache-dir <dir>    Fragment cache directory
  --fragment <file>    Fragment baseline for the DIFF
  --no-meta            Omit the META and DESCRIBE sections (cache hash body)
  -h, --help           Show this help

Examples:
  extract-cmd-context.sh git
  extract-cmd-context.sh git remote
  extract-cmd-context.sh git remote add --completion <REPO_ROOT>/completions/git.sh
  extract-cmd-context.sh git remote add --cache-dir <cache> --no-meta
USAGE
}

# --- state ------------------------------------------------------------------

completion_override=""
cache_override=""
fragment_override=""
no_meta=0
words=()

root=""
path_string=""
cache_dir=""
completion_file=""
fragment_file=""
baseline_exists=0

tmp_dir=""
region_file=""  # command region of the requested path
structural_file=""  # SPEC block body
# Rendered sections; the DIFF compares the last two.
describe_file=""  # root-only current @describe line
meta_file=""
hints_file=""
script_items_file=""
fragment_items_file=""
diff_file=""

# --- inputs -----------------------------------------------------------------

parse_args() {
    while [[ $# -gt 0 ]]; do
        case "$1" in
            -h | --help)
                usage
                exit 0
                ;;
            --completion)
                cli_require_value "$1" "$#"
                completion_override="$2"
                shift 2
                ;;
            --cache-dir)
                cli_require_value "$1" "$#"
                cache_override="$2"
                shift 2
                ;;
            --fragment)
                cli_require_value "$1" "$#"
                fragment_override="$2"
                shift 2
                ;;
            --no-meta)
                no_meta=1
                shift
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

    [[ ${#words[@]} -gt 0 ]] || {
        usage >&2
        exit 2
    }

    root="${words[0]}"
    path_string="${words[*]}"
    path_args_valid "${words[@]}" || die "invalid command path component in: $path_string"
    cache_dir="$(fragment_cache_dir "$root" "$cache_override")"
}

# An explicit --completion must exist; otherwise resolve by root. No completion
# script means no context: exit 0 with empty stdout.
resolve_completion() {
    if [[ -n "$completion_override" ]]; then
        completion_file="$completion_override"
        if [[ ! -f "$completion_file" ]]; then
            exit 0
        fi
    elif completion_file="$(resolve_completion_file "$root")"; then
        :
    else
        exit 0
    fi
}

resolve_baseline() {
    if [[ -n "$fragment_override" ]]; then
        [[ -f "$fragment_override" ]] || die "fragment not found: $fragment_override"
        fragment_file="$fragment_override"
        baseline_exists=1
        return 0
    fi
    fragment_file="$(fragment_file_path "$cache_dir" "${words[@]}")"
    if [[ -f "$fragment_file" ]]; then
        baseline_exists=1
    else
        baseline_exists=0
    fi
}

init_state() {
    tmp_dir="$(mktemp -d)"
    trap 'rm -rf "$tmp_dir"' EXIT
    describe_file="$tmp_dir/describe.txt"
    meta_file="$tmp_dir/meta.txt"
    hints_file="$tmp_dir/hints.txt"
    script_items_file="$tmp_dir/script-items.txt"
    fragment_items_file="$tmp_dir/fragment-items.txt"
    diff_file="$tmp_dir/diff.txt"
    : >"$describe_file"
    : >"$meta_file"
    : >"$hints_file"
    : >"$script_items_file"
    : >"$fragment_items_file"
    : >"$diff_file"
}

# --- command region ---------------------------------------------------------

# The structural region is the SPEC block: it holds every command block and
# @meta line the extraction below reads.
extract_structural_region() {
    local structural_file="$1"
    block_facts_load "$completion_file"
    if [[ "${BLOCK_OPENS[SPEC]:-0}" -eq 0 ]]; then
        die "no block markers in $completion_file: add '# >>> SPEC'/'# <<< SPEC' and '# >>> HINTS'/'# <<< HINTS' (only block-layout scripts are supported)"
    fi
    gawk '
        /^# >>> SPEC$/ { inblock = 1; next }
        /^# <<< SPEC$/ { if (inblock) exit }
        inblock { print }
    ' "$completion_file" >"$structural_file"
}

# Root: everything before the first command block or the first function
# definition belongs to the root command.
extract_root_region() {
    local structural_file="$1" region_file="$2"
    gawk '
        /^# \{+ / { exit }
        /^[A-Za-z0-9_:.@+.-]+\(\)[[:space:]]*\{/ { exit }
        { print }
    ' "$structural_file" >"$region_file"
}

# A subcommand path must name exactly one block; its body is everything up to
# the matching closing marker.
extract_path_region() {
    local structural_file="$1" region_file="$2" path_string="$3" marker_matches
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
    if [[ "$marker_matches" -eq 0 ]]; then
        return 0
    fi
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
}

extract_region() {
    structural_file="$tmp_dir/structural.txt"
    region_file="$tmp_dir/region.txt"
    extract_structural_region "$structural_file"
    : >"$region_file"
    if [[ ${#words[@]} -eq 1 ]]; then
        extract_root_region "$structural_file" "$region_file"
    else
        extract_path_region "$structural_file" "$region_file" "$path_string"
    fi
}

# --- sections ---------------------------------------------------------------

# Root-only current description: the first `@describe` line of the root
# command block. A child has no DESCRIBE section (its description comes from
# the parent entry), and an absent line leaves the section empty.
render_describe() {
    local region_file="$1"
    [[ ${#words[@]} -eq 1 ]] || return 0
    gawk '
        function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
        /^# @describe( |$)/ { print rtrim($0); exit }
    ' "$region_file" >"$describe_file"
}

# Meta tags from the current command block.
render_meta() {
    local region_file="$1"
    gawk '
        function rtrim(s) { sub(/[ \t]+$/, "", s); return s }
        /^# @meta( |$)/ { print rtrim($0) }
    ' "$region_file" >"$meta_file"
}

# HINTS body for this path: the common lines before the first `# %%` marker
# plus the section whose `# %%<path>` marker matches this exact path.
render_hints() {
    local hints_body="$tmp_dir/hints.body"
    gawk '
        /^# >>> HINTS$/ { inblock = 1; next }
        /^# <<< HINTS$/ { if (inblock) exit }
        inblock { print }
    ' "$completion_file" >"$hints_body"
    hints_select "$hints_body" "$path_string" >"$hints_file"
}

# Normalize the script's @option/@arg tags to:
#   kind \x1f display \x1f notation \x1f choice_fn \x1f terminated
render_script_items() {
    local region_file="$1"
    gawk '
    BEGIN { OFS = sprintf("%c", 31) }
    function parse_token(token, kind,    idx, suffix, choice, fn, last, prev) {
        g_base = token
        g_choice = ""
        g_term = 0
        idx = index(token, "[")
        if (idx > 0) {
            suffix = substr(token, 1, idx - 1)
            choice = substr(token, idx)
            if (choice ~ /^\[\??`[A-Za-z_][A-Za-z0-9_]*`\]$/) {
                fn = choice
                sub(/^\[\??`/, "", fn)
                sub(/`\]$/, "", fn)
                if (fn !~ /^_static_/) g_choice = fn
            }
        } else {
            suffix = token
        }
        if (suffix ~ /~$/) {
            g_term = 1
            suffix = substr(suffix, 1, length(suffix) - 1)
        }
        if (length(suffix) >= 2) {
            last = substr(suffix, length(suffix), 1)
            prev = substr(suffix, length(suffix) - 1, 1)
            if (last ~ /^[,:;@|\/]$/ && (prev == "*" || prev == "+")) {
                suffix = substr(suffix, 1, length(suffix) - 2)
            }
        }
        if (suffix ~ /[*+!]$/) suffix = substr(suffix, 1, length(suffix) - 1)
        # Assembly appends "-" to a prefixed option name; the fragment stores
        # the literal prefix without it.
        if (kind == "option" && suffix ~ /-$/) suffix = substr(suffix, 1, length(suffix) - 1)
        g_base = suffix
    }
    /^# @(option|arg) / {
        line = $0
        sub(/^# /, "", line)
        if (match(line, /\t|[ ][ ][ ]*/)) line = substr(line, 1, RSTART - 1)
        n = split(line, tok, /[ \t]+/)
        if (n < 2) next
        if (tok[1] == "@arg") {
            parse_token(tok[2], "arg")
            notation = ""
            for (i = 3; i <= n; i++) notation = notation (notation == "" ? "" : " ") tok[i]
            print "arg", "@arg " g_base, notation, g_choice, g_term
        } else if (tok[1] == "@option") {
            count = 0
            i = 2
            while (i <= n && tok[i] ~ /^[-+]/) {
                name_tokens[count] = tok[i]
                count++
                i++
            }
            if (count == 0) next
            parse_token(name_tokens[count - 1], "option")
            name_tokens[count - 1] = g_base
            names = name_tokens[0]
            for (j = 1; j < count; j++) names = names " " name_tokens[j]
            notation = ""
            for (; i <= n; i++) notation = notation (notation == "" ? "" : " ") tok[i]
            print "option", "@option " names, notation, g_choice, g_term
        }
    }
    ' "$region_file" >"$script_items_file"
}

# The same five columns from the baseline fragment, in the same order.
render_fragment_items() {
    [[ "$baseline_exists" -eq 1 ]] || return 0
    if ! jq -b -r '
        .items[]?
        | select(.kind == "option" or .kind == "arg")
        | [ .kind,
            (if .kind == "arg" then "@arg " + (.name // "")
             else "@option " + ((.names // []) | join(" ")) end),
            (if .kind == "arg" then (.notation // "")
             else ((.notations // []) | join(" ")) end),
            (.choice_fn // ""),
            (if (.terminated // false) then 1 else 0 end)
          ]
        | map(tostring)
        | join("\u001f")
    ' "$(native_path "$fragment_file")" >"$fragment_items_file"; then
        log_warn "cannot read fragment baseline: $fragment_file"
        baseline_exists=0
        : >"$fragment_items_file"
    fi
}

# Diff in the direction fragment -> script: the right side is what compile
# applies to the new fragment.
render_diff() {
    gawk -v baseline="$baseline_exists" '
        BEGIN { FS = sprintf("%c", 31) }
        ARGIND == 1 {
            f_notation[$2] = $3
            f_choice[$2] = $4
            f_term[$2] = $5
            f_seen[$2] = 1
            next
        }
        {
            key = $2
            if (baseline == 1 && !(key in f_seen)) next
            old_notation = (baseline == 1 ? f_notation[key] : "")
            new_notation = $3
            old_choice = (baseline == 1 ? f_choice[key] : "")
            new_choice = $4
            old_term = (baseline == 1 ? f_term[key] : "0")
            new_term = $5
            out_notation = ""
            out_choice = ""
            out_term = ""
            if (baseline == 1) {
                if (old_notation != new_notation) {
                    out_notation = (old_notation == "" ? "(none)" : old_notation) " => " (new_notation == "" ? "(none)" : new_notation)
                }
                if (old_choice != new_choice) {
                    out_choice = (old_choice == "" ? "(none)" : old_choice) " => " (new_choice == "" ? "(none)" : new_choice)
                }
                if (old_term != new_term) {
                    out_term = (old_term == "1" ? "true" : "false") " => " (new_term == "1" ? "true" : "false")
                }
            } else {
                if (new_notation != "") out_notation = "(none) => " new_notation
                if (new_choice != "") out_choice = "(none) => " new_choice
                if (new_term == "1") out_term = "false => true"
            }
            if (out_notation == "" && out_choice == "" && out_term == "") next
            print "# " key
            if (out_notation != "") print "#   notation: " out_notation
            if (out_choice != "") print "#   choice_fn: " out_choice
            if (out_term != "") print "#   terminated: " out_term
        }
    ' "$fragment_items_file" "$script_items_file" >"$diff_file"
}

emit() {
    if [[ "$no_meta" -eq 1 && ! -s "$hints_file" && ! -s "$diff_file" ]]; then
        # An empty context body must hash the same as a missing script, so a
        # first-generation node stays a `hit` once its script has been assembled.
        exit 0
    fi

    if [[ "$no_meta" -eq 0 ]]; then
        # DESCRIBE is root-only; children keep their existing META-first shape.
        if [[ ${#words[@]} -eq 1 ]]; then
            printf '# >>> DESCRIBE\n'
            cat "$describe_file"
            printf '# <<< DESCRIBE\n'
            printf '\n'
        fi
        printf '# >>> META\n'
        cat "$meta_file"
        printf '# <<< META\n'
        printf '\n'
    fi
    printf '# >>> HINTS\n'
    cat "$hints_file"
    printf '# <<< HINTS\n'
    printf '\n'
    printf '# >>> DIFF\n'
    cat "$diff_file"
    printf '# <<< DIFF\n'
}

main() {
    parse_args "$@"
    resolve_completion
    resolve_baseline
    init_state
    extract_region
    render_describe "$region_file"
    render_meta "$region_file"
    render_hints
    render_script_items "$region_file"
    render_fragment_items
    render_diff
    emit
}

main "$@"
