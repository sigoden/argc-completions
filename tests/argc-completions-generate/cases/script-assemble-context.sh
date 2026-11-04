#!/usr/bin/env bash
# scripts/assemble.sh: context preservation, SPEC dump, regeneration.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# assemble.sh: context preservation and exact block
# ---------------------------------------------------------------------------
with_script="$TMP_DIR/demo-with.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" \
    --context "$FIXTURES/contexts/context.sh" --stdout >"$with_script"
check "assemble with context syntax" bash -n "$with_script"

assert_contains "assemble with context prompt" "$with_script" '# - prompt for demo remote'
assert_contains "assemble with context choice fn" "$with_script" '--foo[?`_choice_foo`]'
assert_contains "assemble with context function" "$with_script" '_choice_foo() {'
# A fragment may store only the bare function name; the rendered marker is
# assembly output.
marker_dir="$TMP_DIR/fragments-marker"
mkdir -p "$marker_dir"
cp -R "$FIXTURES/fragments/with-choice/." "$marker_dir/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = "?_choice_foo"' \
    "$(native_path "$marker_dir/remote.json")" >"$marker_dir/remote.tmp" && mv "$marker_dir/remote.tmp" "$marker_dir/remote.json"
expect_failure "assemble rejects a prefixed choice_fn" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$marker_dir" \
    --context "$FIXTURES/contexts/context.sh" --stdout
check "verify with context and fragments" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --cache-dir "$FIXTURES/fragments/with-choice"
# Exact SPEC dump
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" --dump-spec >"$TMP_DIR/dump.txt"
gawk '/^# >>> SPEC$/ { inside = 1; next } /^# <<< SPEC$/ { inside = 0 } inside { print }' "$with_script" >"$TMP_DIR/actual-block.txt"
check "dump SPEC matches block" diff -u "$TMP_DIR/dump.txt" "$TMP_DIR/actual-block.txt"

# Regeneration preserves prompt/CHOICES and updates SPEC.
mkdir -p "$TMP_DIR/fragments-regen"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-regen/"
cp "$with_script" "$TMP_DIR/regen.sh"
sed -n '/^# >>> HINTS$/,/^# <<< HINTS$/p' "$with_script" >"$TMP_DIR/prompt-before.txt"
sed -n '/^# >>> CHOICES$/,/^# <<< CHOICES$/p' "$with_script" >"$TMP_DIR/choice-before.txt"
jq '.items += [{"kind": "flag", "names": ["--new"], "repeatable": false, "description": "New flag"}]' \
    "$(native_path "$TMP_DIR/fragments-regen/_root.json")" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble refuses overwrite" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --force
assert_contains "regenerate new flag" "$TMP_DIR/regen.sh" '--new'
sed -n '/^# >>> HINTS$/,/^# <<< HINTS$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/prompt-after.txt"
sed -n '/^# >>> CHOICES$/,/^# <<< CHOICES$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/choice-after.txt"
check "regenerate preserves prompt" diff -u "$TMP_DIR/prompt-before.txt" "$TMP_DIR/prompt-after.txt"
check "regenerate preserves CHOICES" diff -u "$TMP_DIR/choice-before.txt" "$TMP_DIR/choice-after.txt"
check "regenerate verify" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/regen.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-regen" --skip-compgen
check "assemble --check unchanged" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check

# Change a fragment and ensure --check detects it.
jq '.items += [{"kind": "flag", "names": ["--another"], "repeatable": false, "description": "Another"}]' \
    "$(native_path "$TMP_DIR/fragments-regen/_root.json")" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble --check detects change" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check

helper_finish
