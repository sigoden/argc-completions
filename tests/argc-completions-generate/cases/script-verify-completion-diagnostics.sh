#!/usr/bin/env bash
# scripts/verify-completion.sh: failure diagnostics for edited scripts.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_choices_base
build_with_script
build_regen_fixture
new_script="$NEW_SCRIPT"
with_script="$WITH_SCRIPT"
choices_base="$CHOICES_BASE"

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

helper_finish
