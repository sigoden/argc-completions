#!/usr/bin/env bash
# scripts/format-choices.sh: CHOICES formatting, cleanup and rejection cases.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# CHOICES formatting
# ---------------------------------------------------------------------------
build_choices_base
choices_base="$CHOICES_BASE"

check "format --check accepts absent CHOICES" bash "$SCRIPTS/format-choices.sh" --check "$NEW_SCRIPT"
stray_choice="$TMP_DIR/choice-stray.sh"
gawk '/^command eval / && !done { print "_choice_stray() { :; }"; print ""; done = 1 } { print }' "$NEW_SCRIPT" >"$stray_choice"
expect_failure "format rejects functions without a CHOICES block" bash "$SCRIPTS/format-choices.sh" "$stray_choice"
unformatted="$TMP_DIR/choice-unformatted.sh"
gawk '/^# <<< CHOICES$/ && !done {
        print "if [[ -n \"$ARGC_COMPLETIONS_ROOT\" && -f \"$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh\" ]]; then"
        print "    . \"$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh\""
        print "fi"
        print ""
        print "# zulu doc"
        print "_choice_zulu() {"
        print "    _helper_alpha"
        print "}"
        print ""
        print "_choice_alpha() {"
        print "    beta"
        print "}"
        print ""
        print "# doc for beta"
        print "beta() {"
        print "    _helper_alpha"
        print "}"
        print ""
        print "_helper_alpha() {"
        print "    :"
        print "}"
        print ""
        print "_choice_probe() { :; }"
        done = 1
    }
    { print }' "$choices_base" >"$unformatted"
cp "$unformatted" "$TMP_DIR/choice-unformatted.before"
expect_failure "verify rejects unformatted CHOICES" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/choice-unformatted.before" --cmd demo --skip-compgen
expect_failure "format --check detects unformatted" bash "$SCRIPTS/format-choices.sh" --check "$unformatted"
check "format --check does not write" cmp -s "$unformatted" "$TMP_DIR/choice-unformatted.before"
check "format rewrites CHOICES" bash "$SCRIPTS/format-choices.sh" "$unformatted"
cat >"$TMP_DIR/choice-expected.txt" <<'EOF'
# >>> CHOICES
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
# <<< CHOICES
EOF
sed -n '/^# >>> CHOICES$/,/^# <<< CHOICES$/p' "$unformatted" >"$TMP_DIR/choice-actual.txt"
check "format CHOICES output" diff -u "$TMP_DIR/choice-expected.txt" "$TMP_DIR/choice-actual.txt"
check "format bash syntax" bash -n "$unformatted"
check "format --check passes" bash "$SCRIPTS/format-choices.sh" --check "$unformatted"
cp "$unformatted" "$TMP_DIR/choice-formatted.txt"
quiet bash "$SCRIPTS/format-choices.sh" "$unformatted"
check "format idempotent" cmp -s "$unformatted" "$TMP_DIR/choice-formatted.txt"
check "verify formatted CHOICES" bash "$SCRIPTS/verify-completion.sh" "$unformatted" --cmd demo --skip-compgen

collision="$TMP_DIR/choice-collision.sh"
gawk '/^# <<< CHOICES$/ && !done {
        print "_choice_a() {"
        print "    foo"
        print "}"
        print ""
        print "foo() { :; }"
        print ""
        print "_foo() { :; }"
        done = 1
    }
    { print }' "$choices_base" >"$collision"
cp "$collision" "$TMP_DIR/choice-collision.before"
expect_failure "format rejects rename collision" bash "$SCRIPTS/format-choices.sh" "$collision"
check "format collision leaves file unchanged" cmp -s "$collision" "$TMP_DIR/choice-collision.before"

variable="$TMP_DIR/choice-variable.sh"
gawk '/^# <<< CHOICES$/ && !done {
        print "_choice_a() {"
        print "    local foo=1"
        print "    foo"
        print "}"
        print ""
        print "foo() { :; }"
        done = 1
    }
    { print }' "$choices_base" >"$variable"
cp "$variable" "$TMP_DIR/choice-variable.before"
expect_failure "format rejects variable collision" bash "$SCRIPTS/format-choices.sh" "$variable"
check "format variable collision leaves file unchanged" cmp -s "$variable" "$TMP_DIR/choice-variable.before"

outside="$TMP_DIR/choice-outside.sh"
gawk '/^# <<< SPEC$/ && !done { print "# @flag --outside[`foo`]"; done = 1 } { print }' "$choices_base" \
    | gawk '/^# <<< CHOICES$/ && !done { print "foo() { :; }"; done = 1 } { print }' >"$outside"
cp "$outside" "$TMP_DIR/choice-outside.before"
expect_failure "format rejects outside binding" bash "$SCRIPTS/format-choices.sh" "$outside"
check "format outside binding leaves file unchanged" cmp -s "$outside" "$TMP_DIR/choice-outside.before"

junk="$TMP_DIR/choice-junk.sh"
gawk '/^# <<< CHOICES$/ && !done {
        print "foo() { :; }"
        print "echo nope"
        done = 1
    }
    { print }' "$choices_base" >"$junk"
cp "$junk" "$TMP_DIR/choice-junk.before"
expect_failure "format rejects top-level content" bash "$SCRIPTS/format-choices.sh" "$junk"
check "format top-level content leaves file unchanged" cmp -s "$junk" "$TMP_DIR/choice-junk.before"

noblock="$TMP_DIR/choice-noblock.sh"
printf '#!/usr/bin/env bash\n' >"$noblock"
expect_failure "format rejects missing block" bash "$SCRIPTS/format-choices.sh" "$noblock"

missing="$TMP_DIR/choice-missing.sh"
sed '/^# <<< CHOICES$/d' "$choices_base" >"$missing"
cp "$missing" "$TMP_DIR/choice-missing.before"
expect_failure "format rejects missing marker" bash "$SCRIPTS/format-choices.sh" "$missing"
check "format missing marker leaves file unchanged" cmp -s "$missing" "$TMP_DIR/choice-missing.before"

argcutil="$TMP_DIR/choice-argcutil.sh"
gawk '/^# <<< CHOICES$/ && !done { print "_argc_util_foo() { :; }"; done = 1 } { print }' "$choices_base" >"$argcutil"
expect_failure "format rejects copied argc util" bash "$SCRIPTS/format-choices.sh" "$argcutil"

# A static choice function declared inside CHOICES uses a reserved prefix.
build_static_fixture
gawk '/^# <<< CHOICES$/ && !done { print "_static_probe() { :; }"; done = 1 } { print }' \
    "$STATIC_BEFORE" >"$TMP_DIR/static-reserved.sh"
expect_failure "format rejects reserved static prefix" bash "$SCRIPTS/format-choices.sh" "$TMP_DIR/static-reserved.sh"

helper_finish
