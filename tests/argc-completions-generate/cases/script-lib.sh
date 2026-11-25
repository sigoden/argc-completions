#!/usr/bin/env bash
# scripts/lib.sh: help canonicalization, fragment records, block markers, file
# helpers, and the cli/path guards every skill script shares.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# extract_status [<args...>]: extract_block's exit status, printed. The call runs
# through skill_fn so lib.sh's options and globals stay out of this case file.
extract_status() {
    local rc=0
    skill_fn extract_block "$@" || rc=$?
    printf '%s\n' "$rc"
}

# --- command paths --------------------------------------------------------
# A colon subcommand maps to a Windows-safe cache name on Windows and keeps its
# existing name elsewhere.
case "$(uname -s 2>/dev/null || true)" in
    CYGWIN* | MINGW* | MSYS*) expected_fragment_name='profile%3Amem' ;;
    *) expected_fragment_name='profile:mem' ;;
esac
check "fragment path handles a colon" \
    test "$(skill_fn fragment_file_path /cache demo "profile:mem")" = "/cache/$expected_fragment_name.json"
if has_command cygpath; then
    check "absolute_path normalizes a drive path" \
        test "$(skill_fn absolute_path "C:/x")" = '/c/x'
fi

# --- completion bridge detection -------------------------------------------
check "bridge name from a copied template" \
    test "$(skill_fn completion_bridge_name "$ROOT_DIR/bridges/cobra.sh")" = cobra
printf '#!/usr/bin/env bash\n# @arg words\n_choice_bridge_fake() { :; }\n' >"$TMP_DIR/plain.sh"
check "no bridge name without a SPEC binding" \
    test -z "$(skill_fn completion_bridge_name "$TMP_DIR/plain.sh")"

# --- help canonicalization ------------------------------------------------
# canonicalize_help_file must reject a non-.txt output name (compile contract).
guard_in="$TMP_DIR/help-guard-in.txt"
printf 'demo --help\n' >"$guard_in"
expect_failure "canonicalize rejects non-txt output" \
    skill_fn canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out"
check "canonicalize guard leaves non-txt output absent" test ! -e "$TMP_DIR/help-guard-out"
check "canonicalize accepts txt output" \
    skill_fn canonicalize_help_file "$guard_in" "$TMP_DIR/help-guard-out.txt"
check "canonicalize guard writes txt output" test -s "$TMP_DIR/help-guard-out.txt"

# help_files_equal is the compile contract's shared-help comparison (0 = same).
printf 'a\r\nb  \n\n' >"$TMP_DIR/help-old.txt"
printf 'a\nb\n' >"$TMP_DIR/help-new.txt"
printf 'a\nc\n' >"$TMP_DIR/help-diff.txt"
check "help_files_equal same after canonicalization" \
    skill_fn help_files_equal "$TMP_DIR/help-old.txt" "$TMP_DIR/help-new.txt"
expect_failure "help_files_equal different" \
    skill_fn help_files_equal "$TMP_DIR/help-old.txt" "$TMP_DIR/help-diff.txt"

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
    pty_probe=""
    [[ -f "$TMP_DIR/pty-probe.txt" ]] && pty_probe="$(<"$TMP_DIR/pty-probe.txt")"
    check "capture_help hides the caller's terminal" test "$pty_probe" = tty=no
fi

# --- source.command validation and execution ------------------------------
# A simple token string keeps the argv path; anything else is a shell
# expression. Control characters are rejected before execution.
source_ok() {
    skill_fn source_command_ok "$1"
}

for expr in 'foo --help' 'foo --help | head' 'foo; bar' 'help cd' \
    'foo --help 2>/dev/null' 'foo --help && bar' 'foo --help || man foo' \
    "foo --help | sed 's/^/x/'" 'LANG=C foo --help'; do
    check "source_command_ok accepts: $expr" source_ok "$expr"
done
for expr in '' '   ' $'a\tb' $'a\nb' $'a\rb' $'a\x1fb'; do
    expect_failure "source_command_ok rejects: $(printf %q "$expr")" source_ok "$expr"
done
check "source_command_simple accepts a token string" skill_fn source_command_simple 'foo --help'
expect_failure "source_command_simple rejects a pipe" skill_fn source_command_simple 'foo --help | cat'
expect_failure "source_command_simple rejects a quote" skill_fn source_command_simple "foo 'bar'"

# A fixture command lets the argv and shell paths share one observable target.
mkdir -p "$TMP_DIR/bin"
cat >"$TMP_DIR/bin/capture-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: capture-demo [OPTIONS]\n'
DEMO
chmod +x "$TMP_DIR/bin/capture-demo"

capture_run() {
    local out="$1" expr="$2" rc=0
    ( export PATH="$TMP_DIR/bin:$PATH"; skill_fn capture_source_command "$out" 5 "$expr" ) || rc=$?
    printf '%s\n' "$rc"
}

capture_out="$TMP_DIR/capture-simple.txt"
check "capture_source_command simple status" test "$(capture_run "$capture_out" 'capture-demo --help')" = 0
check "capture_source_command simple output" test "$(<"$capture_out")" = 'Usage: capture-demo [OPTIONS]'
capture_out="$TMP_DIR/capture-pipe.txt"
check "capture_source_command pipe status" test "$(capture_run "$capture_out" 'capture-demo --help | sed s/^/x/')" = 0
check "capture_source_command pipe output" test "$(<"$capture_out")" = 'xUsage: capture-demo [OPTIONS]'
capture_out="$TMP_DIR/capture-semi.txt"
check "capture_source_command semicolon status" test "$(capture_run "$capture_out" 'false; capture-demo --help')" = 0
check "capture_source_command semicolon output" test "$(<"$capture_out")" = 'Usage: capture-demo [OPTIONS]'
capture_out="$TMP_DIR/capture-help.txt"
check "capture_source_command help builtin status" test "$(capture_run "$capture_out" 'help cd')" = 0
check "capture_source_command help builtin output" grep -q 'cd:' "$capture_out"
capture_out="$TMP_DIR/capture-invalid.txt"
check "capture_source_command invalid status" test "$(capture_run "$capture_out" $'capture-demo --help\n')" = 2
check "capture_source_command invalid writes no output" test ! -s "$capture_out"
capture_out="$TMP_DIR/capture-fail.txt"
check "capture_source_command failure status" test "$(capture_run "$capture_out" 'false')" = 1
capture_out="$TMP_DIR/capture-head.txt"
check "capture_source_command head status" test "$(capture_run "$capture_out" 'capture-demo --help | head -n 100')" = 0

# BASH_ENV is cleared for shell expressions, so a user startup file cannot
# inject output into the capture.
printf "printf 'poison\\n'\n" >"$TMP_DIR/bash-env.sh"
capture_out="$TMP_DIR/capture-bashenv.txt"
( export BASH_ENV="$TMP_DIR/bash-env.sh"; export PATH="$TMP_DIR/bin:$PATH"; skill_fn capture_source_command "$capture_out" 5 "printf 'ok'" )
check "capture_source_command ignores BASH_ENV" test "$(<"$capture_out")" = ok

# --- man NAME summary -----------------------------------------------------
# man_name_summary is the root-description fallback: it reads only the NAME
# section, joins wrapped lines, and cuts the " - "/" -- " name separator.
cat >"$TMP_DIR/bin/man" <<'MAN'
#!/usr/bin/env bash
case "${1:-}" in
    demo)
        printf 'DEMO(1)\n\nNAME\n       demo - A demo tool for testing\n\nSYNOPSIS\n       demo [options]\n'
        ;;
    alias)
        printf 'NAME\n       demo, dm -- An aliased demo\n\nSYNOPSIS\n'
        ;;
    wrap)
        printf 'NAME\n       wrap - A wrapped\n       description\n\nSYNOPSIS\n'
        ;;
    bare)
        printf 'NAME\n       bare\n\nSYNOPSIS\n'
        ;;
    noname)
        printf 'SYNOPSIS\n       noname\n'
        ;;
    *)
        exit 1
        ;;
esac
MAN
chmod +x "$TMP_DIR/bin/man"

man_summary() {
    local name="$1" rc=0 out
    out="$(PATH="$TMP_DIR/bin:$PATH" skill_fn man_name_summary "$name")" || rc=$?
    printf '%s:%s\n' "$rc" "$out"
}

check "man_name_summary reads the NAME summary" test "$(man_summary demo)" = '0:A demo tool for testing'
check "man_name_summary handles alias and -- separators" test "$(man_summary alias)" = '0:An aliased demo'
check "man_name_summary joins wrapped NAME lines" test "$(man_summary wrap)" = '0:A wrapped description'
check "man_name_summary rejects a bare NAME entry" test "$(man_summary bare)" = '1:'
check "man_name_summary rejects a page without NAME" test "$(man_summary noname)" = '1:'
check "man_name_summary rejects a man failure" test "$(man_summary missing)" = '1:'
check "man_name_summary rejects an invalid name" test "$(man_summary '../x')" = '2:'
check "man_name_summary rejects a leading dash" test "$(man_summary '-k')" = '2:'
check "man_name_summary rejects dot" test "$(man_summary '.')" = '2:'

# --- block markers --------------------------------------------------------
# The helpers are the single source of the # >>> / # <<< contract.
blocks_file="$TMP_DIR/blocks.sh"
printf '# >>> SPEC\nbody\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n# >>> SPEC\n# <<< SPEC\n' >"$blocks_file"
check "count_marker counts openings" test "$(skill_fn count_marker "$blocks_file" '>>>' 'SPEC')" = 2
check "count_marker counts closings" test "$(skill_fn count_marker "$blocks_file" '<<<' 'HINTS')" = 1
check "count_marker absent file counts zero" \
    test "$(skill_fn count_marker "$TMP_DIR/no-such-blocks.sh" '>>>' 'SPEC')" = 0
check "block_line finds first opening" test "$(skill_fn block_line "$blocks_file" '>>>' 'SPEC')" = 1
check "block_line finds closing" test "$(skill_fn block_line "$blocks_file" '<<<' 'HINTS')" = 5
check "block_line absent marker is empty" \
    test -z "$(skill_fn block_line "$blocks_file" '>>>' 'STATIC')"

# extract_block: 0 = extracted, 1 = no such block, 2 = malformed markers.
clean_file="$TMP_DIR/blocks-clean.sh"
printf '# >>> SPEC\nbody\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n' >"$clean_file"
check "extract_block extracts body" \
    skill_fn extract_block "$clean_file" SPEC "$TMP_DIR/body.txt"
check "extract_block body content" test "$(<"$TMP_DIR/body.txt")" = body
check "extract_block absent returns 1" test "$(extract_status "$clean_file" STATIC "$TMP_DIR/absent.txt")" = 1
check "extract_block duplicated returns 2" test "$(extract_status "$blocks_file" SPEC "$TMP_DIR/dup.txt")" = 2
check "extract_block leaves dest untouched when absent" test ! -e "$TMP_DIR/absent.txt"
check "extract_block empty body" \
    skill_fn extract_block "$clean_file" HINTS "$TMP_DIR/empty-body.txt"
check "extract_block writes an empty file for an empty body" test ! -s "$TMP_DIR/empty-body.txt"

# --- file helpers ---------------------------------------------------------
# Edge trimming and mode-preserving atomic replacement.
printf '\n  \nkeep me\n\n\n' >"$TMP_DIR/trim-in.txt"
check "trim_blank_edges trims both edges" \
    skill_fn trim_blank_edges "$TMP_DIR/trim-in.txt" "$TMP_DIR/trim-out.txt"
check "trim_blank_edges keeps the inner line" test "$(<"$TMP_DIR/trim-out.txt")" = "keep me"
printf 'a\n\n b \n\n' >"$TMP_DIR/trim2-in.txt"
check "trim_blank_edges keeps inner blanks" \
    skill_fn trim_blank_edges "$TMP_DIR/trim2-in.txt" "$TMP_DIR/trim2-out.txt"
check "trim_blank_edges inner blank count" test "$(wc -l <"$TMP_DIR/trim2-out.txt")" -eq 3

auto_target="$TMP_DIR/auto.json"
printf '{}\n' >"$auto_target"
chmod 644 "$auto_target"
check "write_file_atomic writes content" skill_fn write_file_atomic "$auto_target" '{"a":1}'
check "write_file_atomic content" test "$(<"$auto_target")" = '{"a":1}'
if stat -c '%a' "$auto_target" >/dev/null 2>&1; then
    check "write_file_atomic keeps mode" test "$(stat -c '%a' "$auto_target")" = 644
else
    check "write_file_atomic keeps mode" test "$(stat -f '%Lp' "$auto_target")" = 644
fi
install_src="$TMP_DIR/install-src"
printf 'new\n' >"$install_src"
check "install_atomic replaces target" skill_fn install_atomic "$install_src" "$auto_target"
check "install_atomic content" test "$(<"$auto_target")" = new
check "install_atomic consumed the source" test ! -e "$install_src"

# --- block facts and layout ----------------------------------------------
blocks_facts="$TMP_DIR/blocks-facts.sh"
printf '#!/usr/bin/env bash\n# >>> SPEC\n# @cmd demo\n# <<< SPEC\n\n# >>> HINTS\n# %%%%demo\n# <<< HINTS\n\n# >>> STATIC\n_static_x() { :; }\n# <<< STATIC\n\n# >>> CHOICES\n_choice_x() { :; }\n# <<< CHOICES\ncommand eval "$(argc --argc-eval "$0" "$@")"\n' \
    >"$blocks_facts"
quiet skill_fn block_facts "$blocks_facts" >"$TMP_DIR/facts.txt"
assert_contains "block_facts marks the layout" "$TMP_DIR/facts.txt" 'layout=marked'
assert_contains "block_facts SPEC region" "$TMP_DIR/facts.txt" 'SPEC 1 2 4 1'
assert_contains "block_facts HINTS region" "$TMP_DIR/facts.txt" 'HINTS 1 6 8 1'
assert_contains "block_facts STATIC region" "$TMP_DIR/facts.txt" 'STATIC 1 10 12 1'
assert_contains "block_facts CHOICES region" "$TMP_DIR/facts.txt" 'CHOICES 1 14 16 1'
assert_contains "block_facts first line" "$TMP_DIR/facts.txt" 'first=2'
assert_contains "block_facts last line" "$TMP_DIR/facts.txt" 'last=16'
skill_fn block_facts "$TMP_DIR/no-such-blocks-facts.sh" >"$TMP_DIR/facts-missing.txt" 2>/dev/null || true
assert_line "block_facts treats a missing file as unmarked" "$TMP_DIR/facts-missing.txt" 1 layout=unmarked
check "block_layout_ok accepts the supported layout" skill_fn block_layout_ok "$blocks_facts"
printf '#!/usr/bin/env bash\n# >>> HINTS\n# <<< HINTS\n# >>> SPEC\n# <<< SPEC\n' >"$TMP_DIR/blocks-order.sh"
expect_failure "block_layout_ok rejects out-of-order blocks" \
    skill_fn block_layout_ok "$TMP_DIR/blocks-order.sh"
printf '#!/usr/bin/env bash\n# >>> SPEC\n# <<< SPEC\n# >>> SPEC\n# <<< SPEC\n# >>> HINTS\n# <<< HINTS\n' >"$TMP_DIR/blocks-dup.sh"
expect_failure "block_layout_ok rejects a duplicated block" \
    skill_fn block_layout_ok "$TMP_DIR/blocks-dup.sh"
expect_failure "block_layout_ok rejects an unmarked script" \
    skill_fn block_layout_ok "$TMP_DIR/no-such-blocks-facts.sh"

# --- fragment walk --------------------------------------------------------
walk_fixtures="$FIXTURES/fragments/with-choice"
quiet skill_fn fragment_walk "$walk_fixtures" demo >"$TMP_DIR/walk.tsv"
assert_tsv "fragment_walk keys the root fragment" "$TMP_DIR/walk.tsv" 1=demo
assert_tsv "fragment_walk decodes nested paths" "$TMP_DIR/walk.tsv" 1='demo|remote|add'
assert_tsv "fragment_walk keeps relative paths" "$TMP_DIR/walk.tsv" 2=remote/add
check "fragment_child_file resolves a root child" \
    test "$(skill_fn fragment_child_file /cache /cache/_root.json remote)" = '/cache/remote.json'
check "fragment_child_file resolves a nested child" \
    test "$(skill_fn fragment_child_file /cache /cache/remote.json add)" = '/cache/remote/add.json'

# --- fragment records -----------------------------------------------------
records="$(skill_fn extract_fragment_records demo "$walk_fixtures/_root.json")"
check "records_provenance reads the X record" \
    test "$(skill_fn records_provenance "$records")" = \
    $'help\x1faaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\x1fdemo --help\x1f'
empty_hash_records="X"$'\x1f'"help"$'\x1f'""$'\x1f'"demo --help"$'\x1f'"section"
check "records_provenance keeps an empty hash field" \
    test "$(skill_fn records_provenance "$empty_hash_records")" = \
    $'help\x1f\x1fdemo --help\x1fsection'
expect_failure "records_provenance fails without an X record" \
    skill_fn records_provenance "D$(printf '\x1f')desc"
# BSD wc (macOS) pads its count to seven columns; -eq compares the number.
check "records_declared_subcommands keeps S records" \
    test "$(skill_fn records_declared_subcommands "$records" | wc -l)" -eq 2

check "json_string_array escapes values" \
    test "$(skill_fn json_string_array a 'b"c' 'd\e')" = '["a","b\"c","d\\e"]'
check "json_string_array renders an empty array" \
    test "$(skill_fn json_string_array)" = '[]'

# --- trim variants --------------------------------------------------------
# Compare bytes through a fixture file (cmp via assert_same): BSD od -c pads
# every field with a trailing space, so parsing its layout is not portable.
printf '\n \nx\n\n' >"$TMP_DIR/trim-lead-in.txt"
printf 'x\n\n' >"$TMP_DIR/trim-lead-expected.txt"
check "trim_leading_blank_edges keeps trailing blanks" \
    skill_fn trim_leading_blank_edges "$TMP_DIR/trim-lead-in.txt" "$TMP_DIR/trim-lead-out.txt"
assert_same "trim_leading_blank_edges body" \
    "$TMP_DIR/trim-lead-out.txt" "$TMP_DIR/trim-lead-expected.txt"
printf '\n \nx\n\n' >"$TMP_DIR/trim-trail-in.txt"
printf '\n \nx\n' >"$TMP_DIR/trim-trail-expected.txt"
check "trim_trailing_blank_edges keeps leading blanks" \
    skill_fn trim_trailing_blank_edges "$TMP_DIR/trim-trail-in.txt" "$TMP_DIR/trim-trail-out.txt"
assert_same "trim_trailing_blank_edges body" \
    "$TMP_DIR/trim-trail-out.txt" "$TMP_DIR/trim-trail-expected.txt"

# --- cli and path guards --------------------------------------------------
check "path_args_valid accepts a root and subcommand" skill_fn path_args_valid demo remote
expect_failure "path_args_valid rejects dot-dot" skill_fn path_args_valid demo ..
expect_failure "path_args_valid rejects an empty component" skill_fn path_args_valid demo ""
check "fragment_cache_dir defaults to the repo cache" \
    test "$(skill_fn fragment_cache_dir demo)" = "$ROOT_DIR/cache/compile/demo"
check "fragment_cache_dir honours an override" \
    test "$(skill_fn fragment_cache_dir demo /tmp/cache)" = '/tmp/cache'
expect_failure "cli_require_value rejects a missing value" skill_fn cli_require_value --output 1
check "cli_require_value accepts a value" skill_fn cli_require_value --output 2

helper_finish
