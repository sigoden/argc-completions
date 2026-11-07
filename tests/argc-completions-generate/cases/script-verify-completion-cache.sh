#!/usr/bin/env bash
# scripts/verify-completion.sh: cache hygiene, provenance, and compgen.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_new_script
build_dynamic_fixture
new_script="$NEW_SCRIPT"

# --- cache hygiene --------------------------------------------------------
# Only .json fragments are allowed: a .txt (raw capture, legacy help key, or
# probe leftover) and an invalid hash/source.command must fail.
hygiene_dir="$TMP_DIR/fragments-hygiene"
fragment_dir "$hygiene_dir"
verify_check "verify cache hygiene clean" "$new_script" --cache-dir "$hygiene_dir" --require-no-choice-fns
printf 'raw help\n' >"$hygiene_dir/raw-help.txt"
verify_rejects "verify cache hygiene stray capture" "cache hygiene: raw-help.txt is a .txt help file" \
    "$new_script" --cache-dir "$hygiene_dir"
rm -f "$hygiene_dir/raw-help.txt"
printf 'legacy help\n' >"$hygiene_dir/remote/add.txt"
verify_rejects "verify cache hygiene legacy txt" "cache hygiene: remote/add.txt is a .txt help file" \
    "$new_script" --cache-dir "$hygiene_dir"
rm -f "$hygiene_dir/remote/add.txt"
printf 'demo --help\n' >"$hygiene_dir/_root.new.txt"
verify_fails "verify cache hygiene probe leftover" "$new_script" --cache-dir "$hygiene_dir"
rm -f "$hygiene_dir/_root.new.txt"

hygiene_hash="$TMP_DIR/fragments-hygiene-hash"
fragment_dir "$hygiene_hash"
fragment_jq "$hygiene_hash/_root.json" '.hash = "not-a-hash"'
verify_rejects "verify cache hygiene invalid hash" "invalid hash or source.command" \
    "$new_script" --cache-dir "$hygiene_hash"
fragment_jq "$hygiene_hash/_root.json" '.source.command = "demo --help | cat"'
fragment_jq "$hygiene_hash/_root.json" '.hash = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"'
verify_check "verify cache hygiene accepts a shell expression" "$new_script" --cache-dir "$hygiene_hash" --require-no-choice-fns
fragment_jq "$hygiene_hash/_root.json" --arg cmd $'demo --help\ncat' '.source.command = $cmd'
verify_rejects "verify cache hygiene rejects a control character" "invalid hash or source.command" \
    "$new_script" --cache-dir "$hygiene_hash"

# --- provenance -----------------------------------------------------------
# A child with the parent's source.command and no section is a positional
# enumeration modeled as a subcommand; source.section exempts a shared-help node.
provenance_dir="$TMP_DIR/fragments-provenance"
fragment_dir "$provenance_dir"
fragment_jq "$provenance_dir/remote.json" '.source.command = "demo --help"'
verify_rejects "verify provenance parent command" "source.command is identical to its parent" \
    "$new_script" --cache-dir "$provenance_dir"
fragment_jq "$provenance_dir/remote.json" '.source.section = "remote"'
verify_check "verify provenance accepts shared help section" "$new_script" --cache-dir "$provenance_dir"

# --- compgen smoke --------------------------------------------------------
check_output "dynamic verify" "PASS  compgen choice --output" \
    env VERBOSE=1 bash "$SCRIPTS/verify-completion.sh" "$DYNAMIC_SCRIPT" \
    --cmd demo --cache-dir "$DYNAMIC_FRAGMENTS"
assert_not_contains "compgen choice label not shifted" "$CHECK_LOG" "compgen choice --output -o"

helper_finish
