#!/usr/bin/env bash
# scripts/assemble.sh: removed fields, name shapes, description echo.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# --- fields the schema no longer accepts ----------------------------------
value_type_fragments="$TMP_DIR/fragments-value-type-field"
fragment_with_items "$value_type_fragments" '[
  {"kind": "option", "names": ["--owner"], "notations": ["<NAME>"], "choices": [], "choice_fn": null, "value_type": "user", "repeatable": false, "prefixed": false, "delimiter": null, "description": "File owner"}
]'
check_rejects "assemble rejects value_type field" "unknown fields: value_type" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$value_type_fragments" --stdout

reject_fragments() {
    local label="$1" item="$2" dir
    dir="$TMP_DIR/fragments-$(printf '%s' "$label" | tr -c 'A-Za-z0-9' '-')"
    fragment_with_items "$dir" "[$item]"
    assemble_rejects "$label" "$dir"
}

reject_fragments "assemble rejects delimiter without repeatable" \
    '{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": ",", "description": "Bad"}'
reject_fragments "assemble rejects prefixed flag" \
    '{"kind": "flag", "names": ["--bad"], "repeatable": false, "prefixed": true, "description": "Bad"}'
reject_fragments "assemble rejects delimiter flag" \
    '{"kind": "flag", "names": ["--bad"], "repeatable": false, "delimiter": ",", "description": "Bad"}'
reject_fragments "assemble rejects prefixed arg" \
    '{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "prefixed": true, "description": "Bad"}'
reject_fragments "assemble rejects arg delimiter without repeatable" \
    '{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": ",", "description": "Bad"}'
reject_fragments "assemble rejects invalid arg delimiter" \
    '{"kind": "arg", "name": "bad", "repeatable": true, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": "x", "description": "Bad"}'
reject_fragments "assemble rejects prefixed two names" \
    '{"kind": "option", "names": ["-A", "--alpha"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}'
reject_fragments "assemble rejects prefixed name with dash" \
    '{"kind": "option", "names": ["-X-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}'
reject_fragments "assemble rejects non-prefix option name with dash" \
    '{"kind": "option", "names": ["--dash-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}'
reject_fragments "assemble rejects non-prefix flag name with dash" \
    '{"kind": "flag", "names": ["--dash-"], "repeatable": false, "description": "Bad"}'
reject_fragments "assemble rejects prefixed multiple notations" \
    '{"kind": "option", "names": ["-X"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Bad"}'
reject_fragments "assemble rejects delimiter multiple notations" \
    '{"kind": "option", "names": ["--multi"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Bad"}'
reject_fragments "assemble rejects invalid delimiter" \
    '{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": "x", "description": "Bad"}'

# --- two-name shapes ------------------------------------------------------
# argc silently drops the second name, and the choice with it, when the
# two-name shape is one it cannot parse. Assembly must reject it instead.
bad_alias_first="$TMP_DIR/fragments-bad-names-alias-first"
fragment_with_items "$bad_alias_first" '[{"kind": "option", "names": ["-ex", "--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
check_rejects "assemble rejects alias-first two names" "one-character short name" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$bad_alias_first" --stdout
bad_help_order="$TMP_DIR/fragments-bad-names-help-order"
fragment_with_items "$bad_help_order" '[{"kind": "option", "names": ["--eval-command", "-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
check_rejects "assemble rejects help-order two names" "one-character short name" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$bad_help_order" --stdout

# Accepted two-name shapes: two single-character shorts and a short plus a
# multi-character single-dash alias.
names_ok="$TMP_DIR/fragments-names-ok"
fragment_with_items "$names_ok" '[
  {"kind": "flag", "names": ["-b", "-m"], "repeatable": false, "description": "Ignored for compatibility"},
  {"kind": "option", "names": ["-x", "-ex"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Two names"}
]'
names_ok_script="$TMP_DIR/names-ok.sh"
assemble_to "$names_ok_script" demo --cache-dir "$names_ok" --stdout
assert_contains "assemble two shorts" "$names_ok_script" '# @flag -b -m'
assert_contains "assemble short plus alias" "$names_ok_script" '# @option -x -ex <V>'
verify_check "verify two-name shapes" "$names_ok_script" --cache-dir "$names_ok"

# A pair argc cannot accept becomes one item per name with every other field
# copied; both items must keep the dynamic binding.
split_fragments="$TMP_DIR/fragments-split"
fragment_with_items "$split_fragments" '[
  {"kind": "option", "names": ["--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"},
  {"kind": "option", "names": ["-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}
]'
split_script="$TMP_DIR/split.sh"
assemble_to "$split_script" demo --cache-dir "$split_fragments" \
    --context "$FIXTURES/contexts/context.sh" --stdout
assert_contains "assemble split long name" "$split_script" '# @option --eval-command*[?`_choice_root`] <COMMAND>'
assert_contains "assemble split alias" "$split_script" '# @option -ex*[?`_choice_root`] <COMMAND>'
verify_check "verify split option bindings" "$split_script" --cache-dir "$split_fragments"

# --- description must not repeat static choices --------------------------
# The description column echoes the value list only when argc renders it from
# `[a|b]`; a description that repeats the list means the fragment is wrong.
echo_reject() {
    local label="$1" item="$2" needle="$3" dir
    dir="$TMP_DIR/fragments-$(printf '%s' "$label" | tr -c 'A-Za-z0-9' '-')"
    fragment_with_items "$dir" "[$item]"
    check_rejects "$label" "$needle" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout
}

echo_reject "assemble rejects parenthesized choice echo" \
    '{"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "relay", "description": ""}, {"value": "tailcat", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, tailcat, relay) (default: \"auto\")"}' \
    "description repeats choices: auto, tailcat, relay"
echo_reject "assemble rejects bracketed choice echo" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode [a|b] (default: a)"}' \
    "description repeats choices: a|b"
echo_reject "assemble rejects braced choice echo" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode {a, b}"}' \
    "description repeats choices: a, b"
echo_reject "assemble rejects quoted choice echo" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (\"a\", \"b\")"}' \
    'description repeats choices: "a", "b"'
echo_reject "assemble rejects colon-list choice echo" \
    '{"kind": "option", "names": ["--sort"], "notations": ["<KEY>"], "choices": [{"value": "name", "description": ""}, {"value": "version", "description": ""}, {"value": "none", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Select sort: name,version,none"}' \
    "description repeats choices in a colon list"

# A partial list, a prose mention, a cleaned default and an empty description
# are all accepted and echoed verbatim.
choice_ok_fragments="$TMP_DIR/fragments-choice-ok"
fragment_with_items "$choice_ok_fragments" '[
  {"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (default: \"auto\")"},
  {"kind": "option", "names": ["--partial"], "notations": ["<VALUE>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, relay)"},
  {"kind": "option", "names": ["--prose"], "notations": ["<MODE>"], "choices": [{"value": "fast", "description": ""}, {"value": "slow", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (see fast docs)"},
  {"kind": "option", "names": ["--empty"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": ""}
]'
choice_ok_script="$TMP_DIR/choice-ok.sh"
assemble_to "$choice_ok_script" demo --cache-dir "$choice_ok_fragments" --stdout
assert_contains "assemble keeps cleaned choices description" "$choice_ok_script" 'guest transport (default: "auto")'
assert_contains "assemble keeps partial choice list" "$choice_ok_script" 'guest transport (auto, relay)'
assert_contains "assemble keeps prose group" "$choice_ok_script" 'Mode (see fast docs)'
assert_has_line "assemble renders empty description without padding" "$choice_ok_script" '# @option --empty[a|b] <MODE>'
verify_check "verify cleaned choice descriptions" "$choice_ok_script" --cache-dir "$choice_ok_fragments"

helper_finish
