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

# --- shared helpers: block facts, fragment walk, record accessors --------------

blocks_facts="$TMP_DIR/blocks-facts.sh"
printf '#!/usr/bin/env bash\n# >>> SPEC\n# @cmd demo\n# <<< SPEC\n\n# >>> HINTS\n# %%%%demo\n# <<< HINTS\n\n# >>> STATIC\n_static_x() { :; }\n# <<< STATIC\n\n# >>> CHOICES\n_choice_x() { :; }\n# <<< CHOICES\ncommand eval "$(argc --argc-eval "$0" "$@")"\n' \
    >"$blocks_facts"
check "block_facts reports layout" \
    bash -c 'source "$1"; block_facts "$2" >"$3"' _ "$SCRIPTS/lib.sh" "$blocks_facts" "$TMP_DIR/facts.txt"
assert_contains "block_facts marks the layout" "$TMP_DIR/facts.txt" 'layout=marked'
assert_contains "block_facts SPEC region" "$TMP_DIR/facts.txt" 'SPEC 1 2 4 1'
assert_contains "block_facts HINTS region" "$TMP_DIR/facts.txt" 'HINTS 1 6 8 1'
assert_contains "block_facts STATIC region" "$TMP_DIR/facts.txt" 'STATIC 1 10 12 1'
assert_contains "block_facts CHOICES region" "$TMP_DIR/facts.txt" 'CHOICES 1 14 16 1'
assert_contains "block_facts first line" "$TMP_DIR/facts.txt" 'first=2'
assert_contains "block_facts last line" "$TMP_DIR/facts.txt" 'last=16'
check "block_facts treats a missing file as unmarked" \
    bash -c 'source "$1"; block_facts "$2" | head -n 1 | grep -qx layout=unmarked' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/no-such-blocks-facts.sh"
check "block_layout_ok accepts the supported layout" \
    bash -c 'source "$1"; block_layout_ok "$2"' _ "$SCRIPTS/lib.sh" "$blocks_facts"
printf '#!/usr/bin/env bash\n# >>> HINTS\n# <<< HINTS\n# >>> SPEC\n# <<< SPEC\n' >"$TMP_DIR/blocks-order.sh"
expect_failure "block_layout_ok rejects out-of-order blocks" \
    bash -c 'source "$1"; block_layout_ok "$2"' _ "$SCRIPTS/lib.sh" "$TMP_DIR/blocks-order.sh"
printf '#!/usr/bin/env bash\n# >>> SPEC\n# <<< SPEC\n# >>> SPEC\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n' >"$TMP_DIR/blocks-dup.sh"
expect_failure "block_layout_ok rejects a duplicated block" \
    bash -c 'source "$1"; block_layout_ok "$2"' _ "$SCRIPTS/lib.sh" "$TMP_DIR/blocks-dup.sh"
expect_failure "block_layout_ok rejects an unmarked script" \
    bash -c 'source "$1"; block_layout_ok "$2"' _ "$SCRIPTS/lib.sh" "$TMP_DIR/no-such-blocks-facts.sh"

walk_fixtures="$FIXTURES/fragments/with-choice"
check "fragment_walk lists every fragment" \
    bash -c 'source "$1"; fragment_walk "$2" demo | cut -f1 >"$3"' _ \
    "$SCRIPTS/lib.sh" "$walk_fixtures" "$TMP_DIR/walk.txt"
check "fragment_walk keys the root fragment" grep -qx 'demo' "$TMP_DIR/walk.txt"
check "fragment_walk decodes nested paths" grep -qx 'demo|remote|add' "$TMP_DIR/walk.txt"
check "fragment_walk keeps relative paths" \
    bash -c 'source "$1"; fragment_walk "$2" demo | cut -f2 | grep -qx remote/add' _ \
    "$SCRIPTS/lib.sh" "$walk_fixtures"
check "fragment_key_for_rel decodes a path" \
    test "$(bash -c 'source "$1"; fragment_key_for_rel demo remote/add' _ "$SCRIPTS/lib.sh")" = 'demo|remote|add'
check "fragment_key_for_rel maps the root fragment" \
    test "$(bash -c 'source "$1"; fragment_key_for_rel demo _root.json' _ "$SCRIPTS/lib.sh")" = 'demo'
check "fragment_child_file resolves a root child" \
    test "$(bash -c 'source "$1"; fragment_child_file /cache /cache/_root.json remote' _ "$SCRIPTS/lib.sh")" = '/cache/remote.json'
check "fragment_child_file resolves a nested child" \
    test "$(bash -c 'source "$1"; fragment_child_file /cache /cache/remote.json add' _ "$SCRIPTS/lib.sh")" = '/cache/remote/add.json'

records="$(bash -c 'source "$1"; extract_fragment_records demo "$2"' _ "$SCRIPTS/lib.sh" "$walk_fixtures/_root.json")"
check "records_provenance reads the X record" \
    test "$(bash -c 'source "$1"; records_provenance "$2"' _ "$SCRIPTS/lib.sh" "$records")" = \
    $'help\taaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\tdemo --help\t'
check "records_provenance fails without an X record" \
    bash -c 'source "$1"; ! records_provenance "D$(printf "\x1f")desc"' _ "$SCRIPTS/lib.sh"
check "records_declared_subcommands keeps S records" \
    test "$(bash -c 'source "$1"; records_declared_subcommands "$2" | wc -l' _ "$SCRIPTS/lib.sh" "$records")" = 2

json_probe="$TMP_DIR/json-probe.sh"
cat >"$json_probe" <<'PROBE'
source "$1"
json_string_array a 'b"c' 'd\e'
PROBE
check "json_string_array escapes values" \
    test "$(bash "$json_probe" "$SCRIPTS/lib.sh")" = '["a","b\"c","d\\e"]'
check "json_string_array renders an empty array" \
    test "$(bash -c 'source "$1"; json_string_array' _ "$SCRIPTS/lib.sh")" = '[]'

check "trim_leading_blank_edges keeps trailing blanks" \
    bash -c 'source "$1"; printf "\n \nx\n\n" >"$2"; trim_leading_blank_edges "$2" "$3"; test "$(od -An -c "$3" | tr -s " ")" = " x \\n \\n"' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/trim-lead-in.txt" "$TMP_DIR/trim-lead-out.txt"
check "trim_trailing_blank_edges keeps leading blanks" \
    bash -c 'source "$1"; printf "\n \nx\n\n" >"$2"; trim_trailing_blank_edges "$2" "$3"; test "$(od -An -c "$3" | tr -s " ")" = " \\n \\n x \\n"' _ \
    "$SCRIPTS/lib.sh" "$TMP_DIR/trim-trail-in.txt" "$TMP_DIR/trim-trail-out.txt"

check "path_args_valid accepts a root and subcommand" \
    bash -c 'source "$1"; path_args_valid demo remote' _ "$SCRIPTS/lib.sh"
expect_failure "path_args_valid rejects dot-dot" \
    bash -c 'source "$1"; path_args_valid demo ..' _ "$SCRIPTS/lib.sh"
expect_failure "path_args_valid rejects an empty component" \
    bash -c 'source "$1"; path_args_valid demo ""' _ "$SCRIPTS/lib.sh"
check "fragment_cache_dir defaults to the repo cache" \
    test "$(bash -c 'source "$1"; fragment_cache_dir demo' _ "$SCRIPTS/lib.sh")" = "$ROOT_DIR/cache/compile/demo"
check "fragment_cache_dir honours an override" \
    test "$(bash -c 'source "$1"; fragment_cache_dir demo /tmp/cache' _ "$SCRIPTS/lib.sh")" = '/tmp/cache'
expect_failure "cli_require_value rejects a missing value" \
    bash -c 'source "$1"; cli_require_value --output 1' _ "$SCRIPTS/lib.sh"
check "cli_require_value accepts a value" \
    bash -c 'source "$1"; cli_require_value --output 2' _ "$SCRIPTS/lib.sh"

helper_finish
