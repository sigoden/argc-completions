#!/usr/bin/env bash
# scripts/fragment-records-rules.jq: the record stream contract behind
# validate-fragment.jq's records and extract modes.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

MODULE="$SCRIPTS/fragment-records-rules.jq"
VALIDATOR="$SCRIPTS/validate-fragment.jq"
FIXTURE="$FIXTURES/fragments/with-choice"

# run_records <fragment> <key> [<mode>]: print the record stream.
run_records() {
    jq_skill_file "$1" -b -r -f "$NATIVE_SCRIPTS/validate-fragment.jq" --arg key "$2" --arg mode "${3:-records}"
}

# --- module wiring -------------------------------------------------------
check "records module parses" jq_skill -n 'include "fragment-records-rules"; empty'
check "records module holds no schema rules" test -z "$(grep -n '^def fail' "$MODULE")"
assert_has_line "validator includes the records module" "$VALIDATOR" 'include "fragment-records-rules";'
check "records module keeps its helpers in the fr_ namespace" \
    gawk '/^def (records|tag|body|desc|names)([^A-Za-z0-9_]|$)/ { found = 1 } END { exit found }' "$MODULE"

# --- record stream for the root fragment ---------------------------------
root_records="$TMP_DIR/root.records"
quiet run_records "$FIXTURE/_root.json" demo >"$root_records"

assert_has_line "records: D is the normalized description" "$root_records" $'D\x1fDemo CLI'
assert_has_line "records: A is the aliases csv" "$root_records" $'A\x1f'
assert_has_line "records: X carries kind/hash/command/section" "$root_records" \
    $'X\x1fhelp\x1faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x1fdemo --help\x1f'
assert_has_line "records: M carries key and value" "$root_records" $'M\x1fcombine-shorts\x1f'

gawk -F'\037' '$1 == "S" { print $2 "|" $3 "|" $4 "|" $5 }' "$root_records" >"$TMP_DIR/subs.txt"
check_matches "records: S carries declaration data in parent order" "$TMP_DIR/subs.txt" <<'SUBS'
remote|succeeded|r|Manage remotes
cat|failed||Concatenate
SUBS
check "records: S has exactly five fields" \
    gawk -F'\037' '$1 == "S" && NF != 5 { bad = 1 } END { exit bad }' "$root_records"

gawk -F'\037' '$1 == "I" { print $2 }' "$root_records" >"$TMP_DIR/tags.txt"
check_matches "records: I tags are rendered in argc order" "$TMP_DIR/tags.txt" <<'TAGS'
@flag -v --verbose
@option -o --output <FILE>
@option -f --format[text|json] <FORMAT>
TAGS
check "records: I has exactly seven fields" \
    gawk -F'\037' '$1 == "I" && NF != 7 { bad = 1 } END { exit bad }' "$root_records"
assert_not_contains "records: undescribed choices emit no static function" "$root_records" '_static_'

# --- static choices and choice_fn ---------------------------------------
with_static="$TMP_DIR/fragments-static"
fragment_dir "$with_static" "$FIXTURE"
fragment_jq "$with_static/_root.json" '.items += [{"kind": "option", "names": ["--color"], "notations": ["<WHEN>"], "repeatable": false, "choices": [{"value": "auto", "description": "Pick per stream"}, {"value": "never", "description": "Disable color"}], "choice_fn": null, "description": "When to colorize"}]'
static_records="$TMP_DIR/static.records"
quiet run_records "$with_static/_root.json" demo >"$static_records"
assert_has_line "records: described choices render tag, static function, flags and body" "$static_records" \
    $'I\x1f@option --color[?`_static_color`] <WHEN>\x1fWhen to colorize\x1f_static_color\x1ffalse\x1f1\x1fauto\tPick per stream\x1enever\tDisable color'
check "records: static function name is the fourth field" \
    test "$(gawk -F'\037' '$1 == "I" && $2 ~ /--color/ { print $4 }' "$static_records")" = '_static_color'

# Multiple names stay on one tag, and a long name drives the static function
# label even when it is not the last name.
multi_names="$TMP_DIR/fragments-multi-names"
fragment_with_items "$multi_names" '[{"kind": "option", "names": ["--color", "-c"], "notations": ["<WHEN>"], "repeatable": false, "choices": [{"value": "auto", "description": "Pick per stream"}], "choice_fn": null, "description": "When to colorize"}]'
multi_records="$TMP_DIR/multi-names.records"
quiet run_records "$multi_names/_root.json" demo >"$multi_records"
assert_has_line "records: multi names render on one tag" "$multi_records" \
    $'I\x1f@option --color -c[?`_static_color`] <WHEN>\x1fWhen to colorize\x1f_static_color\x1ffalse\x1f1\x1fauto\tPick per stream'

remote_records="$TMP_DIR/remote.records"
quiet run_records "$FIXTURE/remote.json" 'demo|remote' >"$remote_records"
assert_has_line "records: R carries every choice_fn" "$remote_records" $'R\x1f_choice_foo'
assert_contains "records: dynamic choice renders the choice_fn reference" "$remote_records" \
    '@option --foo[?`_choice_foo`] <VALUE>'

# --- modes --------------------------------------------------------------
check "validate mode accepts a valid fragment" validate_fragment "$FIXTURE/_root.json"

invalid_fragment="$TMP_DIR/invalid.json"
cp "$FIXTURE/_root.json" "$invalid_fragment"
fragment_jq "$invalid_fragment" '.hash = "not-a-hash"'
check_rejects "records mode rejects an invalid fragment" \
    "hash must be 64 lowercase hex characters" run_records "$invalid_fragment" demo records

# extract mode renders the records without the verdict.
extract_records="$TMP_DIR/invalid.records"
quiet run_records "$invalid_fragment" demo extract >"$extract_records"
assert_has_line "extract mode renders records without the verdict" "$extract_records" \
    $'X\x1fhelp\x1fnot-a-hash\x1fdemo --help\x1f'
assert_has_line "extract mode keeps the other records" "$extract_records" $'D\x1fDemo CLI'

printf 'not json\n' >"$TMP_DIR/broken.json"
expect_failure "extract mode still fails on unparseable JSON" run_records "$TMP_DIR/broken.json" demo extract

# A shell expression round-trips through the X record; a control character
# would break the line-based stream, so extract mode rejects it before
# rendering anything.
# The sample command lives in a variable: a literal `sed` pipeline inside the
# assertion text would trip the Unix tool compatibility lint, which cannot tell
# sample text from real code.
expr_command='demo --help | sed s/^/x/'
expr_record=$'X\x1fhelp\x1faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x1f'"$expr_command"$'\x1f'
expr_fragment="$TMP_DIR/expr.json"
cp "$FIXTURE/_root.json" "$expr_fragment"
fragment_jq "$expr_fragment" --arg cmd "$expr_command" '.source.command = $cmd'
records_expr="$TMP_DIR/expr.records"
quiet run_records "$expr_fragment" demo records >"$records_expr"
assert_has_line "records: X carries a shell expression" "$records_expr" "$expr_record"
extract_expr="$TMP_DIR/expr-extract.records"
quiet run_records "$expr_fragment" demo extract >"$extract_expr"
assert_has_line "extract mode carries a shell expression" "$extract_expr" "$expr_record"

ctrl_fragment="$TMP_DIR/ctrl.json"
cp "$FIXTURE/_root.json" "$ctrl_fragment"
fragment_jq "$ctrl_fragment" '.source.command = "demo --help\ncat"'
expect_failure "extract mode rejects a control character in source.command" \
    run_records "$ctrl_fragment" demo extract

helper_finish
