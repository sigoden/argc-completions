#!/usr/bin/env bash
# Normalize one raw help description for a fragment field.
#
# Usage: normalize-description.sh [--choice <value>]... < raw.txt
#
# Reads the raw text from stdin and prints one line. Applies the mechanical
# rules of references/fragment-schema.md (Rules, description bullets):
#   1. flatten CR/LF/TAB runs into one space and trim;
#   2. strip backticks;
#   3. drop machine-local paths ($HOME/..., /home/<user>/..., /Users/<user>/...,
#      C:\Users\<user>\...) with the connector that joins them to the text;
#   4. drop each enumeration group ((...), [...], {...}) and a trailing colon
#      list whose values equal the --choice set (set match only);
#   5. keep the first sentence and drop its terminator. A terminator (. ! ?)
#      ends a sentence when it is followed by a space or the end and is not
#      preceded by whitespace, '.', '-', '/', or an opening bracket; CJK
#      terminators (。！？) always end one. Abbreviations (e.g., i.e., etc.,
#      vs., cf., approx.) and single letters before a period do not.
#
# --choice is repeatable and takes the static choice values in the item's
# order. Empty output is valid: a description that is only a machine path
# becomes an empty string.
#
# The rules mirror validate-fragment.jq; that validator is the final gate.

set -euo pipefail

choices=()
while [[ $# -gt 0 ]]; do
    case "$1" in
    --choice)
        if [[ $# -lt 2 || "$2" == *$'\n'* ]]; then
            echo "normalize-description.sh: --choice needs one single-line value" >&2
            exit 2
        fi
        choices+=("$2")
        shift 2
        ;;
    -h | --help)
        sed -n '2,22p' "$0"
        exit 0
        ;;
    *)
        echo "normalize-description.sh: unknown argument: $1" >&2
        exit 2
        ;;
    esac
done

raw="$(cat)"
NORMALIZE_CHOICES=""
if ((${#choices[@]} > 0)); then
    NORMALIZE_CHOICES="$(printf '%s\n' "${choices[@]}")"
fi
export NORMALIZE_CHOICES

normalize_program="$(
    cat <<'AWK'
function trim(s) {
    sub(/^[ ]+/, "", s)
    sub(/[ ]+$/, "", s)
    return s
}

# Mirror of choice_value in validate-fragment.jq.
function norm_choice(v,   q) {
    v = trim(v)
    if (substr(v, 1, 1) == "=") v = trim(substr(v, 2))
    q = substr(v, 1, 1)
    if (length(v) > 1 && (q == "\"" || q == "'") && substr(v, length(v), 1) == q) {
        v = substr(v, 2, length(v) - 2)
    }
    return v
}

# Sorted, joined key of an array of values; equal keys mean equal sets.
function sorted_key(vals, m,   i, out) {
    asort(vals)
    out = ""
    for (i = 1; i <= m; i++) out = out "\001" vals[i]
    return out
}

# Key of a group or tail: values split on | or , (mirror of choice_values).
function split_key(s,   parts, n, i, vals, m, v) {
    n = split(s, parts, /[|,]/)
    m = 0
    for (i = 1; i <= n; i++) {
        v = norm_choice(parts[i])
        if (length(v) > 0) vals[++m] = v
    }
    return sorted_key(vals, m)
}

function is_connector(w) {
    return w == "or" || w == "and"
}

function is_home_path(t,   home) {
    home = ENVIRON["HOME"]
    if (t ~ /^\$HOME(\/|$)/) return 1
    if (t ~ /^\/home\/[^\/]+\//) return 1
    if (t ~ /^\/Users\/[^\/]+\//) return 1
    if (t ~ /^C:\\Users\\/) return 1
    if (home != "" && index(t, home "/") == 1) return 1
    return 0
}

# Drop machine-local path tokens and the connector they share with the text.
# Rebuilds the text only when a token was dropped, so other spacing is kept.
function strip_home_paths(s,   tok, rem, n, i, t, out, any) {
    n = split(s, tok, " ")
    any = 0
    for (i = 1; i <= n; i++) {
        rem[i] = 0
        t = tok[i]
        sub(/^[("']+/, "", t)
        if (is_home_path(t)) {
            rem[i] = 1
            any = 1
        }
    }
    if (!any) return s
    for (i = 1; i <= n; i++) {
        if (!rem[i]) continue
        if (i > 1 && !rem[i - 1] && is_connector(tok[i - 1])) {
            rem[i - 1] = 1
        } else if (i < n && is_connector(tok[i + 1])) {
            rem[i + 1] = 1
        }
    }
    out = ""
    for (i = 1; i <= n; i++) {
        if (!rem[i]) out = out (out == "" ? "" : " ") tok[i]
    }
    return out
}

# Drop each non-nested (...), [...], {...} group whose values equal the choice set.
function strip_echo_groups(s,   out, i, c, closer, j, inner) {
    if (want_key == "") return s
    out = ""
    i = 1
    while (i <= length(s)) {
        c = substr(s, i, 1)
        closer = c == "(" ? ")" : c == "[" ? "]" : c == "{" ? "}" : ""
        if (closer != "") {
            j = index(substr(s, i + 1), closer)
            if (j > 0) {
                inner = substr(s, i + 1, j - 1)
                if (!(index(inner, "(") || index(inner, "[") || index(inner, "{")) \
                    && split_key(inner) == want_key) {
                    i += j + 1
                    while (substr(s, i, 1) == " ") i++
                    sub(/ +$/, "", out)
                    if (out != "" && i <= length(s)) out = out " "
                    continue
                }
            }
        }
        out = out c
        i++
    }
    return out
}

# A trailing ":list" whose values equal the choice set: keep the lead-in only.
function strip_colon_list(s,   tail) {
    if (want_key == "") return s
    if (!match(s, /:[^:]*$/)) return s
    tail = substr(s, RSTART + 1)
    if (tail !~ /[,|]/) return s
    if (split_key(tail) != want_key) return s
    return trim(substr(s, 1, RSTART - 1))
}

# Cut at the first sentence boundary and drop the terminator. Returns the
# text unchanged when no boundary exists.
function first_sentence(s,   pos, idx, matched, first, prev, before, n, parts, word, tlen, ok) {
    pos = 1
    while (match(substr(s, pos), /(\.|!|\?)( |$)|。|！|？/)) {
        idx = pos + RSTART - 1
        matched = substr(s, idx, RLENGTH)
        first = substr(matched, 1, 1)
        if (first == "." || first == "!" || first == "?") {
            tlen = 1
            prev = idx > 1 ? substr(s, idx - 1, 1) : ""
            ok = prev != "" && prev !~ /[[:space:].\/(\[{-]/
        } else {
            tlen = RLENGTH
            ok = 1
        }
        if (ok) {
            before = substr(s, 1, idx - 1)
            n = split(before, parts, " ")
            word = n > 0 ? parts[n] : ""
            sub(/^[("'\[{]+/, "", word)
            if (first ~ /[.!?]/ && (tolower(word) in abbrev || (length(word) == 1 && word ~ /^[A-Za-z]$/))) {
                ok = 0
            }
        }
        if (ok) return trim(before)
        pos = idx + tlen
    }
    return s
}

{ text = text (NR > 1 ? "\n" : "") $0 }

END {
    abbrev["e.g"] = 1; abbrev["i.e"] = 1; abbrev["etc"] = 1
    abbrev["vs"] = 1; abbrev["cf"] = 1; abbrev["approx"] = 1

    want_key = ""
    if (ENVIRON["NORMALIZE_CHOICES"] != "") {
        n = split(ENVIRON["NORMALIZE_CHOICES"], cs, "\n")
        m = 0
        for (i = 1; i <= n; i++) if (cs[i] != "") want[++m] = norm_choice(cs[i])
        want_key = sorted_key(want, m)
    }

    s = text
    gsub(/[ \r\n\t]*[\r\n\t][ \r\n\t]*/, " ", s)
    gsub(/`/, "", s)
    s = trim(s)
    s = strip_home_paths(s)
    s = strip_echo_groups(s)
    s = first_sentence(s)
    s = strip_colon_list(s)
    print trim(s)
}
AWK
)"

gawk "$normalize_program" <<<"$raw"
