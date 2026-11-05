#!/usr/bin/env bash
# scripts/assemble.sh: context preservation, SPEC dump, regeneration.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# --- context preservation -------------------------------------------------
build_with_script
with_script="$WITH_SCRIPT"
check "assemble with context syntax" bash -n "$with_script"
assert_contains "assemble with context prompt" "$with_script" '# - prompt for demo remote'
assert_contains "assemble with context choice fn" "$with_script" '--foo[?`_choice_foo`]'
assert_contains "assemble with context function" "$with_script" '_choice_foo() {'

# A fragment may store only the bare function name; the rendered marker is
# assembly output.
marker_fragments="$TMP_DIR/fragments-marker"
fragment_dir "$marker_fragments" "$FIXTURES/fragments/with-choice"
fragment_jq "$marker_fragments/remote.json" '(.items[] | select(.names | index("--foo")) | .choice_fn) = "?_choice_foo"'
assemble_rejects "assemble rejects a prefixed choice_fn" "$marker_fragments" \
    --context "$FIXTURES/contexts/context.sh"
check "verify with context and fragments" bash "$SCRIPTS/verify-completion.sh" "$with_script" \
    --cmd demo --cache-dir "$FIXTURES/fragments/with-choice"

# --dump-spec must be the SPEC block of the assembled script, byte for byte.
assemble_to "$TMP_DIR/dump.txt" demo --cache-dir "$FIXTURES/fragments/with-choice" --dump-spec
block_body "$with_script" SPEC >"$TMP_DIR/dump-block.txt"
assert_same "dump SPEC matches block" "$TMP_DIR/dump.txt" "$TMP_DIR/dump-block.txt"

# --- regeneration ---------------------------------------------------------
# Regeneration updates SPEC and preserves HINTS and CHOICES.
build_regen_fixture
regen_fragments="$REGEN_FRAGMENTS"
regen_script="$REGEN_SCRIPT"
block_body "$regen_script" HINTS >"$TMP_DIR/prompt-before.txt"
block_body "$regen_script" CHOICES >"$TMP_DIR/choice-before.txt"
fragment_jq "$regen_fragments/_root.json" '.items += [{"kind": "flag", "names": ["--new"], "repeatable": false, "description": "New flag"}]'
expect_failure "assemble refuses overwrite" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$regen_fragments" --output "$regen_script"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$regen_fragments" --output "$regen_script" --force
assert_contains "regenerate new flag" "$regen_script" '--new'
block_body "$regen_script" HINTS >"$TMP_DIR/prompt-after.txt"
block_body "$regen_script" CHOICES >"$TMP_DIR/choice-after.txt"
assert_same "regenerate preserves prompt" "$TMP_DIR/prompt-before.txt" "$TMP_DIR/prompt-after.txt"
assert_same "regenerate preserves CHOICES" "$TMP_DIR/choice-before.txt" "$TMP_DIR/choice-after.txt"
verify_check "regenerate verify" "$regen_script" --cache-dir "$regen_fragments"
check "assemble --check unchanged" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$regen_fragments" --output "$regen_script" --check

# A changed fragment makes --check report the drift.
fragment_jq "$regen_fragments/_root.json" '.items += [{"kind": "flag", "names": ["--another"], "repeatable": false, "description": "Another"}]'
expect_failure "assemble --check detects change" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$regen_fragments" --output "$regen_script" --check

helper_finish
