#!/usr/bin/env bash
# Canonicalize a completion script's CHOICES block.
#
# The block may contain only top-level _choice_* and _helper_* functions.
# Other function names are renamed to _helper_<name>; definitions are sorted
# by their final name in the C locale, and doc comments move with their
# function.

set -euo pipefail

SCRIPT_DIR="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
# shellcheck source=lib.sh
source "$SCRIPT_DIR/lib.sh"
VERBOSE="${VERBOSE:-0}"
export LC_ALL=C

usage() {
    cat <<'USAGE'
Usage: format-choices.sh [options] <completion.sh>...

Options:
  --check   Do not write files; exit 1 when a file would change
  -v, --verbose
  -h, --help
USAGE
}

check_only=0
files=()

while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help) usage; exit 0 ;;
        --check) check_only=1; shift ;;
        -v|--verbose) VERBOSE=1; shift ;;
        -*) log_error "unknown option: $1"; exit 2 ;;
        *)
            files+=("$1")
            shift
            ;;
    esac
done

if [[ ${#files[@]} -eq 0 ]]; then
    usage >&2
    exit 2
fi

require_cmd gawk
require_cmd sort

tmp_root="$(mktemp -d)"
trap 'rm -rf "$tmp_root"' EXIT

marker_line() {
    local file="$1" marker="$2"
    gawk -v m="$marker" '$0 == m { print NR; exit }' "$file"
}

marker_count() {
    local file="$1" marker="$2"
    gawk -v m="$marker" '$0 == m { n++ } END { print n + 0 }' "$file"
}

err() {
    local file="$1"
    shift
    printf 'format-choices: %s: %s\n' "$file" "$*" >&2
}

trim_blank_edges() {
    local input="$1" output="$2"
    gawk '
    { line[NR] = $0 }
    END {
        first = 1
        last = NR
        while (first <= last && line[first] ~ /^[ \t]*$/) first++
        while (last >= first && line[last] ~ /^[ \t]*$/) last--
        for (i = first; i <= last; i++) print line[i]
    }
    ' "$input" >"$output"
}

# Split the block into a preamble, one file per function (including its doc
# comments), and a names.tsv list.
parse_block() {
    local block="$1" dir="$2" file="$3"
    gawk -v dir="$dir" -v file="$file" '
    function fail(msg) {
        printf "format-choices: %s: %s\n", file, msg > "/dev/stderr"
        failed = 1
        exit 1
    }
    function is_header(line,    m) {
        if (match(line, /^([A-Za-z_][A-Za-z0-9_]*)[[:space:]]*\([[:space:]]*\)[[:space:]]*\{[[:space:]]*$/, m)) {
            header_name = m[1]
            return 1
        }
        if (match(line, /^function[[:space:]]+([A-Za-z_][A-Za-z0-9_]*)([[:space:]]*\([[:space:]]*\))?[[:space:]]*\{[[:space:]]*$/, m)) {
            header_name = m[1]
            return 1
        }
        return 0
    }
    function is_one_line_header(line,    m) {
        if (match(line, /^([A-Za-z_][A-Za-z0-9_]*)[[:space:]]*\([[:space:]]*\)[[:space:]]*\{.*\}[[:space:]]*$/, m)) {
            header_name = m[1]
            return 1
        }
        if (match(line, /^function[[:space:]]+([A-Za-z_][A-Za-z0-9_]*)([[:space:]]*\([[:space:]]*\))?[[:space:]]*\{.*\}[[:space:]]*$/, m)) {
            header_name = m[1]
            return 1
        }
        return 0
    }
    function starts_heredoc(line,    p, rest, q) {
        rest = line
        while ((p = index(rest, "<<")) > 0) {
            if (substr(rest, p, 3) == "<<<") {
                rest = substr(rest, p + 3)
                continue
            }
            rest = substr(rest, p + 2)
            heredoc_strip = 0
            if (substr(rest, 1, 1) == "-") {
                heredoc_strip = 1
                rest = substr(rest, 2)
            }
            sub(/^[ \t]+/, "", rest)
            if (substr(rest, 1, 1) == "\\") rest = substr(rest, 2)
            q = substr(rest, 1, 1)
            if (q == "\047" || q == "\"") {
                rest = substr(rest, 2)
                p = index(rest, q)
                if (p == 0) fail("unterminated heredoc quote: " line)
                heredoc_delim = substr(rest, 1, p - 1)
            } else {
                match(rest, /^[^ \t]+/)
                heredoc_delim = substr(rest, 1, RLENGTH)
            }
            if (heredoc_delim == "") fail("empty heredoc delimiter: " line)
            in_heredoc = 1
            return 1
        }
        return 0
    }
    BEGIN {
        seen_func = 0
        in_func = 0
        in_heredoc = 0
        pending_count = 0
        pre_count = 0
        idx = 0
        preamble = dir "/preamble.txt"
        names = dir "/names.tsv"
        printf "" > preamble
        printf "" > names
    }
    {
        line = $0
        if (in_func) {
            if (in_heredoc) {
                print line > body
                cmp_line = line
                if (heredoc_strip) sub(/^\t+/, "", cmp_line)
                if (cmp_line == heredoc_delim) in_heredoc = 0
                next
            }
            if (line ~ /^\}[ \t]*$/) {
                print line > body
                close(body)
                body = ""
                in_func = 0
                next
            }
            if (is_header(line) || is_one_line_header(line)) fail("nested function definition: " line)
            print line > body
            if (line !~ /^[ \t]*#/) starts_heredoc(line)
            next
        }
        one_line = 0
        matched = 0
        if (is_header(line)) {
            matched = 1
        } else if (is_one_line_header(line)) {
            matched = 1
            one_line = 1
        }
        if (matched) {
            if (!seen_func) {
                # Comments directly above the first function are its doc
                # comments; a blank line keeps them in the preamble.
                doc_start = pre_count + 1
                i = pre_count
                while (i >= 1 && pre[i] ~ /^#/) {
                    doc_start = i
                    i--
                }
                for (i = 1; i < doc_start; i++) print pre[i] > preamble
                for (i = doc_start; i <= pre_count; i++) pending[++pending_count] = pre[i]
                pre_count = 0
                seen_func = 1
            }
            idx++
            name = header_name
            if (name in seen) fail("duplicate function definition: " name)
            seen[name] = 1
            body = sprintf("%s/body.%d.txt", dir, idx)
            printf "" > body
            for (i = 1; i <= pending_count; i++) print pending[i] > body
            pending_count = 0
            print line > body
            printf "%s\t%d\n", name, idx >> names
            in_func = one_line ? 0 : 1
            if (one_line) close(body)
            next
        }
        if (!seen_func) {
            if (line ~ /^[ \t]+[A-Za-z_][A-Za-z0-9_]*[[:space:]]*\(/ || line ~ /^[ \t]+function[[:space:]]+/) {
                fail("function definitions must start at column 0: " line)
            }
            if (line ~ /^[A-Za-z_][A-Za-z0-9_]*[[:space:]]*\(/ || line ~ /^function[[:space:]]+/) {
                fail("unsupported function header: " line)
            }
            pre[++pre_count] = line
            next
        }
        if (line ~ /^[ \t]*$/) {
            if (pending_count > 0) fail("comment is separated from its function by a blank line")
            next
        }
        if (line ~ /^#/) {
            pending[++pending_count] = line
            next
        }
        fail("unexpected content outside a function: " line)
    }
    END {
        if (failed) exit 1
        if (in_func) fail("unterminated function: " name)
        if (pending_count > 0) fail("trailing comment without a function")
        if (!seen_func) {
            for (i = 1; i <= pre_count; i++) print pre[i] > preamble
        }
        close(preamble)
        close(names)
    }
    ' "$block"
}

# Build old<TAB>new. Abort on collisions or on copied shared helpers.
build_rename_map() {
    local names="$1" map="$2" file="$3"
    local -A final_owner=()
    local old new stripped existing
    : >"$map"
    while IFS=$'\t' read -r old _; do
        [[ -n "$old" ]] || continue
        if [[ "$old" == _static_* ]]; then
            err "$file" "$old uses the reserved _static_ prefix; STATIC is generated by assemble.sh, rename the function"
            return 1
        fi
        if [[ "$old" == _choice_* || "$old" == _helper_* ]]; then
            new="$old"
        elif [[ "$old" == _argc_util_* ]]; then
            err "$file" "$old is a copied _argc_util_* helper; source the shared library instead of defining it"
            return 1
        else
            stripped="$old"
            while [[ "$stripped" == _* ]]; do
                stripped="${stripped#_}"
            done
            if [[ -z "$stripped" ]]; then
                err "$file" "cannot derive a _helper_ name from '$old'"
                return 1
            fi
            new="_helper_$stripped"
        fi
        existing="${final_owner[$new]:-}"
        if [[ -n "$existing" && "$existing" != "$old" ]]; then
            err "$file" "'$old' and '$existing' both map to '$new'"
            return 1
        fi
        final_owner["$new"]="$old"
        printf '%s\t%s\n' "$old" "$new" >>"$map"
    done <"$names"
}

check_outside_references() {
    local gen_block="$1" map="$2" file="$3"
    [[ -s "$gen_block" ]] || return 0
    gawk -v mapfile="$map" -v file="$file" '
    BEGIN {
        while ((getline line < mapfile) > 0) {
            split(line, parts, "\t")
            if (parts[1] != parts[2]) old[++count] = parts[1]
        }
    }
    {
        for (i = 1; i <= count; i++) {
            if (index($0, "`" old[i] "`")) {
                printf "format-choices: %s: %s is referenced outside CHOICES\n", file, old[i] > "/dev/stderr"
                failed = 1
            }
        }
    }
    END { exit failed ? 1 : 0 }
    ' "$gen_block"
}

# Abort when a to-be-renamed function is also used as a shell variable.
check_variable_collisions() {
    local target="$1" map="$2" file="$3"
    gawk -v mapfile="$map" -v file="$file" '
    function fail(msg) {
        printf "format-choices: %s: %s\n", file, msg > "/dev/stderr"
        failed = 1
        exit 1
    }
    function starts_heredoc(line,    p, rest, q) {
        rest = line
        while ((p = index(rest, "<<")) > 0) {
            if (substr(rest, p, 3) == "<<<") {
                rest = substr(rest, p + 3)
                continue
            }
            rest = substr(rest, p + 2)
            heredoc_strip = 0
            if (substr(rest, 1, 1) == "-") {
                heredoc_strip = 1
                rest = substr(rest, 2)
            }
            sub(/^[ \t]+/, "", rest)
            if (substr(rest, 1, 1) == "\\") rest = substr(rest, 2)
            q = substr(rest, 1, 1)
            if (q == "\047" || q == "\"") {
                rest = substr(rest, 2)
                p = index(rest, q)
                if (p == 0) fail("unterminated heredoc quote: " line)
                heredoc_delim = substr(rest, 1, p - 1)
            } else {
                match(rest, /^[^ \t]+/)
                heredoc_delim = substr(rest, 1, RLENGTH)
            }
            if (heredoc_delim == "") fail("empty heredoc delimiter: " line)
            in_heredoc = 1
            return 1
        }
        return 0
    }
    function used_as_variable(line, name) {
        if (index(line, "$" name) > 0) return 1
        if (index(line, "${" name) > 0) return 1
        if (index(line, "${!" name) > 0) return 1
        if (match(line, "(^|[^A-Za-z0-9_])" name "[[:space:]]*([+:]?=)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])(local|declare|typeset|readonly|export|unset)[[:space:]]+(-[A-Za-z]+[[:space:]]+)*" name "([^A-Za-z0-9_]|$)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])(for|select|case)[[:space:]]+" name "([[:space:]]|;|$)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])let[[:space:]]+" name "([^A-Za-z0-9_]|$)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])(read|mapfile|readarray)[[:space:]]+") && match(line, "(^|[^A-Za-z0-9_])" name "([^A-Za-z0-9_]|$)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])printf[[:space:]]+-v[[:space:]]+" name "([^A-Za-z0-9_]|$)")) return 1
        if (match(line, "\\(\\([[:space:]]*" name "[[:space:]]*([+*/%-]?=|\\+\\+|--)")) return 1
        if (match(line, "(^|[^A-Za-z0-9_])" name "\\[")) return 1
        return 0
    }
    BEGIN {
        while ((getline line < mapfile) > 0) {
            split(line, parts, "\t")
            if (parts[1] != parts[2]) old[++count] = parts[1]
        }
        in_heredoc = 0
    }
    {
        line = $0
        if (in_heredoc) {
            cmp = line
            if (heredoc_strip) sub(/^\t+/, "", cmp)
            if (cmp == heredoc_delim) in_heredoc = 0
            next
        }
        if (line ~ /^[ \t]*#/) next
        for (i = 1; i <= count; i++) {
            if (used_as_variable(line, old[i])) {
                fail("cannot rename \047" old[i] "\047 at line " FNR ": the name is also used as a shell variable: " $0)
            }
        }
        if (line !~ /^[ \t]*#/) starts_heredoc(line)
    }
    END { if (failed) exit 1 }
    ' "$target"
}

replace_words() {
    local input="$1" output="$2" map="$3"
    gawk -v mapfile="$map" '
    function replace_word(s, old, new,    out, pos, before, after, prev, nxt) {
        out = ""
        while ((pos = index(s, old)) > 0) {
            before = substr(s, 1, pos - 1)
            after = substr(s, pos + length(old))
            prev = pos > 1 ? substr(s, pos - 1, 1) : ""
            nxt = substr(after, 1, 1)
            if (prev !~ /[A-Za-z0-9_]/ && nxt !~ /[A-Za-z0-9_]/) {
                out = out before new
            } else {
                out = out before old
            }
            s = after
        }
        return out s
    }
    function starts_heredoc(line,    p, rest, q) {
        rest = line
        while ((p = index(rest, "<<")) > 0) {
            if (substr(rest, p, 3) == "<<<") {
                rest = substr(rest, p + 3)
                continue
            }
            rest = substr(rest, p + 2)
            heredoc_strip = 0
            if (substr(rest, 1, 1) == "-") {
                heredoc_strip = 1
                rest = substr(rest, 2)
            }
            sub(/^[ \t]+/, "", rest)
            if (substr(rest, 1, 1) == "\\") rest = substr(rest, 2)
            q = substr(rest, 1, 1)
            if (q == "\047" || q == "\"") {
                rest = substr(rest, 2)
                p = index(rest, q)
                if (p == 0) return 1
                heredoc_delim = substr(rest, 1, p - 1)
            } else {
                match(rest, /^[^ \t]+/)
                heredoc_delim = substr(rest, 1, RLENGTH)
            }
            if (heredoc_delim == "") return 1
            in_heredoc = 1
            return 1
        }
        return 0
    }
    BEGIN {
        while ((getline line < mapfile) > 0) {
            split(line, parts, "\t")
            if (parts[1] != parts[2]) {
                old[++count] = parts[1]
                new[parts[1]] = parts[2]
            }
        }
        in_heredoc = 0
    }
    {
        line = $0
        if (in_heredoc) {
            print line
            cmp = line
            if (heredoc_strip) sub(/^\t+/, "", cmp)
            if (cmp == heredoc_delim) in_heredoc = 0
            next
        }
        for (i = 1; i <= count; i++) line = replace_word(line, old[i], new[old[i]])
        print line
        if (line !~ /^[ \t]*#/) starts_heredoc(line)
    }
    ' "$input" >"$output"
}

format_one() {
    local file="$1"
    local work="$tmp_root/work"
    local start_marker='# >>> CHOICES'
    local end_marker='# <<< CHOICES'
    local start end starts ends
    local gen_marker_start='# >>> SPEC'
    local gen_marker_end='# <<< SPEC'
    local gen_start gen_end

    [[ -f "$file" ]] || { err "$file" "file not found"; return 1; }

    starts="$(marker_count "$file" "$start_marker")"
    ends="$(marker_count "$file" "$end_marker")"
    if [[ "$starts" -eq 0 && "$ends" -eq 0 ]]; then
        err "$file" "CHOICES block not found (run assemble.sh first for legacy scripts)"
        return 1
    fi
    if [[ "$starts" -ne 1 || "$ends" -ne 1 ]]; then
        err "$file" "CHOICES block markers must appear exactly once"
        return 1
    fi
    start="$(marker_line "$file" "$start_marker")"
    end="$(marker_line "$file" "$end_marker")"
    if [[ -z "$start" || -z "$end" || "$start" -ge "$end" ]]; then
        err "$file" "invalid CHOICES block layout"
        return 1
    fi

    rm -rf "$work"
    mkdir -p "$work"

    gawk -v s="$start" -v e="$end" 'NR > s && NR < e { print }' "$file" >"$work/block.txt"

    if ! parse_block "$work/block.txt" "$work" "$file"; then
        return 1
    fi

    if ! build_rename_map "$work/names.tsv" "$work/map.tsv" "$file"; then
        return 1
    fi

    gen_start="$(marker_line "$file" "$gen_marker_start")"
    gen_end="$(marker_line "$file" "$gen_marker_end")"
    if [[ -n "$gen_start" && -n "$gen_end" && "$gen_start" -lt "$gen_end" ]]; then
        gawk -v s="$gen_start" -v e="$gen_end" 'NR > s && NR < e { print }' "$file" >"$work/SPEC.txt"
    else
        : >"$work/SPEC.txt"
    fi

    if ! check_outside_references "$work/SPEC.txt" "$work/map.tsv" "$file"; then
        return 1
    fi

    if ! check_variable_collisions "$work/preamble.txt" "$work/map.tsv" "$file"; then
        return 1
    fi

    local idx body
    while IFS=$'\t' read -r _ idx; do
        [[ -n "$idx" ]] || continue
        body="$work/body.$idx.txt"
        if ! check_variable_collisions "$body" "$work/map.tsv" "$file"; then
            return 1
        fi
    done <"$work/names.tsv"

    trim_blank_edges "$work/preamble.txt" "$work/preamble.trim"
    if ! replace_words "$work/preamble.trim" "$work/preamble.renamed" "$work/map.tsv"; then
        return 1
    fi

    local old new
    : >"$work/sort.tsv"
    while IFS=$'\t' read -r old new; do
        [[ -n "$old" ]] || continue
        printf '%s\t%s\n' "$new" "$(gawk -v n="$old" '$1 == n { print $2; exit }' "$work/names.tsv")" >>"$work/sort.tsv"
    done <"$work/map.tsv"

    while IFS=$'\t' read -r _ idx; do
        [[ -n "$idx" ]] || continue
        body="$work/body.$idx.txt"
        if ! replace_words "$body" "$work/body.$idx.renamed" "$work/map.tsv"; then
            return 1
        fi
    done <"$work/names.tsv"

    LC_ALL=C sort "$work/sort.tsv" >"$work/sort.sorted"

    local content="$work/content.txt"
    : >"$content"
    if [[ -s "$work/preamble.renamed" ]]; then
        cat "$work/preamble.renamed" >>"$content"
        if [[ -s "$work/sort.sorted" ]]; then
            printf '\n' >>"$content"
        fi
    fi

    local first=1 new_name
    while IFS=$'\t' read -r new_name idx; do
        [[ -n "$new_name" ]] || continue
        if [[ "$new_name" != _choice_* && "$new_name" != _helper_* ]]; then
            err "$file" "internal error: non-canonical function name '$new_name'"
            return 1
        fi
        if [[ "$first" -eq 0 ]]; then
            printf '\n' >>"$content"
        fi
        cat "$work/body.$idx.renamed" >>"$content"
        first=0
    done <"$work/sort.sorted"

    local output="$work/out.sh"
    head -n $((start - 1)) "$file" >"$output"
    printf '%s\n' "$start_marker" >>"$output"
    if [[ -s "$content" ]]; then
        cat "$content" >>"$output"
    fi
    printf '%s\n' "$end_marker" >>"$output"
    tail -n +$((end + 1)) "$file" >>"$output"

    if ! bash -n "$output"; then
        err "$file" "formatted output has a syntax error; file left unchanged"
        return 1
    fi

    if cmp -s "$file" "$output"; then
        log_info "unchanged: $file"
        return 0
    fi

    if [[ "$check_only" -eq 1 ]]; then
        printf 'would format: %s\n' "$file"
        return 3
    fi

    cat "$output" >"$file"
    printf 'formatted: %s\n' "$file"
    return 0
}

errors=0
changed=0
for file in "${files[@]}"; do
    rc=0
    format_one "$file" || rc=$?
    if [[ "$rc" -eq 3 ]]; then
        changed=1
    elif [[ "$rc" -ne 0 ]]; then
        errors=1
    fi
done

if [[ "$errors" -ne 0 ]]; then
    exit 2
fi
if [[ "$changed" -ne 0 ]]; then
    exit 1
fi
exit 0
