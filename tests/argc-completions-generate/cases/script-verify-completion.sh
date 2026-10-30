#!/usr/bin/env bash
# scripts/verify-completion.sh: failure diagnostics, strictness, cache hygiene.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# Fixtures used by the negative checks below.
build_new_script
build_choices_base
build_with_script
build_regen_fixture
build_terminated_fixture
build_static_fixture
build_dynamic_fixture
new_script="$NEW_SCRIPT"
with_script="$WITH_SCRIPT"
choices_base="$CHOICES_BASE"
choices_desc_script="$STATIC_SCRIPT"
terminated_script="$TERMINATED_SCRIPT"

expect_failure "verify require-no-choice on bound script" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --skip-compgen --require-no-choice-fns --cache-dir "$FIXTURES/fragments/with-choice"
assert_not_contains "verify no value types library" "$SCRIPTS/verify-completion.sh" "_value_types"

empty_blocks="$TMP_DIR/empty-blocks.sh"
gawk '/^command eval / && !done {
        print "# >>> STATIC"
        print "# <<< STATIC"
        print ""
        print "# >>> CHOICES"
        print "# <<< CHOICES"
        print ""
        done = 1
    }
    { print }' "$new_script" >"$empty_blocks"

empty_blocks_log="$(new_log)"
if run_quiet "$empty_blocks_log" bash "$SCRIPTS/verify-completion.sh" "$empty_blocks" --cmd demo --skip-compgen; then
    fail "verify rejects empty optional blocks (unexpected success)"
else
    pass "verify rejects empty optional blocks"
fi
assert_contains "verify names empty STATIC block" "$empty_blocks_log" "empty STATIC block"
assert_contains "verify names empty CHOICES block" "$empty_blocks_log" "empty CHOICES block"

mkdir -p "$TMP_DIR/fragments-terminated-mismatch"
cp -R "$TMP_DIR/fragments-terminated/." "$TMP_DIR/fragments-terminated-mismatch/"
jq '(.items[] | select(.names == ["--command"]) | .terminated) = false' "$TMP_DIR/fragments-terminated-mismatch/_root.json" >"$TMP_DIR/terminated-mismatch.tmp" && mv "$TMP_DIR/terminated-mismatch.tmp" "$TMP_DIR/fragments-terminated-mismatch/_root.json"
mismatch_log="$(new_log)"
if run_quiet "$mismatch_log" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-mismatch" --skip-compgen; then
    fail "verify terminated mismatch (unexpected success)"
else
    pass "verify terminated mismatch"
fi
assert_contains "verify terminated mismatch message" "$mismatch_log" "terminated mismatch"

sed 's/--command~ /--command /; s/args~ /args /' "$terminated_script" >"$TMP_DIR/terminated-no-marker.sh"
reverse_log="$(new_log)"
if run_quiet "$reverse_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/terminated-no-marker.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen; then
    fail "verify terminated reverse mismatch (unexpected success)"
else
    pass "verify terminated reverse mismatch"
fi
assert_contains "verify terminated reverse message" "$reverse_log" "terminated mismatch"

# A hand-edited STATIC block fails the exact comparison.
cp "$choices_desc_script" "$TMP_DIR/static-edit.sh"
gawk '/^\tnone\tDo not sort$/ { print "\tnone\tTampered"; next } { print }' \
    "$TMP_DIR/static-edit.sh" >"$TMP_DIR/static-edit.tmp"
mv "$TMP_DIR/static-edit.tmp" "$TMP_DIR/static-edit.sh"
static_edit_log="$(new_log)"
if run_quiet "$static_edit_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/static-edit.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen; then
    fail "verify detects hand-edited STATIC (unexpected success)"
else
    pass "verify detects hand-edited STATIC"
fi
assert_contains "verify names STATIC mismatch" "$static_edit_log" "STATIC differs from fragments"

gawk '/^# <<< CHOICES$/ && !done { print "_static_probe() { :; }"; done = 1 } { print }' \
    "$TMP_DIR/static-before.sh" >"$TMP_DIR/static-reserved.sh"
expect_failure "verify rejects reserved static prefix" bash "$SCRIPTS/verify-completion.sh" \
    "$TMP_DIR/static-reserved.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen
# ---------------------------------------------------------------------------
# Verify failures
# ---------------------------------------------------------------------------
cp "$TMP_DIR/new.sh" "$TMP_DIR/undefined.sh"
sed 's/^# @flag -v --verbose  /# @flag -v --verbose[`_choice_missing`]  /' "$TMP_DIR/undefined.sh" >"$TMP_DIR/undefined.tmp" && mv "$TMP_DIR/undefined.tmp" "$TMP_DIR/undefined.sh"
expect_failure "verify undefined choice fn" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/undefined.sh" --cmd demo --skip-compgen

gawk '/^# <<< CHOICES$/ && !done { print "_choice_probe() { :; }"; done = 1 } { print }' \
    "$choices_base" >"$TMP_DIR/choice-no-choice.sh"
expect_failure "verify require-no-choice rejects choice definitions" bash "$SCRIPTS/verify-completion.sh" \
    "$TMP_DIR/choice-no-choice.sh" --cmd demo --skip-compgen --require-no-choice-fns

cp "$TMP_DIR/regen.sh" "$TMP_DIR/manual-edit.sh"
gawk '/^# <<< SPEC$/ { print "# @flag --manual" } { print }' \
    "$TMP_DIR/manual-edit.sh" >"$TMP_DIR/manual-edit.tmp" && mv "$TMP_DIR/manual-edit.tmp" "$TMP_DIR/manual-edit.sh"
expect_failure "verify detects manual SPEC edit" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/manual-edit.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-regen" --skip-compgen

# A tag that loses its binding is the failure the compgen smoke cannot see.
sed 's/--foo\[?`_choice_foo`\]/--foo -foo[?`_choice_foo`]/' "$with_script" >"$TMP_DIR/dropped-binding.sh"
dropped_binding_log="$(new_log)"
if run_quiet "$dropped_binding_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/dropped-binding.sh" --cmd demo --cache-dir "$FIXTURES/fragments/with-choice" --skip-compgen; then
    fail "verify detects dropped choice binding (unexpected success)"
else
    pass "verify detects dropped choice binding"
fi
assert_contains "verify names dropped choice_fn" "$dropped_binding_log" "dropped choice_fn"

printf '#!/usr/bin/env bash\n# only a shebang\n' >"$TMP_DIR/no-help.sh"
expect_failure "verify empty help output" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-help.sh" --skip-compgen

sed '1d' "$TMP_DIR/new.sh" >"$TMP_DIR/no-shebang.sh"
expect_failure "verify strict treats warnings as failures" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-shebang.sh" --cmd demo --skip-compgen
check "verify --no-strict allows warnings" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-shebang.sh" --cmd demo --skip-compgen --no-strict

# Cache hygiene: scratch left in the fragment directory, or a fragment without
# its cached help key, must fail instead of passing silently (`raw-help.txt`
# reads as the help file of a node named `raw-help`).
hygiene_dir="$TMP_DIR/fragments-hygiene"
cp -R "$FIXTURES/fragments/no-choice" "$hygiene_dir"
check "verify cache hygiene clean" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen --require-no-choice-fns
printf 'raw help\n' >"$hygiene_dir/raw-help.txt"
if run_quiet "$TMP_DIR/hygiene-stray.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen; then
    fail "verify cache hygiene stray capture (unexpected success)"
else
    pass "verify cache hygiene stray capture"
fi
assert_contains "verify cache hygiene stray message" "$TMP_DIR/hygiene-stray.log" "cache hygiene: raw-help.txt has no matching .json"
rm -f "$hygiene_dir/raw-help.txt" "$hygiene_dir/remote/add.txt"
if run_quiet "$TMP_DIR/hygiene-missing.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen; then
    fail "verify cache hygiene missing help (unexpected success)"
else
    pass "verify cache hygiene missing help"
fi
assert_contains "verify cache hygiene missing help message" "$TMP_DIR/hygiene-missing.log" "cache hygiene: remote/add.json has no remote/add.txt"
dynamic_verify_log="$TMP_DIR/dynamic-verify.log"
if VERBOSE=1 bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/dynamic.sh" \
        --cmd demo --cache-dir "$TMP_DIR/fragments-dynamic" >"$dynamic_verify_log" 2>&1; then
    pass "dynamic verify"
else
    fail "dynamic verify"
    show_captured "$dynamic_verify_log"
fi
assert_contains "verify runs compgen for --output" "$dynamic_verify_log" "PASS  compgen choice --output"
assert_not_contains "compgen choice label not shifted" "$dynamic_verify_log" "compgen choice --output -o"

helper_finish
