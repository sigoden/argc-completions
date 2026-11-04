#!/usr/bin/env bash
# scripts/fragment-records-rules.jq: the record stream contract behind
# validate-fragment.jq's records and extract modes.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

MODULE="$SCRIPTS/fragment-records-rules.jq"
VALIDATOR="$SCRIPTS/validate-fragment.jq"
FIXTURE="$FIXTURES/fragments/with-choice"

# run_records <fragment> <key> [mode]: print the record stream.
run_records() {
    jq -L "$(native_path "$SCRIPTS")" -b -r -f "$(native_path "$VALIDATOR")" \
        --arg key "$2" --arg mode "${3:-records}" "$(native_path "$1")"
}

# expect_record <label> <file> <exact line>: compare one record verbatim, so a
# US-separated field never has to survive another round of shell quoting.
expect_record() {
    local label="$1" file="$2" expected="$3"
    if grep -qxF -- "$expected" "$file"; then
        pass "$label"
    else
        fail "$label (missing record)"
    fi
}

# record_field <file> <kind> <field> [match-field] [match-value]
record_field() {
    gawk -F'\037' -v kind="$2" -v want="$3" -v mf="${4:-}" -v mv="${5:-}" '
        $1 == kind && (mf == "" || $mf == mv) { print $want; exit }
    ' "$1"
}

# --- module wiring ---------------------------------------------------------

check "records module parses" jq -L "$(native_path "$SCRIPTS")" -n 'include "fragment-records-rules"; empty'
check "records module holds no schema rules" bash -c "! grep -q '^def fail' '$(native_path "$MODULE")'"
check "validator includes the records module" grep -qx 'include "fragment-records-rules";' "$VALIDATOR"
check "records module keeps its helpers in the fr_ namespace" bash -c "
    ! grep -qE '^def (records|tag|body|desc|names)\\b' '$(native_path "$MODULE")'
"

# --- record stream for the root fragment -----------------------------------

root_records="$TMP_DIR/root.records"
quiet bash -c "
    jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' \
        --arg key demo --arg mode records '$(native_path "$FIXTURE/_root.json")'
" >"$root_records"

expect_record "records: D is the normalized description" "$root_records" $'D\x1fDemo CLI'
expect_record "records: A is the aliases csv" "$root_records" $'A\x1f'
expect_record "records: X carries kind/hash/command/section" "$root_records" \
    $'X\x1fhelp\x1faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x1fdemo --help\x1f'
expect_record "records: M carries key and value" "$root_records" $'M\x1fcombine-shorts\x1f'

check "records: S carries declaration data in parent order" bash -c "
    gawk -F'\\037' '\$1 == \"S\" { print \$2 \"|\" \$3 \"|\" \$4 \"|\" \$5 }' '$root_records' >'$TMP_DIR/subs.txt'
    printf '%s\\n' 'remote|succeeded|r|Manage remotes' 'cat|failed||Concatenate' | cmp -s - '$TMP_DIR/subs.txt'
"
check "records: S has exactly five fields" bash -c "
    gawk -F'\\037' '\$1 == \"S\" && NF != 5 { bad = 1 } END { exit bad }' '$root_records'
"
check "records: I tags are rendered in argc order" bash -c "
    gawk -F'\\037' '\$1 == \"I\" { print \$2 }' '$root_records' >'$TMP_DIR/tags.txt'
    printf '%s\\n' '@flag -v --verbose' '@option -o --output <FILE>' '@option -f --format[text|json] <FORMAT>' | cmp -s - '$TMP_DIR/tags.txt'
"
check "records: I has exactly seven fields" bash -c "
    gawk -F'\\037' '\$1 == \"I\" && NF != 7 { bad = 1 } END { exit bad }' '$root_records'
"
assert_not_contains "records: undescribed choices emit no static function" "$root_records" '_static_'

# --- static choices and choice_fn -----------------------------------------

with_static="$TMP_DIR/fragments-static"
mkdir -p "$with_static"
cp -R "$FIXTURE/." "$with_static/"
quiet jq '.items += [{"kind": "option", "names": ["--color"], "notations": ["<WHEN>"], "repeatable": false, "choices": [{"value": "auto", "description": "Pick per stream"}, {"value": "never", "description": "Disable color"}], "choice_fn": null, "description": "When to colorize"}]' \
    "$(native_path "$with_static/_root.json")" >"$TMP_DIR/static.tmp"
mv "$TMP_DIR/static.tmp" "$with_static/_root.json"

static_records="$TMP_DIR/static.records"
quiet bash -c "
    jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' \
        --arg key demo --arg mode records '$(native_path "$with_static/_root.json")'
" >"$static_records"
expect_record "records: described choices render tag, static function, flags and body" "$static_records" \
    $'I\x1f@option --color[?`_static_color`] <WHEN>\x1fWhen to colorize\x1f_static_color\x1ffalse\x1f1\x1fauto\tPick per stream\x1enever\tDisable color'
check "records: static function name is the fourth field" bash -c "
    test \"\$(gawk -F'\\037' '\$1 == \"I\" && \$2 ~ /--color/ { print \$4 }' '$static_records')\" = '_static_color'
"

remote_records="$TMP_DIR/remote.records"
quiet bash -c "
    jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' \
        --arg key 'demo|remote' --arg mode records '$(native_path "$FIXTURE/remote.json")'
" >"$remote_records"
expect_record "records: R carries every choice_fn" "$remote_records" $'R\x1f_choice_foo'
check "records: dynamic choice renders the choice_fn reference" bash -c "
    grep -qF '@option --foo[?\`_choice_foo\`] <VALUE>' '$remote_records'
"

# --- modes -----------------------------------------------------------------

check "validate mode accepts a valid fragment" \
    bash -c "jq -L '$(native_path "$SCRIPTS")' -e -f '$(native_path "$VALIDATOR")' --arg key demo '$(native_path "$FIXTURE/_root.json")' >/dev/null"

invalid_fragment="$TMP_DIR/invalid.json"
quiet jq '.hash = "not-a-hash"' "$(native_path "$FIXTURE/_root.json")" >"$invalid_fragment"
invalid_log="$(new_log)"
if run_quiet "$invalid_log" bash -c "jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' --arg key demo --arg mode records '$(native_path "$invalid_fragment")'"; then
    fail "records mode rejects an invalid fragment (unexpected success)"
else
    pass "records mode rejects an invalid fragment"
fi
assert_contains "records mode prints the validation message" "$invalid_log" "hash must be 64 lowercase hex characters"

extract_records="$TMP_DIR/invalid.records"
quiet bash -c "
    jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' \
        --arg key demo --arg mode extract '$(native_path "$invalid_fragment")'
" >"$extract_records"
expect_record "extract mode renders records without the verdict" "$extract_records" \
    $'X\x1fhelp\x1fnot-a-hash\x1fdemo --help\x1f'
expect_record "extract mode keeps the other records" "$extract_records" $'D\x1fDemo CLI'

printf 'not json\n' >"$TMP_DIR/broken.json"
expect_failure "extract mode still fails on unparseable JSON" \
    bash -c "jq -L '$(native_path "$SCRIPTS")' -b -r -f '$(native_path "$VALIDATOR")' --arg key demo --arg mode extract '$(native_path "$TMP_DIR/broken.json")'"

helper_finish
