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

# A tag that names a function nothing defines is the first failure a hand edit
# introduces.
cp "$new_script" "$TMP_DIR/undefined.sh"
sed 's/^# @flag -v --verbose  /# @flag -v --verbose[`_choice_missing`]  /' \
    "$TMP_DIR/undefined.sh" >"$TMP_DIR/undefined.tmp" && mv "$TMP_DIR/undefined.tmp" "$TMP_DIR/undefined.sh"
verify_fails "verify undefined choice fn" "$TMP_DIR/undefined.sh"

block_append "$CHOICES_BASE" "$TMP_DIR/choice-no-choice.sh" CHOICES '_choice_probe() { :; }'
verify_fails "verify require-no-choice rejects choice definitions" \
    "$TMP_DIR/choice-no-choice.sh" --require-no-choice-fns

# A manual SPEC edit is a drift the fragment comparison must catch.
gawk '/^# <<< SPEC$/ { print "# @flag --manual" } { print }' \
    "$REGEN_SCRIPT" >"$TMP_DIR/manual-edit.sh"
verify_fails "verify detects manual SPEC edit" "$TMP_DIR/manual-edit.sh" --cache-dir "$REGEN_FRAGMENTS"

# A tag that loses its binding is the failure the compgen smoke cannot see.
sed 's/--foo\[?`_choice_foo`\]/--foo/' "$with_script" >"$TMP_DIR/dropped-binding.sh"
verify_rejects "verify detects dropped choice binding" "dropped choice_fn" \
    "$TMP_DIR/dropped-binding.sh" --cache-dir "$FIXTURES/fragments/with-choice"

printf '#!/usr/bin/env bash\n# only a shebang\n' >"$TMP_DIR/no-help.sh"
expect_failure "verify empty help output" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/no-help.sh" --skip-compgen

# A bridge copy forwards every word to the framework hook, so it has no
# argparse --help model and no fragments; verify recognizes the binding and
# only notes that --cache-dir does not apply.
cp "$ROOT_DIR/bridges/cobra.sh" "$TMP_DIR/bridge-demo.sh"
verify_check "verify accepts a bridge completion" "$TMP_DIR/bridge-demo.sh"
check_output "verify ignores cache-dir for a bridge completion" \
    "NOTE  bridge completion has no fragments" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/bridge-demo.sh" --cmd demo --skip-compgen \
    --cache-dir "$TMP_DIR/absent-cache"

# A delegate completion hands every word to the tool's own engine (mise, aws),
# so `--help` may print nothing; the SPEC binding is what exempts the probe.
cat >"$TMP_DIR/delegate.sh" <<'DELEGATE'
#!/usr/bin/env bash

# >>> SPEC
# @describe Demo delegate completion
# @arg words~[?`_choice_delegate`]

# <<< SPEC

# >>> HINTS
# Complete by delegating to the tool's own engine.
# <<< HINTS

# >>> CHOICES
_choice_delegate() {
    return 0
}
# <<< CHOICES

command eval "$(argc --argc-eval "$0" "$@")"
DELEGATE
verify_check "verify accepts a delegate completion" "$TMP_DIR/delegate.sh"
check_output "verify names the delegate help probe" \
    "PASS  help output (delegate completion)" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/delegate.sh" --skip-compgen

# The exemption is keyed on the binding: without it the same empty help fails.
sed 's/\[?`_choice_delegate`\]//' "$TMP_DIR/delegate.sh" >"$TMP_DIR/no-delegate.sh"
verify_rejects "verify rejects empty help without a delegate binding" \
    "help output is empty" "$TMP_DIR/no-delegate.sh"

# Strict mode turns a warning (no shebang) into a failure; --no-strict does not.
sed '1d' "$new_script" >"$TMP_DIR/no-shebang.sh"
verify_fails "verify strict treats warnings as failures" "$TMP_DIR/no-shebang.sh"
verify_check "verify --no-strict allows warnings" "$TMP_DIR/no-shebang.sh" --no-strict

helper_finish
