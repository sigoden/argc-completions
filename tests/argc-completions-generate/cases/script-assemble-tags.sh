#!/usr/bin/env bash
# scripts/assemble.sh: removed fields, name shapes, description echo.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# Removed value_type field
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-value-type-field" '[
  {"kind": "option", "names": ["--owner"], "notations": ["<NAME>"], "choices": [], "choice_fn": null, "value_type": "user", "repeatable": false, "prefixed": false, "delimiter": null, "description": "File owner"}
]'
value_type_log="$(new_log)"
if run_quiet "$value_type_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-value-type-field" --stdout; then
    fail "assemble rejects value_type field (unexpected success)"
else
    pass "assemble rejects value_type field"
fi
assert_contains "value_type unknown field error" "$value_type_log" "unknown fields: value_type"

inject_root_items "$TMP_DIR/fragments-bad-delimiter-repeat" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-prefixed" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-delimiter" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-delimiter" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-prefixed" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed arg" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-repeat" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects arg delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-char" '[{"kind": "arg", "name": "bad", "repeatable": true, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid arg delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-char" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-names" '[{"kind": "option", "names": ["-A", "--alpha"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed two names" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-names" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-dash" '[{"kind": "option", "names": ["-X-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-nonprefix-dash" '[{"kind": "option", "names": ["--dash-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix option name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-nonprefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-nonprefix-dash" '[{"kind": "flag", "names": ["--dash-"], "repeatable": false, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix flag name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-nonprefix-dash" --stdout

# argc silently drops the second name, and the choice with it, when the
# two-name shape is one it cannot parse. Assembly must reject it instead.
inject_root_items "$TMP_DIR/fragments-bad-names-alias-first" '[{"kind": "option", "names": ["-ex", "--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_alias_log="$(new_log)"
if run_quiet "$names_alias_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-alias-first" --stdout; then
    fail "assemble rejects alias-first two names (unexpected success)"
else
    pass "assemble rejects alias-first two names"
fi
assert_contains "assemble alias-first names error" "$names_alias_log" "one-character short name"
inject_root_items "$TMP_DIR/fragments-bad-names-help-order" '[{"kind": "option", "names": ["--eval-command", "-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_help_order_log="$(new_log)"
if run_quiet "$names_help_order_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-help-order" --stdout; then
    fail "assemble rejects help-order two names (unexpected success)"
else
    pass "assemble rejects help-order two names"
fi
assert_contains "assemble help-order names error" "$names_help_order_log" "one-character short name"

# Accepted two-name shapes: two single-character shorts and a short plus a
# multi-character single-dash alias.
inject_root_items "$TMP_DIR/fragments-names-ok" '[
  {"kind": "flag", "names": ["-b", "-m"], "repeatable": false, "description": "Ignored for compatibility"},
  {"kind": "option", "names": ["-x", "-ex"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Two names"}
]'
names_ok_script="$TMP_DIR/names-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-names-ok" --stdout >"$names_ok_script"
assert_contains "assemble two shorts" "$names_ok_script" '# @flag -b -m'
assert_contains "assemble short plus alias" "$names_ok_script" '# @option -x -ex <V>'
check "verify two-name shapes" bash "$SCRIPTS/verify-completion.sh" "$names_ok_script" --cmd demo --cache-dir "$TMP_DIR/fragments-names-ok" --skip-compgen

# A pair argc cannot accept becomes one item per name with every other field
# copied; both items must keep the dynamic binding.
mkdir -p "$TMP_DIR/fragments-split"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-split/"
jq '.items += [
  {"kind": "option", "names": ["--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"},
  {"kind": "option", "names": ["-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}
]' "$(native_path "$TMP_DIR/fragments-split/_root.json")" >"$TMP_DIR/split.tmp" && mv "$TMP_DIR/split.tmp" "$TMP_DIR/fragments-split/_root.json"
split_script="$TMP_DIR/split.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-split" --context "$FIXTURES/contexts/context.sh" --stdout >"$split_script"
assert_contains "assemble split long name" "$split_script" '# @option --eval-command*[?`_choice_root`] <COMMAND>'
assert_contains "assemble split alias" "$split_script" '# @option -ex*[?`_choice_root`] <COMMAND>'
check "verify split option bindings" bash "$SCRIPTS/verify-completion.sh" "$split_script" --cmd demo --cache-dir "$TMP_DIR/fragments-split" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-prefix-notations" '[{"kind": "option", "names": ["-X"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-notations" '[{"kind": "option", "names": ["--multi"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-char" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-char" --stdout

# ---------------------------------------------------------------------------
# Description must not repeat static choices
# ---------------------------------------------------------------------------
choice_echo_reject() {
    local label="$1" dir="$2" item="$3" needle="$4" err
    inject_root_items "$dir" "[$item]"
    err="$(new_log)"
    if run_quiet "$err" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout; then
        fail "$label (unexpected success)"
    else
        pass "$label"
        if grep -Fq -- "$needle" "$err"; then
            pass "$label error"
        else
            fail "$label error (missing: $needle)"
        fi
    fi
}

choice_echo_reject "assemble rejects parenthesized choice echo" \
    "$TMP_DIR/fragments-choice-echo-paren" \
    '{"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "relay", "description": ""}, {"value": "tailcat", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, tailcat, relay) (default: \"auto\")"}' \
    "description repeats choices: auto, tailcat, relay"
choice_echo_reject "assemble rejects bracketed choice echo" \
    "$TMP_DIR/fragments-choice-echo-bracket" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode [a|b] (default: a)"}' \
    "description repeats choices: a|b"
choice_echo_reject "assemble rejects braced choice echo" \
    "$TMP_DIR/fragments-choice-echo-brace" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode {a, b}"}' \
    "description repeats choices: a, b"
choice_echo_reject "assemble rejects quoted choice echo" \
    "$TMP_DIR/fragments-choice-echo-quoted" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (\"a\", \"b\")"}' \
    'description repeats choices: "a", "b"'

choice_ok_dir="$TMP_DIR/fragments-choice-ok"
inject_root_items "$choice_ok_dir" '[
  {"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (default: \"auto\")"},
  {"kind": "option", "names": ["--partial"], "notations": ["<VALUE>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, relay)"},
  {"kind": "option", "names": ["--prose"], "notations": ["<MODE>"], "choices": [{"value": "fast", "description": ""}, {"value": "slow", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (see fast docs)"},
  {"kind": "option", "names": ["--empty"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": ""}
]'
choice_ok_script="$TMP_DIR/choice-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$choice_ok_dir" --stdout >"$choice_ok_script"
assert_contains "assemble keeps cleaned choices description" "$choice_ok_script" 'guest transport (default: "auto")'
assert_contains "assemble keeps partial choice list" "$choice_ok_script" 'guest transport (auto, relay)'
assert_contains "assemble keeps prose group" "$choice_ok_script" 'Mode (see fast docs)'
check "assemble renders empty description without padding" grep -Fxq '# @option --empty[a|b] <MODE>' "$choice_ok_script"
check "verify cleaned choice descriptions" bash "$SCRIPTS/verify-completion.sh" "$choice_ok_script" --cmd demo --cache-dir "$choice_ok_dir" --skip-compgen

choice_echo_reject "assemble rejects colon-list choice echo" \
    "$TMP_DIR/fragments-choice-echo-colon" \
    '{"kind": "option", "names": ["--sort"], "notations": ["<KEY>"], "choices": [{"value": "name", "description": ""}, {"value": "version", "description": ""}, {"value": "none", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Select sort: name,version,none"}' \
    "description repeats choices in a colon list"

helper_finish
