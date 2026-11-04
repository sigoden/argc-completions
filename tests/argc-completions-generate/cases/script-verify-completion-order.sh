#!/usr/bin/env bash
# scripts/verify-completion.sh: tag order inside a command block.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
new_script="$NEW_SCRIPT"

# ---------------------------------------------------------------------------
# Tag order inside a command block
# ---------------------------------------------------------------------------
order_log="$(new_log)"
if run_quiet "$order_log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --skip-compgen; then
    pass "verify accepts canonical tag order"
    assert_contains "verify passes tag order" "$order_log" "PASS  tag order"
else
    fail "verify accepts canonical tag order"
    show_captured "$order_log"
fi

# arg before flag/option in the remote block
gawk '
    /^# @option --foo / { foo = $0; next }
    /^# @arg v1 / { print; if (foo != "") { print foo; foo = "" } next }
    { print }
' "$new_script" >"$TMP_DIR/tag-order-arg.sh"
order_arg_log="$(new_log)"
if run_quiet "$order_arg_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/tag-order-arg.sh" --cmd demo --skip-compgen; then
    fail "verify rejects arg before flag/option (unexpected success)"
else
    pass "verify rejects arg before flag/option"
fi
assert_contains "verify names arg order violation" "$order_arg_log" "tag order"
assert_contains "verify reports arg order line" "$order_arg_log" "@option after @arg"

# meta after the root items
gawk '
    /^# @meta / { meta = $0; next }
    /^# \{\{ demo remote$/ { print meta; meta = "" }
    { print }
' "$new_script" >"$TMP_DIR/tag-order-meta.sh"
order_meta_log="$(new_log)"
if run_quiet "$order_meta_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/tag-order-meta.sh" --cmd demo --skip-compgen; then
    fail "verify rejects meta after flag/option (unexpected success)"
else
    pass "verify rejects meta after flag/option"
fi
assert_contains "verify reports meta order line" "$order_meta_log" "@meta after @option"

# @env is allowed between @meta and the items even though assembly never emits it.
gawk '/^# @meta / { print; print "# @env DEMO_HOME"; next } { print }' \
    "$new_script" >"$TMP_DIR/tag-order-env.sh"
check "verify accepts env after meta" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/tag-order-env.sh" --cmd demo --skip-compgen

# An unmarked script fails: only the block layout is supported. Its tags are
# still scanned, so the ordering failure is reported too.
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
expect_failure "verify rejects unmarked layout" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/unmarked-order.sh" --skip-compgen
unmarked_log="$(new_log)"
run_quiet "$unmarked_log" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/unmarked-order.sh" --skip-compgen || true
assert_contains "verify reports no block markers" "$unmarked_log" "no block markers"
assert_contains "verify reports unmarked order line" "$unmarked_log" "@flag after @arg"

helper_finish
