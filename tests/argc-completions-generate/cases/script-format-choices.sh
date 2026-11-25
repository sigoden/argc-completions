#!/usr/bin/env bash
# scripts/format-choices.sh: CHOICES formatting, cleanup and rejection cases.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_choices_base
choices_base="$CHOICES_BASE"

check "format --check accepts absent CHOICES" bash "$SCRIPTS/format-choices.sh" --check "$NEW_SCRIPT"

stray_choice="$TMP_DIR/choice-stray.sh"
insert_before "$NEW_SCRIPT" "$stray_choice" "$COMMAND_EVAL_LINE" $'_choice_stray() { :; }\n'
expect_failure "format rejects functions without a CHOICES block" \
    bash "$SCRIPTS/format-choices.sh" "$stray_choice"

# --- the block the formatter must produce --------------------------------
unformatted="$TMP_DIR/choice-unformatted.sh"
block_append "$choices_base" "$unformatted" CHOICES $'if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then\n    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"\nfi\n\n# zulu doc\n_choice_zulu() {\n    _helper_alpha\n}\n\n_choice_alpha() {\n    beta\n}\n\n# doc for beta\nbeta() {\n    _helper_alpha\n}\n\n_helper_alpha() {\n    :\n}\n\n_choice_probe() { :; }'
cp "$unformatted" "$TMP_DIR/choice-unformatted.before"
verify_fails "verify rejects unformatted CHOICES" "$unformatted"
expect_failure "format --check detects unformatted" bash "$SCRIPTS/format-choices.sh" --check "$unformatted"
assert_same "format --check does not write" "$unformatted" "$TMP_DIR/choice-unformatted.before"
check "format rewrites CHOICES" bash "$SCRIPTS/format-choices.sh" "$unformatted"
check_block "format CHOICES output" "$unformatted" CHOICES <<'CHOICES'
if [[ -n "$ARGC_COMPLETIONS_ROOT" && -f "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh" ]]; then
    . "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"
fi

_choice_alpha() {
    _helper_beta
}

_choice_probe() { :; }

# zulu doc
_choice_zulu() {
    _helper_alpha
}

_helper_alpha() {
    :
}

# doc for _helper_beta
_helper_beta() {
    _helper_alpha
}
CHOICES
check "format bash syntax" bash -n "$unformatted"
check "format --check passes" bash "$SCRIPTS/format-choices.sh" --check "$unformatted"
cp "$unformatted" "$TMP_DIR/choice-formatted.txt"
quiet bash "$SCRIPTS/format-choices.sh" "$unformatted"
assert_same "format idempotent" "$unformatted" "$TMP_DIR/choice-formatted.txt"
verify_check "verify formatted CHOICES" "$unformatted"

# Syntax validation also applies when formatting would leave the file unchanged.
malformed="$TMP_DIR/choice-malformed.sh"
block_append "$choices_base" "$malformed" CHOICES '_choice_probe() { :; }'
quiet bash "$SCRIPTS/format-choices.sh" "$malformed"
insert_before "$malformed" "$TMP_DIR/choice-malformed.tmp" "$COMMAND_EVAL_LINE" 'if'
mv "$TMP_DIR/choice-malformed.tmp" "$malformed"
expect_failure "format --check rejects syntax error in unchanged output" \
    bash "$SCRIPTS/format-choices.sh" --check "$malformed"

# --- rejection paths -----------------------------------------------------
# A local name that would collide with the renamed helper keeps the file as is.
collision="$TMP_DIR/choice-collision.sh"
block_append "$choices_base" "$collision" CHOICES $'_choice_a() {\n    foo\n}\n\nfoo() { :; }\n\n_foo() { :; }'
expect_failure_unchanged "format rejects rename collision" "$collision" \
    bash "$SCRIPTS/format-choices.sh" "$collision"

variable="$TMP_DIR/choice-variable.sh"
block_append "$choices_base" "$variable" CHOICES $'_choice_a() {\n    local foo=1\n    foo\n}\n\nfoo() { :; }'
expect_failure_unchanged "format rejects variable collision" "$variable" \
    bash "$SCRIPTS/format-choices.sh" "$variable"

outside="$TMP_DIR/choice-outside.sh"
insert_before "$choices_base" "$TMP_DIR/choice-outside-step.sh" '# <<< SPEC' '# @flag --outside[`foo`]'
block_append "$TMP_DIR/choice-outside-step.sh" "$outside" CHOICES 'foo() { :; }'
expect_failure_unchanged "format rejects outside binding" "$outside" \
    bash "$SCRIPTS/format-choices.sh" "$outside"

junk="$TMP_DIR/choice-junk.sh"
block_append "$choices_base" "$junk" CHOICES $'foo() { :; }\necho nope'
expect_failure_unchanged "format rejects top-level content" "$junk" \
    bash "$SCRIPTS/format-choices.sh" "$junk"

noblock="$TMP_DIR/choice-noblock.sh"
printf '#!/usr/bin/env bash\n' >"$noblock"
expect_failure "format rejects missing block" bash "$SCRIPTS/format-choices.sh" "$noblock"

missing="$TMP_DIR/choice-missing.sh"
sed '/^# <<< CHOICES$/d' "$choices_base" >"$missing"
expect_failure_unchanged "format rejects missing marker" "$missing" \
    bash "$SCRIPTS/format-choices.sh" "$missing"

argcutil="$TMP_DIR/choice-argcutil.sh"
block_append "$choices_base" "$argcutil" CHOICES '_argc_util_foo() { :; }'
expect_failure "format rejects copied argc util" bash "$SCRIPTS/format-choices.sh" "$argcutil"

# A static choice function declared inside CHOICES uses a reserved prefix.
build_static_fixture
block_append "$STATIC_BEFORE" "$TMP_DIR/static-reserved.sh" CHOICES '_static_probe() { :; }'
expect_failure "format rejects reserved static prefix" \
    bash "$SCRIPTS/format-choices.sh" "$TMP_DIR/static-reserved.sh"

helper_finish
