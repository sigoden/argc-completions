#!/usr/bin/env bash
# Regression tests for utils/_argc_utils.sh.
#
# Usage: bash tests/utils/run.sh
#
# The harness is self-contained: plain bash, no bats/shunit2, no network and no
# writes inside the repository. Every fixture is created in a mktemp directory
# that is removed on exit.
#
# Conventions:
#   - `@` in expected values marks a NUL byte.
#   - trailing newlines are stripped before comparison; use assert_bytes for
#     byte-exact expectations (NUL position, trailing newline).

set -euo pipefail

TEST_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$TEST_DIR/../.." && pwd)"
export PATH="$ROOT_DIR/bin:$PATH"

if [ "${BASH_VERSINFO[0]:-0}" -lt 5 ]; then
    if [ -x "$ROOT_DIR/bin/bash" ] && [ "${ARGC_BASH_REEXEC:-0}" != "1" ]; then
        ARGC_BASH_REEXEC=1 exec "$ROOT_DIR/bin/bash" "$0" "$@"
    fi
    echo "bash >= 5 is required (run ./install.sh)" >&2
    exit 1
fi

UTILS="$ROOT_DIR/utils/_argc_utils.sh"

TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

FIXTURES="$TMP_DIR/fixtures"
mkdir -p "$FIXTURES"

OUT_FILE="$TMP_DIR/assert.out"
ERR_FILE="$TMP_DIR/assert.err"

# Linux is the baseline; individual checks override ARGC_OS explicitly.
export ARGC_OS=linux

passes=0
failures=0
skips=0

pass() { passes=$((passes + 1)); printf 'ok   %s\n' "$*"; }
fail() { failures=$((failures + 1)); printf 'FAIL %s\n' "$*"; }
skip() { skips=$((skips + 1)); printf 'skip %s\n' "$*"; }

# A check only reports a conclusion. Output printed by the command under test
# is held back unless the check fails, so helper progress and expected error
# messages do not mix into the report.
show_capture() {
    local out="${1:-$OUT_FILE}" err="${2:-$ERR_FILE}"
    if [[ -s "$out" ]]; then
        command sed -n '1,20p' "$out" | command sed 's/^/  stdout: /'
    fi
    if [[ -s "$err" ]]; then
        command sed -n '1,20p' "$err" | command sed 's/^/  stderr: /'
    fi
    return 0
}

check() {
    local label="$1"
    shift
    if "$@" >"$OUT_FILE" 2>"$ERR_FILE"; then
        pass "$label"
    else
        fail "$label"
        show_capture
    fi
}

expect_failure() {
    local label="$1"
    shift
    if "$@" >"$OUT_FILE" 2>"$ERR_FILE"; then
        fail "$label (unexpected success)"
        show_capture
    else
        pass "$label"
    fi
}

# Render arguments as lines without a trailing newline.
lines() { printf '%s\n' "$@"; }

# Run a snippet with the utils sourced. The subshell disables -e/-u so helpers
# that read unset variables or a non-zero intermediate status keep working, and
# an `exit` inside the utils cannot terminate the harness.
utils_run() {
    ( set +eu; source "$UTILS"; eval "$1" )
}

# Same as utils_run, with FILE connected to stdin.
utils_run_in() {
    local file="$1" snippet="$2"
    ( set +eu; source "$UTILS"; eval "$snippet" ) <"$file"
}

# Write the output of a command to OUT, tolerating a non-zero exit status.
capture() {
    local out="$1"
    shift
    "$@" >"$out" 2>"$ERR_FILE" || :
}

assert_stdout() {
    local label="$1" expected="$2"
    shift 2
    local actual
    "$@" >"$OUT_FILE" 2>"$ERR_FILE" || :
    actual="$(command tr '\0' '@' <"$OUT_FILE")"
    if [[ "$actual" == "$expected" ]]; then
        pass "$label"
    else
        fail "$label"
        printf '  expected: %q\n' "$expected"
        printf '  actual  : %q\n' "$actual"
    fi
}

assert_bytes() {
    local label="$1" expected_file="$2" actual_file="$3"
    if command cmp -s "$expected_file" "$actual_file"; then
        pass "$label"
    else
        fail "$label"
        printf '  expected:\n'
        command od -c "$expected_file" | command sed 's/^/    /'
        printf '  actual:\n'
        command od -c "$actual_file" | command sed 's/^/    /'
    fi
}

assert_contains() {
    local label="$1" file="$2" needle="$3"
    if command grep -Fq -- "$needle" "$file"; then pass "$label"; else fail "$label (missing: $needle)"; fi
}

assert_not_contains() {
    local label="$1" file="$2" needle="$3"
    if command grep -Fq -- "$needle" "$file"; then fail "$label (unexpected: $needle)"; else pass "$label"; fi
}

assert_stderr_empty() {
    local label="$1"
    shift
    "$@" >"$OUT_FILE" 2>"$ERR_FILE" || :
    if [[ -s "$ERR_FILE" ]]; then
        fail "$label"
        command sed -n '1,5p' "$ERR_FILE" | command sed 's/^/  stderr: /'
    else
        pass "$label"
    fi
}

# ---------------------------------------------------------------------------
# Preflight
# ---------------------------------------------------------------------------
command -v gawk >/dev/null || { echo 'gawk is required' >&2; exit 1; }
command -v argc >/dev/null || { echo 'argc is required' >&2; exit 1; }
if (( BASH_VERSINFO[0] < 4 || (BASH_VERSINFO[0] == 4 && BASH_VERSINFO[1] < 3) )); then
    echo "bash >= 4.3 is required (found $BASH_VERSION)" >&2
    exit 1
fi

check "utils syntax" bash -n "$UTILS"
assert_stdout "utils sources without output" '' utils_run ':'
assert_stderr_empty "utils sources without warnings" utils_run ':'

# ---------------------------------------------------------------------------
# _argc_util_comp_path
# ---------------------------------------------------------------------------
assert_stdout "comp_path defaults to path" '__argc_value=path' \
    utils_run '_argc_util_comp_path'
assert_stdout "comp_path dir" '__argc_value=dir' \
    utils_run '_argc_util_comp_path dir'
assert_stdout "comp_path exts" '__argc_value=path:.json,jsonc' \
    utils_run '_argc_util_comp_path exts=.json,jsonc'
assert_stdout "comp_path emits cd, prefix, filter in order" \
    "$(lines '__argc_cd=/tmp' '__argc_prefix=--file=' '__argc_filter=ab' '__argc_value=path')" \
    utils_run '_argc_util_comp_path prefix=--file= filter=ab cd=/tmp'
assert_stdout "comp_path does not clobber a global arg" 'keepme' \
    utils_run 'arg=keepme; _argc_util_comp_path dir >/dev/null; printf "%s" "$arg"'

# The suffix is followed by a NUL marker, so compare bytes.
printf '__argc_suffix=%s\0\n__argc_value=path\n' ':' >"$TMP_DIR/expect-suffix-colon"
utils_run '_argc_util_comp_path suffix=:' >"$TMP_DIR/actual-suffix-colon"
assert_bytes "comp_path suffix NUL placement" "$TMP_DIR/expect-suffix-colon" "$TMP_DIR/actual-suffix-colon"

printf '__argc_suffix=%s\0\n__argc_value=path\n' '\' >"$TMP_DIR/expect-suffix-backslash"
utils_run '_argc_util_comp_path "suffix=\\"' >"$TMP_DIR/actual-suffix-backslash"
assert_bytes "comp_path keeps a literal backslash suffix" "$TMP_DIR/expect-suffix-backslash" "$TMP_DIR/actual-suffix-backslash"

# ---------------------------------------------------------------------------
# _argc_util_comp_kv
# ---------------------------------------------------------------------------
KV="$FIXTURES/kv.txt"
cat >"$KV" <<'EOF'
foo=yes,no;;desc foo
bar=v1,v2,v3;;desc bar
baz=__argc_value=file;;desc baz
qux=`printf 'q1\nq2\n'`;;desc qux
quux;;as flag, no value
*=fb1,fb2;;fallback
addr=dev:`printf '10.0.0.1\n10.0.0.2\n'`;;nested
EOF

assert_stdout "comp_kv lists keys, flags and fallback" \
    "$(lines \
        '__argc_filter=' \
        $'foo=@\tdesc foo' \
        $'bar=@\tdesc bar' \
        $'baz=@\tdesc baz' \
        $'qux=@\tdesc qux' \
        $'quux\tas flag, no value' \
        $'addr=@\tnested' \
        'fb1' \
        'fb2')" \
    utils_run_in "$KV" '_argc_util_comp_kv ='

assert_stdout "comp_kv completes values of a matched key" \
    "$(lines '__argc_prefix=bar=' '__argc_filter=v' 'v1' 'v2' 'v3')" \
    utils_run_in "$KV" '_argc_util_comp_kv = bar=v'

assert_stdout "comp_kv evaluates a backtick value" \
    "$(lines '__argc_prefix=qux=' '__argc_filter=' 'q1' 'q2')" \
    utils_run_in "$KV" '_argc_util_comp_kv = qux='

assert_stdout "comp_kv passes through a control line value" \
    "$(lines '__argc_prefix=baz=' '__argc_filter=' '__argc_value=file')" \
    utils_run_in "$KV" '_argc_util_comp_kv = baz='

assert_stdout "comp_kv completes a nested value separator" \
    "$(lines \
        '__argc_prefix=addr:' \
        '__argc_filter=dev:' \
        '__argc_prefix=addr:dev:' \
        '__argc_filter=' \
        '10.0.0.1@' \
        '10.0.0.2@')" \
    utils_run_in "$KV" '_argc_util_comp_kv : addr:dev:'

capture "$TMP_DIR/kv-fallback.txt" utils_run_in "$KV" '_argc_util_comp_kv = zzz'
assert_contains "comp_kv falls back to the * key (first value)" "$TMP_DIR/kv-fallback.txt" 'fb1'
assert_contains "comp_kv falls back to the * key (second value)" "$TMP_DIR/kv-fallback.txt" 'fb2'

# A prefix without a separator must still be emitted.
kv_prefix_head() {
    utils_run_in "$KV" '_argc_util_comp_kv = a --foo=' | command sed -n '1,2p'
}
assert_stdout "comp_kv emits the extra prefix without a separator" \
    "$(lines '__argc_prefix=--foo=' '__argc_filter=a')" \
    kv_prefix_head

# A backslash separator is matched literally.
assert_stdout "comp_kv handles a backslash separator" \
    "$(lines '__argc_prefix=C:\' '__argc_filter=Us' 'fb1' 'fb2')" \
    utils_run_in "$KV" '_argc_util_comp_kv "\\" "C:\\Us"'

# Blank lines, literal backslash-t and glob characters must be preserved.
KV_EDGE="$FIXTURES/kv-edge.txt"
cat >"$KV_EDGE" <<'EOF'
a=1;;desc a

b=2;;de\tsc b
c=3;;has *star* here
EOF
assert_stdout "comp_kv skips blank lines and keeps literal text" \
    "$(lines \
        '__argc_filter=' \
        $'a=@\tdesc a' \
        $'b=@\tde\\tsc b' \
        $'c=@\thas *star* here')" \
    utils_run_in "$KV_EDGE" '_argc_util_comp_kv ='

# ---------------------------------------------------------------------------
# _argc_util_comp_tv
# ---------------------------------------------------------------------------
TV="$FIXTURES/tv.txt"
cat >"$TV" <<'EOF'
dev=eth0,eth1;;desc dev
local;;desc local
peer=id;;desc peer
scope=one,two,three;;desc scope
abc=a1,a2;a3,a4;;desc abc
EOF

assert_stdout "comp_tv lists every tag" \
    "$(lines \
        $'dev\tdesc dev' \
        $'local\tdesc local' \
        $'peer\tdesc peer' \
        $'scope\tdesc scope' \
        $'abc\tdesc abc')" \
    utils_run_in "$TV" 'argc__positionals=(); _argc_util_comp_tv'

assert_stdout "comp_tv completes the first value of a tag" \
    "$(lines 'eth0' 'eth1')" \
    utils_run_in "$TV" 'argc__positionals=(dev ""); _argc_util_comp_tv'

assert_stdout "comp_tv completes a comma separated value list" \
    "$(lines 'a1' 'a2')" \
    utils_run_in "$TV" 'argc__positionals=(abc ""); _argc_util_comp_tv'

assert_stdout "comp_tv completes the second value of a multi-arg tag" \
    "$(lines 'a3' 'a4')" \
    utils_run_in "$TV" 'argc__positionals=(abc a1 ""); _argc_util_comp_tv'

assert_stdout "comp_tv hides an already used flag tag" \
    "$(lines $'dev\tdesc dev' $'peer\tdesc peer' $'scope\tdesc scope' $'abc\tdesc abc')" \
    utils_run_in "$TV" 'argc__positionals=(local ""); _argc_util_comp_tv'

assert_stdout "comp_tv hides an already used value tag" \
    "$(lines $'local\tdesc local' $'peer\tdesc peer' $'scope\tdesc scope' $'abc\tdesc abc')" \
    utils_run_in "$TV" 'argc__positionals=(dev eth0 ""); _argc_util_comp_tv'

TV_SPACE="$FIXTURES/tv-space.txt"
printf 'a b=1,2;;d\n' >"$TV_SPACE"
assert_stdout "comp_tv supports a tag containing spaces" "$(lines '1' '2')" \
    utils_run_in "$TV_SPACE" 'argc__positionals=("a b" ""); _argc_util_comp_tv'

# ---------------------------------------------------------------------------
# _argc_util_comp_parts
# ---------------------------------------------------------------------------
PARTS="$FIXTURES/parts.txt"
printf 'root/a/1\nroot/b/2\nroot2/c/3\n' >"$PARTS"
assert_stdout "comp_parts lists top level parts in order" \
    "$(lines '__argc_prefix=' '__argc_filter=' 'root/@' 'root2/@')" \
    utils_run_in "$PARTS" '_argc_util_comp_parts / ""'
assert_stdout "comp_parts keeps the resolved prefix" \
    "$(lines '__argc_prefix=root/b/' '__argc_filter=' '2')" \
    utils_run_in "$PARTS" '_argc_util_comp_parts / "root/b/"'
assert_stdout "comp_parts honours the extra prefix" \
    "$(lines '__argc_prefix=--dir=' '__argc_filter=' 'root/@' 'root2/@')" \
    utils_run_in "$PARTS" '_argc_util_comp_parts / "" "--dir="'

PARTS_DIR="$FIXTURES/parts-dir.txt"
printf 'src/deep/\n' >"$PARTS_DIR"
assert_stdout "comp_parts marks a single directory with NUL" \
    "$(lines '__argc_prefix=src/' '__argc_filter=' 'deep/@')" \
    utils_run_in "$PARTS_DIR" '_argc_util_comp_parts / "src/"'

PARTS_BACKSLASH="$FIXTURES/parts-backslash.txt"
printf 'C:\\Users\\a\n' >"$PARTS_BACKSLASH"
assert_stdout "comp_parts handles a backslash separator" \
    "$(lines '__argc_prefix=C:\' '__argc_filter=U' 'Users\a')" \
    utils_run_in "$PARTS_BACKSLASH" '_argc_util_comp_parts "\\" "C:\\U"'
assert_stderr_empty "comp_parts backslash produces no gawk warning" \
    utils_run_in "$PARTS_BACKSLASH" '_argc_util_comp_parts "\\" "C:\\U"'

# ---------------------------------------------------------------------------
# _argc_util_comp_multi
# ---------------------------------------------------------------------------
MULTI="$FIXTURES/multi.txt"
printf 'a\tA\nb\tB\nc\tC\n' >"$MULTI"
assert_stdout "comp_multi lists every value with its description" \
    "$(lines '__argc_prefix=' '__argc_filter=' $'a@\tA' $'b@\tB' $'c@\tC')" \
    utils_run_in "$MULTI" '_argc_util_comp_multi , ""'
assert_stdout "comp_multi excludes already used values" \
    "$(lines '__argc_prefix=a,' '__argc_filter=' $'b@\tB' $'c@\tC')" \
    utils_run_in "$MULTI" '_argc_util_comp_multi , "a,"'

MULTI_DESC="$FIXTURES/multi-desc.txt"
printf 'a\tdescA\nb\n' >"$MULTI_DESC"
assert_stdout "comp_multi does not leak a description to the next value" \
    "$(lines '__argc_prefix=' '__argc_filter=' $'a@\tdescA' 'b@')" \
    utils_run_in "$MULTI_DESC" '_argc_util_comp_multi , ""'

MULTI_NUL="$FIXTURES/multi-nul.txt"
printf 'a\0\tA\n' >"$MULTI_NUL"
assert_stdout "comp_multi preserves an existing nospace marker" \
    "$(lines '__argc_prefix=' '__argc_filter=' $'a@\tA')" \
    utils_run_in "$MULTI_NUL" '_argc_util_comp_multi , ""'

assert_stdout "comp_multi filters with a backslash in the word" \
    "$(lines '__argc_prefix=' '__argc_filter=C:\Us')" \
    utils_run_in "$MULTI" '_argc_util_comp_multi , "C:\\Us"'
assert_stderr_empty "comp_multi backslash filter produces no gawk warning" \
    utils_run_in "$MULTI" '_argc_util_comp_multi , "C:\\Us"'


# ---------------------------------------------------------------------------
# _argc_util_mode_kv / _argc_util_mode_parts
# ---------------------------------------------------------------------------
assert_stdout "mode_kv splits key and filter" \
    'key=[key] prefix=[key=] filter=[a]' \
    utils_run '_argc_util_mode_kv = "key=a" >/dev/null; printf "key=[%s] prefix=[%s] filter=[%s]" "$argc__kv_key" "$argc__kv_prefix" "$argc__kv_filter"'
assert_stdout "mode_kv leaves key and prefix empty without a separator" \
    'key=[] prefix=[] filter=[key]' \
    utils_run '_argc_util_mode_kv = "key" >/dev/null; printf "key=[%s] prefix=[%s] filter=[%s]" "$argc__kv_key" "$argc__kv_prefix" "$argc__kv_filter"'
assert_stdout "mode_kv emits prefix and filter lines" \
    "$(lines '__argc_prefix=key=' '__argc_filter=a')" \
    utils_run '_argc_util_mode_kv = "key=a"'

assert_stdout "mode_parts fills parts variables" \
    'prefix=[a.] filter=[b] values=[a b] len=[2]' \
    utils_run '_argc_util_mode_parts . "a.b" >/dev/null; printf "prefix=[%s] filter=[%s] values=[%s] len=[%s]" "$argc__parts_prefix" "$argc__parts_filter" "${argc__parts_values[*]}" "$argc__parts_len"'

# ---------------------------------------------------------------------------
# _argc_util_has_path_prefix
# ---------------------------------------------------------------------------
has_path_prefix() {
    ( set +eu; source "$UTILS"; _argc_util_has_path_prefix "$1" )
}
for value in './x' '/x' '~' 'C:\' '~user/x'; do
    check "has_path_prefix yes: $value" has_path_prefix "$value"
done
for value in 'README' 'a/b' ''; do
    expect_failure "has_path_prefix no: ${value:-<empty>}" has_path_prefix "$value"
done

# ---------------------------------------------------------------------------
# _argc_util_parallel (argc end to end)
# ---------------------------------------------------------------------------
PARALLEL="$TMP_DIR/parallel.sh"
cat >"$PARALLEL" <<EOF
#!/usr/bin/env bash
source "$UTILS"

_f1() {
    echo one
}

_f2() {
    echo two
}

_f3() {
    echo three
}

_choice() {
    _argc_util_parallel _f1 ::: _f2 ::: _f3
}

# @cmd
# @arg v~[\`_choice\`]
demo() {
    :;
}

eval "\$(argc --argc-eval "\$0" "\$@")"
EOF

compgen_parallel() {
    local script="$1"
    argc --argc-compgen bash "$script" demo demo "" 2>/dev/null | command sed 's/ $//'
}

assert_stdout "parallel runs every function group" "$(lines 'one' 'two' 'three')" \
    compgen_parallel "$PARALLEL"

PARALLEL_FAIL="$TMP_DIR/parallel-fail.sh"
command sed 's/echo two/return 1/' "$PARALLEL" >"$PARALLEL_FAIL"
assert_stdout "parallel keeps other groups when one fails" "$(lines 'one' 'three')" \
    compgen_parallel "$PARALLEL_FAIL"

# ---------------------------------------------------------------------------
# _argc_util_param_select_options
# ---------------------------------------------------------------------------
assert_stdout "param_select_options ignores undefined variables" '' \
    utils_run 'unset argc_verbose argc_C argc_config argc_git_dir; _argc_util_param_select_options --verbose -C --config'
assert_stdout "param_select_options emits a boolean flag" ' --verbose' \
    utils_run 'argc_verbose=1; _argc_util_param_select_options --verbose -C'
assert_stdout "param_select_options emits a value option" ' -C /tmp/x' \
    utils_run 'argc_C=/tmp/x; _argc_util_param_select_options -C'
assert_stdout "param_select_options quotes a value with spaces" ' --git-dir /a\ b' \
    utils_run 'argc_git_dir="/a b"; _argc_util_param_select_options --git-dir'
assert_stdout "param_select_options repeats an array option" ' --config a --config b' \
    utils_run 'argc_config=(a b); _argc_util_param_select_options --config'

# ---------------------------------------------------------------------------
# _argc_util_path_resolve
# ---------------------------------------------------------------------------
assert_stdout "path_resolve joins paths" '/home/alice/gh/argc' \
    utils_run '_argc_util_path_resolve /home/alice gh/argc'
assert_stdout "path_resolve resolves .." 'argc/tests' \
    utils_run '_argc_util_path_resolve argc/src ../tests'
assert_stdout "path_resolve cleans redundant separators" 'argc/src/tests' \
    utils_run '_argc_util_path_resolve argc/src ".//tests/"'
assert_stdout "path_resolve keeps spaces" '/home/a b/sub' \
    utils_run '_argc_util_path_resolve "/home/a b" sub'
assert_stderr_empty "path_resolve with spaces is quiet" \
    utils_run '_argc_util_path_resolve "/home/a b" sub'
assert_stdout "path_resolve collapses a leading double slash" '/foo' \
    utils_run '_argc_util_path_resolve //foo'
assert_stdout "path_resolve drops a trailing slash" '/foo' \
    utils_run '_argc_util_path_resolve /foo/'
# An empty first argument is skipped by position, so the root/drive handling of
# the first argument never runs: the result stays relative. Keep this quirk.
assert_stdout "path_resolve skips an empty first argument" 'abs' \
    utils_run '_argc_util_path_resolve "" /abs'
assert_stdout "path_resolve resolves control chars in a path" $'/home/a\tb/c' \
    utils_run '_argc_util_path_resolve $'"'"'/home/a\tb'"'"' c'
assert_stdout "path_resolve CONFIG_DIR on linux" '/xdg/cfg/app/config.yaml' \
    utils_run 'ARGC_OS=linux; XDG_CONFIG_HOME=/xdg/cfg; _argc_util_path_resolve CONFIG_DIR app/config.yaml'
assert_stdout "path_resolve CACHE_DIR on linux" '/xdg/cache/app/config.yaml' \
    utils_run 'ARGC_OS=linux; XDG_CACHE_HOME=/xdg/cache; _argc_util_path_resolve CACHE_DIR app/config.yaml'
assert_stdout "path_resolve CONFIG_DIR on macos" "$HOME/Library/Application Support/app/config.yaml" \
    utils_run 'ARGC_OS=macos; _argc_util_path_resolve CONFIG_DIR app/config.yaml'
assert_stdout "path_resolve CACHE_DIR on macos" "$HOME/Library/Cache/app/config.yaml" \
    utils_run 'ARGC_OS=macos; _argc_util_path_resolve CACHE_DIR app/config.yaml'
assert_stdout "path_resolve CONFIG_DIR on windows" 'C:\Users\x\AppData\Roaming\app\config.yaml' \
    utils_run 'ARGC_OS=windows; APPDATA=C:/Users/x/AppData/Roaming; _argc_util_path_resolve CONFIG_DIR app/config.yaml'
assert_stdout "path_resolve CACHE_DIR on windows" 'C:\Users\x\AppData\Local\app\config.yaml' \
    utils_run 'ARGC_OS=windows; LOCALAPPDATA=C:/Users/x/AppData/Local; _argc_util_path_resolve CACHE_DIR app/config.yaml'
assert_stdout "path_resolve accepts piped input" '/x/y' \
    utils_run 'printf "/x/y\n" | _argc_util_path_resolve'
assert_stdout "path_resolve keeps a windows path on linux" 'C:\Users\alice\gh\argc' \
    utils_run 'ARGC_OS=linux; _argc_util_path_resolve "C:\\Users\\alice" "gh\\argc"'
assert_stdout "path_resolve -u is a no-op on linux" 'C:\Users\alice\gh\argc' \
    utils_run 'ARGC_OS=linux; _argc_util_path_resolve -u "C:\\Users\\alice" "gh\\argc"'
expect_failure "path_resolve fails when .. escapes the root" \
    utils_run '_argc_util_path_resolve /a/../../..'

# ---------------------------------------------------------------------------
# _argc_util_path_search_parent
# ---------------------------------------------------------------------------
SP_SEARCH="$TMP_DIR/sp/a b/c d"
SP_WORK="$SP_SEARCH/e"
mkdir -p "$SP_WORK"
printf '{}\n' >"$SP_SEARCH/package.json"

assert_stdout "search_parent finds the file" "$SP_SEARCH/package.json" \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent package.json"
assert_stdout "search_parent -p returns the directory" "$SP_SEARCH" \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent -p package.json"
assert_stdout "search_parent checks every candidate" "$SP_SEARCH/package.json" \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent deno.json package.json"
assert_stdout "search_parent restores the working directory" "$SP_WORK" \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent package.json >/dev/null; printf '%s' \"\$PWD\""
assert_stdout "search_parent prints nothing for a missing file" '' \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent no-such-file.json"
check "search_parent succeeds for a missing file" \
    utils_run "cd '$SP_WORK' && _argc_util_path_search_parent no-such-file.json"

# ---------------------------------------------------------------------------
# _argc_util_transform
# ---------------------------------------------------------------------------
printf 'v1\td\nv2\n' >"$TMP_DIR/tr-plain"
assert_stdout "transform passes values through" $'v1\td\nv2' \
    utils_run_in "$TMP_DIR/tr-plain" '_argc_util_transform'

printf 'a\nb/\n' >"$TMP_DIR/tr-nospace"
assert_stdout "transform nospace marks every value" $'a@\nb/@' \
    utils_run_in "$TMP_DIR/tr-nospace" '_argc_util_transform nospace'

printf 'a\0\n' >"$TMP_DIR/tr-space"
assert_stdout "transform space removes the marker" 'a' \
    utils_run_in "$TMP_DIR/tr-space" '_argc_util_transform space'

printf 'dir/\nfile\n' >"$TMP_DIR/tr-ifend-slash"
assert_stdout "transform nospaceIfEnd=/ matches a directory" $'dir/@\nfile' \
    utils_run_in "$TMP_DIR/tr-ifend-slash" '_argc_util_transform nospaceIfEnd=/'

printf 'a=\nb\n' >"$TMP_DIR/tr-ifend-eq"
assert_stdout "transform nospaceIfEnd== matches a single char suffix" $'a=@\nb' \
    utils_run_in "$TMP_DIR/tr-ifend-eq" '_argc_util_transform nospaceIfEnd=='

printf 'x--\ny\n' >"$TMP_DIR/tr-ifend-dash"
assert_stdout "transform nospaceIfEnd matches a multi char suffix" $'x--@\ny' \
    utils_run_in "$TMP_DIR/tr-ifend-dash" '_argc_util_transform nospaceIfEnd=--'

printf 'v\td\n' >"$TMP_DIR/tr-combo"
assert_stdout "transform combines prefix, suffix and color" $'/v:\t/color:green\td' \
    utils_run_in "$TMP_DIR/tr-combo" '_argc_util_transform prefix=/ suffix=: color=green'

printf 'v1:desc1\n' >"$TMP_DIR/tr-format"
assert_stdout "transform format splits value and description" $'v1\tdesc1' \
    utils_run_in "$TMP_DIR/tr-format" '_argc_util_transform format=:'

printf 'a\r\n' >"$TMP_DIR/tr-crlf"
assert_stdout "transform strips CR from CRLF input" 'a' \
    utils_run_in "$TMP_DIR/tr-crlf" '_argc_util_transform'

printf 'a\0\r\n' >"$TMP_DIR/tr-nul-cr"
assert_stdout "transform strips CR after a NUL marker" 'a@' \
    utils_run_in "$TMP_DIR/tr-nul-cr" '_argc_util_transform nospace'

printf 'v\n' >"$TMP_DIR/tr-unanchored"
assert_stdout "transform ignores a non-anchored option name" 'v' \
    utils_run_in "$TMP_DIR/tr-unanchored" '_argc_util_transform xprefix=/'

# nospaceIfEnd inspects the value as modified by the arguments before it, while
# valueLen is not refreshed by prefix/suffix. Both quirks are locked here.
printf 'b\n' >"$TMP_DIR/tr-order-one"
assert_stdout "transform nospaceIfEnd sees the prefixed value" 'ab' \
    utils_run_in "$TMP_DIR/tr-order-one" '_argc_util_transform prefix=a nospaceIfEnd=b'
printf 'b\n' >"$TMP_DIR/tr-order-two"
assert_stdout "transform nospaceIfEnd runs before the prefix" $'ab@' \
    utils_run_in "$TMP_DIR/tr-order-two" '_argc_util_transform nospaceIfEnd=b prefix=a'
printf 'a\n' >"$TMP_DIR/tr-order-three"
assert_stdout "transform nospaceIfEnd uses the pre-suffix length" 'a/' \
    utils_run_in "$TMP_DIR/tr-order-three" '_argc_util_transform suffix=/ nospaceIfEnd=/'

printf 'a\nb\n' >"$TMP_DIR/tr-color"
assert_stdout "transform keeps color for every line" $'a\t/color:green\nb\t/color:green' \
    utils_run_in "$TMP_DIR/tr-color" '_argc_util_transform color=green'

# ---------------------------------------------------------------------------
# _argc_util_transform_table
# ---------------------------------------------------------------------------
TABLE="$TMP_DIR/table.txt"
cat >"$TABLE" <<'EOF'
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
alpine       latest    abc123         2 weeks ago   5MB
ubuntu       22.04     def456         1 week ago    77MB
EOF
assert_stdout "transform_table selects columns by name" \
    "$(lines $'abc123\talpine:latest' $'def456\tubuntu:22.04')" \
    utils_run_in "$TABLE" '_argc_util_transform_table "IMAGE ID;REPOSITORY;TAG" "\t;:"'

printf 'REPOSITORY   TAG       IMAGE ID       CREATED       SIZE\n' >"$TMP_DIR/table-header"
assert_stdout "transform_table emits nothing for a header only table" '' \
    utils_run_in "$TMP_DIR/table-header" '_argc_util_transform_table "IMAGE ID;REPOSITORY;TAG" "\t;:"'

TABLE_SEP="$TMP_DIR/table-sep.txt"
cat >"$TABLE_SEP" <<'EOF'
REPOSITORY   TAG       CREATED
alpine       latest    2 weeks ago
--------     ------    -----------
EOF
assert_stdout "transform_table skips the header separator line" $'alpine\tlatest' \
    utils_run_in "$TABLE_SEP" '_argc_util_transform_table "REPOSITORY;TAG" "\t;:"'

# ---------------------------------------------------------------------------
# _argc_util_filter
# ---------------------------------------------------------------------------
printf 'a\nb\nc\n' >"$TMP_DIR/filter.txt"
assert_stdout "filter excludes the given words" 'b' \
    utils_run_in "$TMP_DIR/filter.txt" '_argc_util_filter "a,c" ,'
assert_stdout "filter -i keeps only the given words" $'a\nc' \
    utils_run_in "$TMP_DIR/filter.txt" '_argc_util_filter -i "a,c" ,'
assert_stdout "filter keeps everything without words" $'a\nb\nc' \
    utils_run_in "$TMP_DIR/filter.txt" '_argc_util_filter "" ,'
assert_stdout "filter -i drops everything without words" '' \
    utils_run_in "$TMP_DIR/filter.txt" '_argc_util_filter -i "" ,'

printf 'C:\\x\nb\n' >"$TMP_DIR/filter-backslash.txt"
assert_stdout "filter matches a word containing a backslash" 'b' \
    utils_run_in "$TMP_DIR/filter-backslash.txt" '_argc_util_filter "C:\\x" ,'

# ---------------------------------------------------------------------------
# _argc_util_cache
# ---------------------------------------------------------------------------
CACHE_ROOT="$TMP_DIR/cacheroot"
CACHE_DIR="$CACHE_ROOT/cache/argc-util-cache"
COUNTER="$TMP_DIR/counter"
COUNT_FN="$TMP_DIR/count.sh"
cat >"$COUNT_FN" <<EOF
_count() {
    printf 'x' >>'$COUNTER'
    printf 'a\nb\n'
}
EOF

counter_reset() { : >"$COUNTER"; }
counter_value() { command wc -c <"$COUNTER" | command tr -d '[:space:]'; }
cache_files() {
    command find "$CACHE_DIR" -mindepth 1 -maxdepth 1 -type f 2>/dev/null |
        command sed 's|.*/||' | LC_ALL=C sort
}
cache_one_file() {
    local files
    files="$(cache_files)"
    [[ -n "$files" ]] || return 1
    [[ "$(printf '%s\n' "$files" | command wc -l | command tr -d '[:space:]')" == "1" ]] || return 1
    printf '%s' "$files"
}
cache_hashed_name() {
    local name
    name="$(cache_one_file)" || return 1
    [[ "$name" =~ ^k_[0-9a-f]{40}$ ]]
}
cache_long_key_name() {
    local name
    name="$(cache_one_file)" || return 1
    [[ "$name" =~ ^a{80}_[0-9a-f]{40}$ ]]
}
cache_no_nested_dirs() {
    [[ -z "$(command find "$CACHE_DIR" -mindepth 1 -type d 2>/dev/null)" ]]
}
reset_cache_dir() { rm -rf "$CACHE_DIR"; }

# cache_call TIMEOUT [KEY] [ARGS]: run _count through _argc_util_cache.
cache_call() {
    local secs="$1" key="${2-}" args="${3-mytool sub}" snippet
    snippet="ARGC_COMPLETIONS_ROOT='$CACHE_ROOT'; source '$COUNT_FN'; argc__args=($args); argc__cmd_arg_index=1; "
    if [[ -n "$key" ]]; then
        snippet+="_argc_util_cache $secs _count '$key'"
    else
        snippet+="_argc_util_cache $secs _count"
    fi
    utils_run "$snippet"
}

counter_reset
assert_stdout "cache miss computes the values" $'a\nb' cache_call 60
assert_stdout "cache miss invokes the function once" '1' counter_value
check "cache miss stores the values" test -s "$CACHE_DIR/mytool_sub__count"
assert_stdout "cache hit replays the stored values" $'a\nb' cache_call 60
assert_stdout "cache hit skips the function" '1' counter_value
assert_stdout "expired cache recomputes the values" $'a\nb' cache_call 0
assert_stdout "expired cache invokes the function again" '2' counter_value

# Cache keys must never escape the cache directory.
counter_reset
assert_stdout "cache sanitizes an unsafe key" $'a\nb' cache_call 60 '' 'mytool /tmp/foo'
assert_stdout "cache sanitized file names" \
    "$(lines 'mytool__tmp_foo__count' 'mytool_sub__count')" cache_files
check "cache keeps no nested directories" cache_no_nested_dirs

if command -v openssl >/dev/null 2>&1; then
    counter_reset
    reset_cache_dir
    assert_stdout "cache handles a key:hash suffix" $'a\nb' cache_call 60 'k:hashme'
    check "cache key:hash stores under a hashed file name" cache_hashed_name

    counter_reset
    reset_cache_dir
    long_key="$(printf 'a%.0s' $(seq 1 150))"
    assert_stdout "cache handles a very long key" $'a\nb' cache_call 60 "$long_key"
    check "cache truncates and hashes a long key" cache_long_key_name
else
    skip "cache key:hash (openssl unavailable)"
    skip "cache long key (openssl unavailable)"
fi

# ---------------------------------------------------------------------------
# _argc_util_strip_ansi
# ---------------------------------------------------------------------------
printf '\033[31mred\033[0m plain\n' >"$TMP_DIR/ansi-color"
assert_stdout "strip_ansi removes color codes" 'red plain' \
    utils_run_in "$TMP_DIR/ansi-color" '_argc_util_strip_ansi'

printf 'ab\b\n' >"$TMP_DIR/ansi-backspace"
assert_stdout "strip_ansi applies backspace" 'a' \
    utils_run_in "$TMP_DIR/ansi-backspace" '_argc_util_strip_ansi'

printf 'plain\n' >"$TMP_DIR/ansi-plain"
assert_stdout "strip_ansi keeps plain text" 'plain' \
    utils_run_in "$TMP_DIR/ansi-plain" '_argc_util_strip_ansi'
assert_stderr_empty "strip_ansi is quiet on plain text" \
    utils_run_in "$TMP_DIR/ansi-plain" '_argc_util_strip_ansi'

# ---------------------------------------------------------------------------
# _argc_util_comp_command
# ---------------------------------------------------------------------------
COMMAND_BIN1="$TMP_DIR/command-bin1"
COMMAND_BIN2="$TMP_DIR/command-bin2"
mkdir -p "$COMMAND_BIN1/folder" "$COMMAND_BIN2"
for name in alpha beta; do
    printf '#!/bin/sh\n' >"$COMMAND_BIN1/$name"
    chmod +x "$COMMAND_BIN1/$name"
done
printf 'not executable\n' >"$COMMAND_BIN1/not-exec"
chmod 644 "$COMMAND_BIN1/not-exec"
for name in alpha gamma delta.dll; do
    printf '#!/bin/sh\n' >"$COMMAND_BIN2/$name"
    chmod +x "$COMMAND_BIN2/$name"
done

comp_command() {
    local path_value="$1" os="${2-linux}"
    ( set +eu; source "$UTILS"; ARGC_OS="$os" PATH="$path_value" _argc_util_comp_command ) |
        LC_ALL=C sort
}

assert_stdout "comp_command lists PATH executables once" \
    "$(lines alpha beta delta.dll gamma)" \
    comp_command "$COMMAND_BIN1:$COMMAND_BIN2:$TMP_DIR/command-missing"
assert_stdout "comp_command deduplicates a repeated PATH dir" \
    "$(lines alpha beta)" \
    comp_command "$COMMAND_BIN1:$COMMAND_BIN1"
assert_stdout "comp_command handles an empty PATH" '' \
    comp_command ""
check "comp_command empty PATH succeeds" comp_command ""
assert_stderr_empty "comp_command empty PATH is quiet" comp_command ""

COMMAND_SPACE="$TMP_DIR/command space"
mkdir -p "$COMMAND_SPACE"
printf '#!/bin/sh\n' >"$COMMAND_SPACE/space-tool"
chmod +x "$COMMAND_SPACE/space-tool"
assert_stdout "comp_command handles a PATH entry with spaces" 'space-tool' \
    comp_command "$COMMAND_SPACE"

COMMAND_WIN="$TMP_DIR/command-win"
mkdir -p "$COMMAND_WIN/folder"
for name in alpha.exe plain plain.exe delta.dll thing.com script.bat run.cmd; do
    printf '#!/bin/sh\n' >"$COMMAND_WIN/$name"
    chmod +x "$COMMAND_WIN/$name"
done
printf 'not executable\n' >"$COMMAND_WIN/notes.txt"
chmod 644 "$COMMAND_WIN/notes.txt"

assert_stdout "comp_command strips windows executable extensions" \
    "$(lines alpha plain run script thing)" \
    comp_command "$COMMAND_WIN" windows
assert_stdout "comp_command accepts semicolon PATH separators" \
    "$(lines alpha plain run script thing)" \
    comp_command "$COMMAND_WIN;$COMMAND_WIN" windows

COMMAND_DRIVE="$TMP_DIR/C:/tools"
mkdir -p "$COMMAND_DRIVE"
printf '#!/bin/sh\n' >"$COMMAND_DRIVE/car.exe"
chmod +x "$COMMAND_DRIVE/car.exe"
comp_command_from() {
    local dir="$1" path_value="$2"
    ( set +eu; cd "$dir"; source "$UTILS"; ARGC_OS=windows PATH="$path_value" _argc_util_comp_command ) |
        LC_ALL=C sort
}
assert_stdout "comp_command restores a windows drive prefix" 'car' \
    comp_command_from "$TMP_DIR" 'C:/tools'

# ---------------------------------------------------------------------------
# _argc_util_comp_subcommand
# ---------------------------------------------------------------------------
assert_stdout "comp_subcommand handles empty positionals" '' \
    utils_run 'argc__positionals=(); ARGC_LAST_ARG=""; _argc_util_comp_subcommand 0'
check "comp_subcommand empty positionals succeeds" \
    utils_run 'argc__positionals=(); ARGC_LAST_ARG=""; _argc_util_comp_subcommand 0'
assert_stderr_empty "comp_subcommand empty positionals is quiet" \
    utils_run 'argc__positionals=(); ARGC_LAST_ARG=""; _argc_util_comp_subcommand 0'

capture "$TMP_DIR/subcommand-unknown.txt" utils_run 'argc__positionals=(no-such-command-xyz ""); ARGC_LAST_ARG=""; _argc_util_comp_subcommand 0'
check "comp_subcommand survives an unknown command" \
    utils_run 'argc__positionals=(no-such-command-xyz ""); ARGC_LAST_ARG=""; _argc_util_comp_subcommand 0'
assert_contains "comp_subcommand falls back to a generic value" "$TMP_DIR/subcommand-unknown.txt" '__argc_value=path'

assert_stdout "comp_subcommand slices, prepends and replaces the last word" \
    "$(lines '<--argc-compgen>' '<generic>' '<>' '<--pre>' '<env>' '<FOO=1>' '<env>')" \
    utils_run '
argc() { printf "<%s>\n" "$@"; }
argc__positionals=(sudo env FOO=1 e)
ARGC_LAST_ARG=env
_argc_util_comp_subcommand 1 --pre
'

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------
printf '\n%d checks passed, %d failed, %d skipped\n' "$passes" "$failures" "$skips"
if [[ "$failures" -ne 0 ]]; then
    exit 1
fi
