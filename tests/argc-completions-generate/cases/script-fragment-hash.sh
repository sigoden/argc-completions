#!/usr/bin/env bash
# scripts/fragment-hash.sh: stable hashing, hints/help sensitivity, safety.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

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

hash_run() {
    bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$hash_completion" "$@"
}

hash1="$(hash_run)"
check "fragment-hash prints 64 hex" bash -c "[[ '$hash1' =~ ^[0-9a-f]{64}\$ ]]"
hash2="$(hash_run)"
check "fragment-hash stable" test "$hash1" = "$hash2"

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
hash_default="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$hash_completion")"
check "fragment-hash reads source.command" test "$hash1" = "$hash_default"

# --help-file reuses captured text and does not execute source.command.
printf 'Usage: hash-demo [OPTIONS]\n\nOptions:\n  --foo  Foo value\n' >"$TMP_DIR/reused-help.txt"
hash_reused="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" --completion "$hash_completion" \
    --command 'no-such-hash-command --help' --help-file "$TMP_DIR/reused-help.txt")"
check "fragment-hash --help-file avoids execution" test "$hash1" = "$hash_reused"

# The help builtin is executed through the fixed bash wrapper.
hash_builtin="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$hash_completion" --command 'help cd')"
check "fragment-hash executes help builtin" bash -c "[[ '$hash_builtin' =~ ^[0-9a-f]{64}\$ ]]"

# A changed help body changes the hash.
cat >"$TMP_DIR/bin/hash-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: hash-demo [OPTIONS]\n\nOptions:\n  --foo  Changed value\n'
DEMO
chmod +x "$TMP_DIR/bin/hash-demo"
hash_help="$(hash_run)"
check "fragment-hash tracks help" test "$hash1" != "$hash_help"
write_help

# A changed choice_fn or notation in SPEC changes the hash (the context DIFF).
sed 's/_choice_foo/_choice_bar/' "$hash_completion" >"$TMP_DIR/hash-choice.sh"
hash_choice="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$TMP_DIR/hash-choice.sh")"
check "fragment-hash tracks choice_fn diff" test "$hash1" != "$hash_choice"

sed 's/<VALUE>/<LEVEL>/' "$hash_completion" >"$TMP_DIR/hash-notation.sh"
hash_notation="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$TMP_DIR/hash-notation.sh")"
check "fragment-hash tracks notation diff" test "$hash1" != "$hash_notation"

# META and descriptions are not part of the hash body.
awk '/^# @arg name/ { print; print "# @meta combine-shorts"; next } { print }' \
    "$hash_completion" >"$TMP_DIR/hash-meta.sh"
hash_meta="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$TMP_DIR/hash-meta.sh")"
check "fragment-hash ignores meta" test "$hash1" = "$hash_meta"

sed 's/Foo value/Changed description/' "$hash_completion" >"$TMP_DIR/hash-desc.sh"
hash_desc="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$TMP_DIR/hash-desc.sh")"
check "fragment-hash ignores descriptions" test "$hash1" = "$hash_desc"

# --fragment supplies the DIFF baseline and source.command.
cp "$hash_cache/_root.json" "$TMP_DIR/hash-fragment.json"
hash_same_fragment="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$hash_completion" --fragment "$TMP_DIR/hash-fragment.json")"
check "fragment-hash --fragment baseline match" test "$hash1" = "$hash_same_fragment"
jq '(.items[] | select(.names | index("--foo")) | .notations) = ["<OVERRIDE>"]' \
    "$TMP_DIR/hash-fragment.json" >"$TMP_DIR/hash-fragment-override.json"
hash_override="$(bash "$SCRIPTS/fragment-hash.sh" hash-demo --cache-dir "$hash_cache" \
    --completion "$hash_completion" --fragment "$TMP_DIR/hash-fragment-override.json")"
check "fragment-hash --fragment changes diff" test "$hash1" != "$hash_override"

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
hash_hints="$(hash_run)"
check "fragment-hash tracks hints" test "$hash1" != "$hash_hints"

# An unsafe source.command is rejected before execution.
expect_failure "fragment-hash rejects unsafe command" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command 'hash-demo --help; rm -rf /'
expect_failure "fragment-hash rejects help with two args" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command 'help cd extra'
expect_failure "fragment-hash rejects path escape" bash "$SCRIPTS/fragment-hash.sh" .. \
    --cache-dir "$hash_cache" --command 'hash-demo --help'

: >"$TMP_DIR/empty-help.txt"
expect_failure "fragment-hash rejects empty help file" bash "$SCRIPTS/fragment-hash.sh" hash-demo \
    --cache-dir "$hash_cache" --command 'hash-demo --help' --help-file "$TMP_DIR/empty-help.txt"

helper_finish
