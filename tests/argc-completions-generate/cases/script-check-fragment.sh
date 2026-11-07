#!/usr/bin/env bash
# scripts/check-fragment.sh: hit, invalid, missing, unverified, failed.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/check-fragment.sh" --help >"$TMP_DIR/check-fragment-help.txt" 2>&1
assert_contains "check-fragment usage exit status" "$TMP_DIR/check-fragment-help.txt" 'Exit status is 0 for every reported status'

# The help program the check hashes.
mkdir -p "$TMP_DIR/bin"
write_help() {
    cat >"$TMP_DIR/bin/check-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: check-demo [OPTIONS]\n\nOptions:\n  --foo  Foo value\n'
DEMO
    chmod +x "$TMP_DIR/bin/check-demo"
}
write_help
PATH="$TMP_DIR/bin:$PATH"

check_cache="$TMP_DIR/cache-check"
mkdir -p "$check_cache"
completion="$TMP_DIR/check-completion.sh"
cat >"$completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @option --foo[?`_choice_foo`] <VALUE>  Foo value
# <<< SPEC

# >>> HINTS
# %%check-demo
# - check hint
# <<< HINTS
SCRIPT

# write_fragment <file> <kind> <command> <hash>: the fixture in the shape the
# check expects. kind=none is the minimal failed fragment.
write_fragment() {
    local file="$1" kind="$2" command="$3" hash="$4"
    if [[ "$kind" == "none" ]]; then
        jq -n '
            {schemaVersion: 1, path: ["check-demo"], description: "Check demo", aliases: [], meta: [], items: [], subcommands: [],
             source: {kind: "none"}, hash: "", notes: ""}
        ' >"$file"
        return
    fi
    jq -n --arg kind "$kind" --arg command "$command" --arg hash "$hash" '
        {schemaVersion: 1, path: ["check-demo"], description: "Check demo", aliases: [], meta: [],
         items: [{"kind": "option", "names": ["--foo"], "notations": ["<VALUE>"], "choices": [],
                  "choice_fn": "_choice_foo", "repeatable": false, "prefixed": false,
                  "delimiter": null, "description": "Foo value"}],
         subcommands: [], source: {kind: $kind, command: $command}, hash: $hash, notes: ""}
    ' >"$file"
}

# check_fragment <label> <needle> [<extra args...>]: run the check on the demo
# cache and assert the reported status line.
check_fragment() {
    local label="$1" needle="$2"
    shift 2
    check_output "$label" "$needle" bash "$SCRIPTS/check-fragment.sh" check-demo \
        --cache-dir "$check_cache" --completion "$completion" "$@"
}

write_fragment "$check_cache/_root.json" help 'check-demo --help' ''
root_hash="$(bash "$SCRIPTS/fragment-hash.sh" check-demo --cache-dir "$check_cache" \
    --completion "$completion" --command 'check-demo --help' \
    --fragment "$check_cache/_root.json")"
write_fragment "$check_cache/_root.json" help 'check-demo --help' "$root_hash"
check_fragment "check-fragment hit" "status=hit"
assert_contains "check-fragment hit hash" "$CHECK_LOG" "hash=$root_hash"

# Only the target fragment is consulted: an unrelated invalid file does not
# affect the root check.
printf '{}\n' >"$check_cache/other.json"
check_fragment "check-fragment ignores other nodes" "status=hit"
rm -f "$check_cache/other.json"

# A manual SPEC notation/choice_fn edit changes the context DIFF -> mismatch.
sed 's/_choice_foo/_choice_bar/' "$completion" >"$TMP_DIR/check-completion-edit.sh"
check_output "check-fragment context diff mismatch" "status=invalid reason=hash-mismatch" \
    bash "$SCRIPTS/check-fragment.sh" check-demo --cache-dir "$check_cache" \
    --completion "$TMP_DIR/check-completion-edit.sh"

# Changed help -> hash mismatch.
cat >"$TMP_DIR/bin/check-demo" <<'DEMO'
#!/usr/bin/env bash
printf 'Usage: check-demo [OPTIONS]\n\nOptions:\n  --foo  Changed value\n'
DEMO
chmod +x "$TMP_DIR/bin/check-demo"
check_fragment "check-fragment hash mismatch" "status=invalid reason=hash-mismatch"
write_help

# A missing fragment is reported without touching the cache.
check_fragment "check-fragment missing" "path=check-demo missing status=missing" missing

# A colon subcommand segment (pm2 profile:mem) is a valid path component; on
# Windows its cache file name encodes the colon so the file can be stored.
case "$(uname -s 2>/dev/null || true)" in
    CYGWIN* | MINGW* | MSYS*) colon_fragment="$check_cache/profile%3Amem.json" ;;
    *) colon_fragment="$check_cache/profile:mem.json" ;;
esac
jq -n '{
    schemaVersion: 1, path: ["check-demo", "profile:mem"], description: "Sample PM2 heap memory",
    aliases: [], meta: [], items: [], subcommands: [],
    source: {kind: "help", command: "check-demo profile:mem --help"}, hash: "", notes: ""
}' >"$colon_fragment"
colon_hash="$(bash "$SCRIPTS/fragment-hash.sh" check-demo 'profile:mem' --cache-dir "$check_cache" \
    --completion "$completion")"
fragment_jq "$colon_fragment" --arg hash "$colon_hash" '.hash = $hash'
check_fragment "check-fragment colon hit" "path=check-demo profile:mem status=hit" 'profile:mem'
rm -f "$colon_fragment"

# A shell-expression source.command is re-executed and compared.
write_fragment "$check_cache/_root.json" help 'check-demo --help | sed s/^/x/' ''
pipe_hash="$(bash "$SCRIPTS/fragment-hash.sh" check-demo --cache-dir "$check_cache" \
    --completion "$completion" --command 'check-demo --help | sed s/^/x/' \
    --fragment "$check_cache/_root.json")"
write_fragment "$check_cache/_root.json" help 'check-demo --help | sed s/^/x/' "$pipe_hash"
check_fragment "check-fragment shell expression hit" "status=hit"
assert_contains "check-fragment shell expression hash" "$CHECK_LOG" "hash=$pipe_hash"

# Widening that segment does not weaken the rest of the character set.
check_rejects "check-fragment rejects an unsafe path component" \
    "invalid command path component: a b" \
    bash "$SCRIPTS/check-fragment.sh" check-demo 'a b' --cache-dir "$check_cache" --completion "$completion"

# --- statuses -------------------------------------------------------------
# kind none -> failed, reusing the minimal fragment.
write_fragment "$check_cache/_root.json" none '' ''
check_fragment "check-fragment failed" "status=failed hash="

# Unavailable help -> unverified, not invalid.
printf '{"schemaVersion":1,"path":["check-demo"],"description":"Check demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"help","command":"no-such-check-command --help"},"hash":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","notes":""}\n' >"$check_cache/_root.json"
check_fragment "check-fragment unverified" "status=unverified reason=help-unavailable"

# Schema failures are invalid and are never migrated.
write_fragment "$check_cache/_root.json" help 'check-demo --help' "$root_hash"
fragment_jq "$check_cache/_root.json" 'del(.hash)'
check_fragment "check-fragment missing hash invalid" "status=invalid reason=schema"

printf '{"schemaVersion":1,"path":["check-demo"],"description":"Check demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","notes":""}\n' >"$check_cache/_root.json"
check_fragment "check-fragment none hash invalid" "status=invalid reason=schema"

# A control character is rejected before execution; the second line must not
# run.
sentinel="$TMP_DIR/check-sentinel"
: >"$sentinel"
bad_command=$'check-demo --help\nrm -f '"$sentinel"
jq -n --arg cmd "$bad_command" '{
    schemaVersion: 1, path: ["check-demo"], description: "Check demo", aliases: [], meta: [],
    items: [], subcommands: [], source: {kind: "help", command: $cmd},
    hash: "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", notes: ""
}' >"$check_cache/_root.json"
check_fragment "check-fragment control character invalid" "status=invalid reason=schema"
check "check-fragment did not execute the second line" test -f "$sentinel"

# The check writes no help file.
check "check-fragment writes no txt" test -z "$(find "$check_cache" -name '*.txt' -print -quit)"

helper_finish
