#!/usr/bin/env bash
# scripts/verify-completion.sh: cache hygiene, provenance, and compgen.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_dynamic_fixture
new_script="$NEW_SCRIPT"

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
