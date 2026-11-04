#!/usr/bin/env bash
# scripts/lib.sh: help canonicalization, block markers, file helpers.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# A colon subcommand maps to a Windows-safe cache name on Windows and keeps its
# existing name elsewhere.
case "$(uname -s 2>/dev/null || true)" in
    CYGWIN* | MINGW* | MSYS*) expected_fragment_name='profile%3Amem' ;;
    *) expected_fragment_name='profile:mem' ;;
esac
check "fragment path handles a colon" \
    test "$(bash -c 'source "$1"; fragment_file_path /cache demo "profile:mem"' _ "$SCRIPTS/lib.sh")" = \
    "/cache/$expected_fragment_name.json"
if has_command cygpath; then
    check "absolute_path normalizes a drive path" \
        test "$(bash -c 'source "$1"; absolute_path "C:/x"' _ "$SCRIPTS/lib.sh")" = '/c/x'
fi

# canonicalize_help_file must reject a non-.txt output name (compile contract).
guard_in="$TMP_DIR/help-guard-in.txt"
printf 'demo --help\n' >"$guard_in"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out" ) >/dev/null 2>&1; then
    fail "canonicalize rejects non-txt output (unexpected success)"
else
    pass "canonicalize rejects non-txt output"
fi
check "canonicalize guard leaves non-txt output absent" test ! -e "$TMP_DIR/help-guard-out"
if ( source "$SCRIPTS/lib.sh"; canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out.txt" ) >/dev/null 2>&1; then
    pass "canonicalize accepts txt output"
else
    fail "canonicalize accepts txt output"
fi
check "canonicalize guard writes txt output" test -s "$TMP_DIR/help-guard-out.txt"

# help_files_equal is the compile contract's shared-help comparison (0 = same).
printf 'a\r\nb  \n\n' >"$TMP_DIR/help-old.txt"
printf 'a\nb\n' >"$TMP_DIR/help-new.txt"
printf 'a\nc\n' >"$TMP_DIR/help-diff.txt"
check "help_files_equal same after canonicalization" \
    bash -c 'source "$1"; help_files_equal "$2" "$3"' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-new.txt"
expect_failure "help_files_equal different" \
    bash -c 'source "$1"; help_files_equal "$2" "$3"' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/help-old.txt" "$TMP_DIR/help-diff.txt"

# A help program that probes /dev/tty (broot reads the terminal size there)
# must not see the caller's terminal: otherwise the capture depends on the
# terminal width and a fragment hash changes with the shell that runs it.
#
# script(1) takes the command as trailing operands on macOS/BSD and through -c
# on util-linux, so probe both forms and keep the one this host accepts.
script_pty_form=""
if has_command script; then
    if script -q /dev/null true >/dev/null 2>&1; then
        script_pty_form=bsd
    elif script -qec true /dev/null >/dev/null 2>&1; then
        script_pty_form=gnu
    fi
fi

# Run one shell snippet under a pseudo-terminal, discarding the typescript.
script_pty() {
    if [[ "$script_pty_form" == "bsd" ]]; then
        script -q /dev/null bash -c "$1"
    else
        script -qec "$1" /dev/null
    fi
}

if [[ -n "$script_pty_form" ]]; then
    mkdir -p "$TMP_DIR/bin"
    cat >"$TMP_DIR/bin/tty-probe" <<'PROBE'
#!/usr/bin/env bash
if ( : </dev/tty ) 2>/dev/null; then printf 'tty=yes\n'; else printf 'tty=no\n'; fi
PROBE
    chmod +x "$TMP_DIR/bin/tty-probe"
    cat >"$TMP_DIR/pty-capture.sh" <<PTY
#!/usr/bin/env bash
source "$SCRIPTS/lib.sh"
capture_help "$TMP_DIR/pty-probe.txt" 5 tty-probe
PTY
    ( export PATH="$TMP_DIR/bin:$PATH"; quiet script_pty "bash '$TMP_DIR/pty-capture.sh'" )
    check "capture_help hides the caller's terminal" \
        test "$(cat "$TMP_DIR/pty-probe.txt" 2>/dev/null)" = tty=no
fi

# Block marker helpers are the single source of the # >>> / # <<< contract.
blocks_file="$TMP_DIR/blocks.sh"
printf '# >>> SPEC\nbody\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n# >>> SPEC\n# <<< SPEC\n' >"$blocks_file"
check "count_marker counts openings" \
    test "$( source "$SCRIPTS/lib.sh"; count_marker "$blocks_file" '>>>' 'SPEC' )" = 2
check "count_marker counts closings" \
    test "$( source "$SCRIPTS/lib.sh"; count_marker "$blocks_file" '<<<' 'HINTS' )" = 1
check "count_marker absent file counts zero" \
    test "$( source "$SCRIPTS/lib.sh"; count_marker "$TMP_DIR/no-such-blocks.sh" '>>>' 'SPEC' )" = 0
check "block_line finds first opening" \
    test "$( source "$SCRIPTS/lib.sh"; block_line "$blocks_file" '>>>' 'SPEC' )" = 1
check "block_line finds closing" \
    test "$( source "$SCRIPTS/lib.sh"; block_line "$blocks_file" '<<<' 'HINTS' )" = 5
check "block_line absent marker is empty" \
    test -z "$( source "$SCRIPTS/lib.sh"; block_line "$blocks_file" '>>>' 'STATIC' )"
# extract_block: 0 = extracted, 1 = no such block, 2 = malformed markers.
clean_file="$TMP_DIR/blocks-clean.sh"
printf '# >>> SPEC\nbody\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n' >"$clean_file"
check "extract_block extracts body" \
    bash -c 'source "$1"; extract_block "$2" SPEC "$3"' _ \
    "$SCRIPTS/lib.sh" "$clean_file" "$TMP_DIR/body.txt"
check "extract_block body content" test "$(cat "$TMP_DIR/body.txt")" = body
check "extract_block absent returns 1" test "$(
    bash -c 'source "$1"; if extract_block "$2" STATIC "$3"; then echo 0; else echo $?; fi' _ \
        "$SCRIPTS/lib.sh" "$clean_file" "$TMP_DIR/absent.txt"
)" = 1
check "extract_block duplicated returns 2" test "$(
    bash -c 'source "$1"; if extract_block "$2" SPEC "$3"; then echo 0; else echo $?; fi' _ \
        "$SCRIPTS/lib.sh" "$blocks_file" "$TMP_DIR/dup.txt"
)" = 2
check "extract_block leaves dest untouched when absent" test ! -e "$TMP_DIR/absent.txt"
check "extract_block empty body" \
    bash -c 'source "$1"; extract_block "$2" HINTS "$3" && test ! -s "$3"' _ \
    "$SCRIPTS/lib.sh" "$clean_file" "$TMP_DIR/empty-body.txt"

# File helpers: edge trimming and mode-preserving atomic replacement.
printf '\n  \nkeep me\n\n\n' >"$TMP_DIR/trim-in.txt"
check "trim_blank_edges trims both edges" \
    bash -c 'source "$1"; trim_blank_edges "$2" "$3" && test "$(cat "$3")" = "keep me"' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/trim-in.txt" "$TMP_DIR/trim-out.txt"
check "trim_blank_edges keeps inner blanks" \
    bash -c 'source "$1"; printf "a\n\n b \n\n" >"$2"; trim_blank_edges "$2" "$3"; test "$(wc -l <"$3")" -eq 3' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/trim2-in.txt" "$TMP_DIR/trim2-out.txt"
auto_target="$TMP_DIR/auto.json"
printf '{}\n' >"$auto_target"
chmod 644 "$auto_target"
check "write_file_atomic writes content" \
    bash -c 'source "$1"; write_file_atomic "$2" "{\"a\":1}" && test "$(cat "$2")" = "{\"a\":1}"' _ \
    "$SCRIPTS/lib.sh" "$auto_target"
if stat -c '%a' "$auto_target" >/dev/null 2>&1; then
    check "write_file_atomic keeps mode" test "$(stat -c '%a' "$auto_target")" = 644
else
    check "write_file_atomic keeps mode" \
        test "$(stat -f '%Lp' "$auto_target")" = 644
fi
install_src="$TMP_DIR/install-src"
printf 'new\n' >"$install_src"
check "install_atomic replaces target" \
    bash -c 'source "$1"; install_atomic "$2" "$3" && test "$(cat "$3")" = new && test ! -e "$2"' _ \
    "$SCRIPTS/lib.sh" "$install_src" "$auto_target"

helper_finish
