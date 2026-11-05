#!/usr/bin/env bash
# Assertions over files and documents.
#
# Each helper takes a label first so a failure names the contract it broke.
# Needle tests are builtins: a quoted needle keeps *, [, | and \ literal inside
# [[ == ]], so the semantics match `grep -F`.

# assert_contains <label> <file> <needle>
assert_contains() {
    local label="$1" file="$2" needle="$3" haystack
    file_text haystack "$file"
    if [[ "$haystack" == *"$needle"* ]]; then pass "$label"; else fail "$label (missing: $needle)"; fi
}

# assert_not_contains <label> <file> <needle>
assert_not_contains() {
    local label="$1" file="$2" needle="$3" haystack
    file_text haystack "$file"
    if [[ "$haystack" == *"$needle"* ]]; then fail "$label (unexpected: $needle)"; else pass "$label"; fi
}

# assert_line <label> <file> <line-number> <exact text>
assert_line() {
    local label="$1" file="$2" want_line="$3" want="$4"
    local -a lines=()
    mapfile -t lines <"$file" || true
    if [[ "${lines[want_line - 1]-}" == "$want" ]]; then
        pass "$label"
    else
        fail "$label (line $want_line: '${lines[want_line - 1]-}', want '$want')"
    fi
}

# assert_has_line <label> <file> <exact text>: the file must contain this exact
# line (what `grep -qx` asserted before).
assert_has_line() {
    local label="$1" file="$2" want="$3" line found=0
    local -a lines=()
    mapfile -t lines <"$file" || true
    for line in "${lines[@]}"; do
        if [[ "$line" == "$want" ]]; then
            found=1
            break
        fi
    done
    if [[ "$found" == 1 ]]; then pass "$label"; else fail "$label (no line: $want)"; fi
}

# assert_lacks_line <label> <file> <exact text>: no line equals this text.
assert_lacks_line() {
    local label="$1" file="$2" unwanted="$3" line
    local -a lines=()
    mapfile -t lines <"$file" || true
    for line in "${lines[@]}"; do
        if [[ "$line" == "$unwanted" ]]; then
            fail "$label (unexpected line: $unwanted)"
            return 0
        fi
    done
    pass "$label"
}

# assert_matches <label> <value> <extended-regex>
assert_matches() {
    local label="$1" value="$2" pattern="$3"
    if [[ "$value" =~ $pattern ]]; then
        pass "$label"
    else
        fail "$label (got '$value', want /$pattern/)"
    fi
}

# assert_same <label> <file-a> <file-b>: byte-identical files.
assert_same() {
    check "$1" cmp -s "$2" "$3"
}

# assert_jq <label> <filter> <json-file> [jq-options...]: the filter must select
# a true value. The file goes through native_path so a Windows jq can open it.
assert_jq() {
    local label="$1" filter="$2" file="$3" path
    shift 3
    native_path_to path "$file"
    if [[ $# -gt 0 ]]; then
        check "$label" jq "$@" "$filter" "$path"
    else
        check "$label" jq -e "$filter" "$path"
    fi
}

# tab_split <line>: fill the global TAB_COLUMNS with the tab-separated fields,
# empty ones included. `read -a` cannot do this: a tab is IFS whitespace, so it
# collapses runs and drops empty fields.
TAB_COLUMNS=()
tab_split() {
    local rest="$1"
    TAB_COLUMNS=()
    while :; do
        TAB_COLUMNS+=("${rest%%$'\t'*}")
        [[ "$rest" == *$'\t'* ]] || break
        rest="${rest#*$'\t'}"
    done
}

# assert_tsv <label> <file> <column=value...>: some line must match every
# column, 1-based, exactly. Replaces the one-off gawk row probes.
assert_tsv() {
    local label="$1" file="$2"
    shift 2
    local -a specs=("$@") lines=()
    local line spec ok
    mapfile -t lines <"$file" || true
    for line in "${lines[@]}"; do
        tab_split "$line"
        ok=1
        for spec in "${specs[@]}"; do
            if [[ "${TAB_COLUMNS[${spec%%=*}-1]-}" != "${spec#*=}" ]]; then
                ok=0
                break
            fi
        done
        if [[ "$ok" == 1 ]]; then
            pass "$label"
            return 0
        fi
    done
    fail "$label (no row matching: $*)"
}

# check_matches <label> <actual-file>: the expected text is stdin; a unified
# diff against <actual-file> is the assertion.
check_matches() {
    local label="$1" actual="$2" expected
    local -a lines=()
    new_log_var expected
    expected="$expected.expected"
    mapfile -t lines || true
    if [[ "${#lines[@]}" -eq 0 ]]; then
        : >"$expected"
    else
        printf '%s\n' "${lines[@]}" >"$expected"
    fi
    check "$label" diff -u "$expected" "$actual"
}

# check_block <label> <script> <BLOCK>: the expected block body is stdin; it is
# extracted from <script> and diffed.
check_block() {
    local label="$1" script="$2" name="$3" actual
    new_log_var actual
    actual="$actual.block"
    block_body "$script" "$name" >"$actual"
    check_matches "$label" "$actual"
}

# block_body <script> <BLOCK>: print the lines between "# >>> BLOCK" and
# "# <<< BLOCK".
block_body() {
    gawk -v first="# >>> $2" -v last="# <<< $2" '
        $0 == first { inside = 1; next }
        $0 == last { inside = 0 }
        inside { print }
    ' "$1"
}

# assert_silent <label> <cmd...>: the command must succeed and print nothing;
# whatever it prints names the offending entries.
assert_silent() {
    local label="$1" output
    shift
    if output="$("$@")" && [[ -z "$output" ]]; then
        pass "$label"
    else
        fail "$label"
        [[ -z "$output" ]] || printf '%s\n' "$output" | sed 's/^/     | /' >&3
    fi
}

# assert_docs_lack <label> <needle> <path...>: no file under the given paths
# contains the fixed string. The first offenders are printed, so a failure names
# the document that drifted.
assert_docs_lack() {
    local label="$1" needle="$2" found
    shift 2
    # grep exits 1 when nothing matches, which is the passing case here, and
    # helper_init enables pipefail; swallow that status explicitly.
    found="$(grep -RF -- "$needle" "$@" 2>/dev/null | head -n 5 || true)"
    if [[ -z "$found" ]]; then
        pass "$label"
    else
        fail "$label (unexpected: $needle)"
        printf '%s\n' "$found" | sed 's/^/     | /' >&3
    fi
}

# doc_contains <document> <needle...>: one check per needle, labelled with the
# document's file name. The document is read once, so a long list of needles
# costs no forks at all.
doc_contains() {
    local doc="$1" text name needle
    shift
    name="${doc##*/}"
    file_text text "$doc"
    for needle in "$@"; do
        if [[ "$text" == *"$needle"* ]]; then
            pass "$name: $needle"
        else
            fail "$name: $needle (missing)"
        fi
    done
}

# doc_lacks <document> <needle...>: the mirror of doc_contains.
doc_lacks() {
    local doc="$1" text name needle
    shift
    name="${doc##*/}"
    file_text text "$doc"
    for needle in "$@"; do
        if [[ "$text" == *"$needle"* ]]; then
            fail "$name: $needle (unexpected)"
        else
            pass "$name: $needle"
        fi
    done
}
