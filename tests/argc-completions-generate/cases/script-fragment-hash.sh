#!/usr/bin/env bash
# scripts/fragment-hash.sh: stable hashing, hints/help sensitivity, safety.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/fragment-hash.sh" --help >"$TMP_DIR/fragment-hash-help.txt" 2>&1
assert_contains "fragment-hash usage stdout" "$TMP_DIR/fragment-hash-help.txt" 'Prints the 64-character hash to stdout'

mkdir -p "$TMP_DIR/bin"
hash_cache="$TMP_DIR/cache-hash"
mkdir -p "$hash_cache"
hash_completion="$TMP_DIR/hash-completion.sh"

write_help() {
    cat >"$TMP_DIR/bin/hash-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: hash-demo [OPTIONS]\n\nOptions:\n  --foo  Foo value\n'
DEMO
    chmod +x "$TMP_DIR/bin/hash-demo"
}
write_help
PATH="$TMP_DIR/bin:$PATH"

cat >"$hash_completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @describe Hash demo
# @flag -v --verbose  Verbose output
# @option --foo[?`_choice_foo`] <VALUE>  Foo value
# @arg name <NAME>  Name
# <<< SPEC

# >>> HINTS
# %%hash-demo
# - hint one
# <<< HINTS
SCRIPT

cat >"$hash_cache/_root.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["hash-demo"],
  "description": "Hash demo",
  "aliases": [],
  "meta": [],
  "items": [
    {"kind": "flag", "names": ["-v", "--verbose"], "repeatable": false, "description": "Verbose output"},
    {"kind": "option", "names": ["--foo"], "notations": ["<VALUE>"], "choices": [], "choice_fn": "_choice_foo", "repeatable": false, "prefixed": false, "delimiter": null, "description": "Foo value"},
    {"kind": "arg", "name": "name", "repeatable": false, "required": false, "notation": "<NAME>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Name"}
  ],
  "subcommands": [],
  "source": {"kind": "help", "command": "hash-demo --help"},
  "hash": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  "notes": ""
}
JSON

# hash_run [<extra args...>]: hash the fixture with the standard arguments.
hash_run() {
    bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$hash_completion" "$@"
}

# hash_status [<extra args...>]: the fragment-hash exit status, printed.
hash_status() {
    local rc=0
    hash_run "$@" >/dev/null 2>&1 || rc=$?
    printf '%s\n' "$rc"
}

hash1="$(hash_run)"
assert_matches "fragment-hash prints 64 hex" "$hash1" '^[0-9a-f]{64}$'
check "fragment-hash stable" test "$hash1" = "$(hash_run)"

# The root description lives in DESCRIBE, which --no-meta omits: adding,
# changing, or removing @describe must not invalidate an existing hash.
sed 's/^# @describe .*/# @describe A changed description/' "$hash_completion" >"$TMP_DIR/hash-completion-desc.sh"
check "fragment-hash ignores a changed describe" test "$hash1" = "$(
    bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
        --completion "$TMP_DIR/hash-completion-desc.sh"
)"
sed '/^# @describe /d' "$hash_completion" >"$TMP_DIR/hash-completion-nodesc.sh"
check "fragment-hash ignores a removed describe" test "$hash1" = "$(
    bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
        --completion "$TMP_DIR/hash-completion-nodesc.sh"
)"

# An empty context body hashes like a missing completion script, so a first
# generation stays a hit after its script is assembled.
cat >"$TMP_DIR/empty-context.sh" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# <<< SPEC

# >>> HINTS
# <<< HINTS
SCRIPT
hash_empty_context="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$TMP_DIR/empty-context.sh")"
hash_no_context="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache")"
check "fragment-hash empty context matches no script" test "$hash_empty_context" = "$hash_no_context"

# The fragment's source.command is used when --command is absent.
check "fragment-hash reads source.command" test "$hash1" = "$(hash_run)"

# --help-file reuses captured text and does not execute source.command.
printf 'Usage: hash-demo [OPTIONS]\n\nOptions:\n  --foo  Foo value\n' >"$TMP_DIR/reused-help.txt"
hash_reused="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$hash_completion" \
    --command 'no-such-hash-command --help' --help-file "$TMP_DIR/reused-help.txt")"
check "fragment-hash --help-file avoids execution" test "$hash1" = "$hash_reused"

# The help builtin is executed through the shell path.
hash_builtin="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$hash_completion" --command 'help cd')"
assert_matches "fragment-hash executes help builtin" "$hash_builtin" '^[0-9a-f]{64}$'

# Shell expressions: pipes, semicolons, quotes, redirects, and builtins. A
# pipeline that leaves the canonical text unchanged keeps the hash; one that
# filters or truncates it changes the hash.
hash_pipe="$(hash_run --command 'hash-demo --help | cat')"
check "fragment-hash pipe unchanged" test "$hash1" = "$hash_pipe"
hash_semicolon="$(hash_run --command 'false; hash-demo --help')"
check "fragment-hash semicolon uses the last status" test "$hash1" = "$hash_semicolon"
hash_or="$(hash_run --command 'false || hash-demo --help')"
check "fragment-hash || fallback" test "$hash1" = "$hash_or"
hash_redirect="$(hash_run --command 'hash-demo --help 2>/dev/null')"
check "fragment-hash redirect" test "$hash1" = "$hash_redirect"
hash_head="$(hash_run --command 'hash-demo --help | head -n 100')"
check "fragment-hash head within the text" test "$hash1" = "$hash_head"
hash_sed="$(hash_run --command "hash-demo --help | sed 's/^/x/'")"
check "fragment-hash filtered text changes the hash" test "$hash1" != "$hash_sed"
hash_head1="$(hash_run --command 'hash-demo --help | head -n 1')"
check "fragment-hash truncated text changes the hash" test "$hash1" != "$hash_head1"
hash_help_pipe="$(hash_run --command 'help cd | head -n 1')"
assert_matches "fragment-hash pipes the help builtin" "$hash_help_pipe" '^[0-9a-f]{64}$'
check "fragment-hash rejects a failing last command" test "$(hash_status --command 'hash-demo --help | false')" = 3

# A changed help body changes the hash.
cat >"$TMP_DIR/bin/hash-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: hash-demo [OPTIONS]\n\nOptions:\n  --foo  Changed value\n'
DEMO
chmod +x "$TMP_DIR/bin/hash-demo"
check "fragment-hash tracks help" test "$hash1" != "$(hash_run)"
write_help

# --- what the hash covers -------------------------------------------------
# A changed choice_fn or notation in SPEC changes the hash (the context DIFF).
sed 's/_choice_foo/_choice_bar/' "$hash_completion" >"$TMP_DIR/hash-choice.sh"
check "fragment-hash tracks choice_fn diff" test "$hash1" != "$(bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$TMP_DIR/hash-choice.sh")"
sed 's/<VALUE>/<LEVEL>/' "$hash_completion" >"$TMP_DIR/hash-notation.sh"
check "fragment-hash tracks notation diff" test "$hash1" != "$(bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$TMP_DIR/hash-notation.sh")"

# META and descriptions are not part of the hash body.
gawk '/^# @arg name/ { print; print "# @meta combine-shorts"; next } { print }' \
    "$hash_completion" >"$TMP_DIR/hash-meta.sh"
check "fragment-hash ignores meta" test "$hash1" = "$(bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$TMP_DIR/hash-meta.sh")"
sed 's/Foo value/Changed description/' "$hash_completion" >"$TMP_DIR/hash-desc.sh"
check "fragment-hash ignores descriptions" test "$hash1" = "$(bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$TMP_DIR/hash-desc.sh")"

# --fragment supplies the DIFF baseline and source.command.
cp "$hash_cache/_root.json" "$TMP_DIR/hash-fragment.json"
check "fragment-hash --fragment baseline match" test "$hash1" = "$(hash_run --fragment "$TMP_DIR/hash-fragment.json")"
fragment_jq "$TMP_DIR/hash-fragment.json" '(.items[] | select(.names | index("--foo")) | .notations) = ["<OVERRIDE>"]'
check "fragment-hash --fragment changes diff" test "$hash1" != "$(hash_run --fragment "$TMP_DIR/hash-fragment.json")"

# A changed HINTS body changes the hash.
cat >"$hash_completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# <<< SPEC

# >>> HINTS
# %%hash-demo
# - hint two
# <<< HINTS
SCRIPT
check "fragment-hash tracks hints" test "$hash1" != "$(hash_run)"

# Common HINTS lines reach every node, so they are part of its hash; a section
# for another path is not.
cat >"$TMP_DIR/hints-common.sh" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @flag -v --verbose  Verbose output
# <<< SPEC

# >>> HINTS
# - common hint
# %%hash-demo
# - hint one
# <<< HINTS
SCRIPT
gawk '/^# %%hash-demo$/ { print "# %%hash-other"; print "# - other hint" } { print }' \
    "$TMP_DIR/hints-common.sh" >"$TMP_DIR/hints-other.sh"
hash_common="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$TMP_DIR/hints-common.sh")"
hash_other="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$TMP_DIR/hints-other.sh")"
check "fragment-hash common hints change the hash" test "$hash1" != "$hash_common"
check "fragment-hash ignores another path's section" test "$hash_common" = "$hash_other"

# --- guards ---------------------------------------------------------------
# A control character is rejected before execution; the second line must not
# run. A sentinel proves the command was not executed.
sentinel="$TMP_DIR/hash-sentinel"
: >"$sentinel"
bad_command=$'hash-demo --help\nrm -f '"$sentinel"
expect_failure "fragment-hash rejects a control character" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command "$bad_command"
check "fragment-hash did not execute the second line" test -f "$sentinel"
expect_failure "fragment-hash rejects an empty command" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command ''
check "fragment-hash reports unknown help as unavailable" test "$(hash_status --command 'help no-such-builtin')" = 3

# A pipeline source.command stored in a fragment is read and executed. The
# completion script changed earlier in this case, so recompute the expected
# hash with the current context instead of reusing hash_pipe.
cp "$hash_cache/_root.json" "$TMP_DIR/hash-fragment-pipe.json"
fragment_jq "$TMP_DIR/hash-fragment-pipe.json" '.source.command = "hash-demo --help | cat"'
pipe_hash_now="$(hash_run --command 'hash-demo --help | cat')"
check "fragment-hash reads a shell expression from a fragment" test "$pipe_hash_now" = \
    "$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
        --completion "$hash_completion" --fragment "$TMP_DIR/hash-fragment-pipe.json")"

# A fragment with a control character in source.command is rejected before its
# command can run.
cp "$hash_cache/_root.json" "$TMP_DIR/hash-fragment-ctrl.json"
fragment_jq "$TMP_DIR/hash-fragment-ctrl.json" --arg cmd "$bad_command" '.source.command = $cmd'
expect_failure "fragment-hash rejects a fragment with a control character" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --completion "$hash_completion" --fragment "$TMP_DIR/hash-fragment-ctrl.json"
check "fragment-hash did not execute the fragment's second line" test -f "$sentinel"

expect_failure "fragment-hash rejects path escape" bash "$SCRIPTS/fragment-hash.sh" .. \
    --cache-dir "$hash_cache" --command 'hash-demo --help'
expect_failure "fragment-hash rejects an unsafe path component" bash "$SCRIPTS/fragment-hash.sh" hash-demo 'a;b' \
    --cache-dir "$hash_cache" --command 'hash-demo --help'
expect_failure "fragment-hash rejects a colon in the root" bash "$SCRIPTS/fragment-hash.sh" 'hash:demo' \
    --cache-dir "$hash_cache" --command 'hash-demo --help'

# A colon subcommand segment (pm2 profile:mem) is hashed like any other path.
colon_hash="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo 'profile:mem' --cache-dir "$hash_cache" \
    --completion "$hash_completion" --command 'hash-demo profile:mem --help')"
assert_matches "fragment-hash accepts a colon path component" "$colon_hash" '^[0-9a-f]{64}$'

: >"$TMP_DIR/empty-help.txt"
expect_failure "fragment-hash rejects empty help file" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command 'hash-demo --help' --help-file "$TMP_DIR/empty-help.txt"

helper_finish
