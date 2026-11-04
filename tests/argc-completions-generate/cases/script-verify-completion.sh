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

# HINTS markers: canonical paths pass; a bare marker, an unknown path, and a
# duplicate are failures.
hints_ok_log="$(new_log)"
if run_quiet "$hints_ok_log" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo \
    --skip-compgen --cache-dir "$FIXTURES/fragments/with-choice"; then
    pass "verify accepts HINTS markers"
else
    fail "verify accepts HINTS markers"
    show_captured "$hints_ok_log"
fi
assert_contains "verify reports HINTS markers" "$hints_ok_log" "PASS  HINTS markers"

gawk '/^# >>> HINTS$/ { print; print "# %%"; print "# - unattached hint"; next } { print }' \
    "$new_script" >"$TMP_DIR/hints-bare-marker.sh"
gawk '/^# >>> HINTS$/ { print; print "# %%demo missing"; print "# - unknown path hint"; next } { print }' \
    "$new_script" >"$TMP_DIR/hints-unknown-path.sh"
gawk '/^# >>> HINTS$/ {
        print
        print "# %%demo"
        print "# - first root hint"
        print "# %%demo"
        print "# - second root hint"
        next
    }
    { print }' "$new_script" >"$TMP_DIR/hints-duplicate.sh"
for hints_case in bare-marker:"without a command path" unknown-path:"is not a command block: demo missing" duplicate:"duplicated: demo"; do
    hints_file="$TMP_DIR/hints-${hints_case%%:*}.sh"
    hints_needle="${hints_case#*:}"
    hints_log="$(new_log)"
    if run_quiet "$hints_log" bash "$SCRIPTS/verify-completion.sh" "$hints_file" --cmd demo --skip-compgen; then
        fail "verify rejects HINTS marker ${hints_case%%:*} (unexpected success)"
    else
        pass "verify rejects HINTS marker ${hints_case%%:*}"
    fi
    assert_contains "verify names HINTS marker ${hints_case%%:*}" "$hints_log" "$hints_needle"
done

mkdir -p "$TMP_DIR/fragments-terminated-mismatch"
cp -R "$TMP_DIR/fragments-terminated/." "$TMP_DIR/fragments-terminated-mismatch/"
jq '(.items[] | select(.names == ["--command"]) | .terminated) = false' "$(native_path "$TMP_DIR/fragments-terminated-mismatch/_root.json")" >"$TMP_DIR/terminated-mismatch.tmp" && mv "$TMP_DIR/terminated-mismatch.tmp" "$TMP_DIR/fragments-terminated-mismatch/_root.json"
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

# Cache hygiene: only .json fragments are allowed. A .txt (raw capture, legacy
# help key, or probe leftover) and an invalid hash/source.command must fail.
hygiene_dir="$TMP_DIR/fragments-hygiene"
cp -R "$FIXTURES/fragments/no-choice" "$hygiene_dir"
check "verify cache hygiene clean" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen --require-no-choice-fns
printf 'raw help\n' >"$hygiene_dir/raw-help.txt"
if run_quiet "$TMP_DIR/hygiene-stray.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen; then
    fail "verify cache hygiene stray capture (unexpected success)"
else
    pass "verify cache hygiene stray capture"
fi
assert_contains "verify cache hygiene stray message" "$TMP_DIR/hygiene-stray.log" "cache hygiene: raw-help.txt is a .txt help file"
rm -f "$hygiene_dir/raw-help.txt"
printf 'legacy help\n' >"$hygiene_dir/remote/add.txt"
if run_quiet "$TMP_DIR/hygiene-legacy.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen; then
    fail "verify cache hygiene legacy txt (unexpected success)"
else
    pass "verify cache hygiene legacy txt"
fi
assert_contains "verify cache hygiene legacy message" "$TMP_DIR/hygiene-legacy.log" "cache hygiene: remote/add.txt is a .txt help file"
rm -f "$hygiene_dir/remote/add.txt"
printf 'demo --help\n' >"$hygiene_dir/_root.new.txt"
expect_failure "verify cache hygiene probe leftover" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_dir" --skip-compgen
rm -f "$hygiene_dir/_root.new.txt"

hygiene_hash="$TMP_DIR/fragments-hygiene-hash"
cp -R "$FIXTURES/fragments/no-choice" "$hygiene_hash"
jq '.hash = "not-a-hash"' "$(native_path "$hygiene_hash/_root.json")" >"$TMP_DIR/hygiene-hash.tmp" && mv "$TMP_DIR/hygiene-hash.tmp" "$hygiene_hash/_root.json"
if run_quiet "$TMP_DIR/hygiene-hash.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_hash" --skip-compgen; then
    fail "verify cache hygiene invalid hash (unexpected success)"
else
    pass "verify cache hygiene invalid hash"
fi
assert_contains "verify cache hygiene hash message" "$TMP_DIR/hygiene-hash.log" "invalid hash or source.command"
jq '.source.command = "demo --help | cat"' "$(native_path "$hygiene_hash/_root.json")" >"$TMP_DIR/hygiene-hash.tmp" && mv "$TMP_DIR/hygiene-hash.tmp" "$hygiene_hash/_root.json"
jq '.hash = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"' "$(native_path "$hygiene_hash/_root.json")" >"$TMP_DIR/hygiene-hash.tmp" && mv "$TMP_DIR/hygiene-hash.tmp" "$hygiene_hash/_root.json"
if run_quiet "$TMP_DIR/hygiene-command.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$hygiene_hash" --skip-compgen; then
    fail "verify cache hygiene unsafe command (unexpected success)"
else
    pass "verify cache hygiene unsafe command"
fi
assert_contains "verify cache hygiene command message" "$TMP_DIR/hygiene-command.log" "invalid hash or source.command"

# Provenance: a child with the parent's source.command and no section is a
# positional enumeration modeled as a subcommand; source.section exempts a
# shared-help node.
provenance_dir="$TMP_DIR/fragments-provenance"
cp -R "$FIXTURES/fragments/no-choice" "$provenance_dir"
jq '.source.command = "demo --help"' "$(native_path "$provenance_dir/remote.json")" >"$TMP_DIR/provenance.tmp" && mv "$TMP_DIR/provenance.tmp" "$provenance_dir/remote.json"
if run_quiet "$TMP_DIR/provenance.log" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$provenance_dir" --skip-compgen; then
    fail "verify provenance parent command (unexpected success)"
else
    pass "verify provenance parent command"
fi
assert_contains "verify provenance message" "$TMP_DIR/provenance.log" "source.command is identical to its parent"
jq '.source.section = "remote"' "$(native_path "$provenance_dir/remote.json")" >"$TMP_DIR/provenance.tmp" && mv "$TMP_DIR/provenance.tmp" "$provenance_dir/remote.json"
check "verify provenance accepts shared help section" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$provenance_dir" --skip-compgen

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
