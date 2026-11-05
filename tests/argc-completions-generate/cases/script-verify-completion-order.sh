#!/usr/bin/env bash
# scripts/verify-completion.sh: tag order inside a command block.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
new_script="$NEW_SCRIPT"

check_output "verify accepts canonical tag order" "PASS  tag order" \
    bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --skip-compgen

# --- arg before flag/option in the remote block ---------------------------
gawk '
    /^# @option --foo / { foo = $0; next }
    /^# @arg v1 / { print; if (foo != "") { print foo; foo = "" } next }
    { print }
' "$new_script" >"$TMP_DIR/tag-order-arg.sh"
check_rejects "verify rejects arg before flag/option" "tag order" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/tag-order-arg.sh" --cmd demo --skip-compgen
assert_contains "verify reports arg order line" "$CHECK_LOG" "@option after @arg"

# --- meta after the root items -------------------------------------------
gawk '
    /^# @meta / { meta = $0; next }
    /^# \{\{ demo remote$/ { print meta; meta = "" }
    { print }
' "$new_script" >"$TMP_DIR/tag-order-meta.sh"
check_rejects "verify rejects meta after flag/option" "@meta after @option" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/tag-order-meta.sh" --cmd demo --skip-compgen

# @env is allowed between @meta and the items even though assembly never emits it.
gawk '/^# @meta / { print; print "# @env DEMO_HOME"; next } { print }' \
    "$new_script" >"$TMP_DIR/tag-order-env.sh"
verify_check "verify accepts env after meta" "$TMP_DIR/tag-order-env.sh"

# --- unmarked layout ------------------------------------------------------
# Only the block layout is supported, but the tags are still scanned, so the
# ordering failure is reported alongside the missing markers.
cat >"$TMP_DIR/unmarked-order.sh" <<'UNMARKED'
#!/usr/bin/env bash
# @cmd Demo
# @arg x <X>
# @flag -v --verbose  Verbose
unmarked_order() {
    :;
}
command eval "$(argc --argc-eval "$0" "$@")"
UNMARKED
check_rejects "verify rejects unmarked layout" "no block markers" \
    bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/unmarked-order.sh" --skip-compgen
assert_contains "verify reports unmarked order line" "$CHECK_LOG" "@flag after @arg"

helper_finish
