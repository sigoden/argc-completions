#!/usr/bin/env bash
# scripts/delete-cache.sh: full-root deletion, guards, preserved neighbors.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

delete_root="demo-delete-$$"
delete_cache="$ROOT_DIR/cache/compile/$delete_root"
keep_root="demo-keep-$$"
keep_cache="$ROOT_DIR/cache/compile/$keep_root"
completion="$ROOT_DIR/completions/$delete_root.sh"

mkdir -p "$delete_cache/sub" "$keep_cache"
printf '{"schemaVersion":1}\n' >"$delete_cache/_root.json"
printf 'demo --help\n' >"$delete_cache/_root.txt"
printf '{}\n' >"$delete_cache/sub.json"
printf '{}\n' >"$delete_cache/sub/nested.json"
printf 'keep\n' >"$keep_cache/_root.json"
printf '#!/usr/bin/env bash\n' >"$completion"

check_output "delete-cache full runs" "mode=full" bash "$SCRIPTS/delete-cache.sh" "$delete_root"
assert_contains "delete-cache reports deletion" "$CHECK_LOG" 'deleted=1'
assert_contains "delete-cache reports cache dir" "$CHECK_LOG" "cache_dir=$delete_cache"
check "delete-cache recreates cache dir" test -d "$delete_cache"
shopt -s nullglob dotglob
remaining=("$delete_cache"/*)
shopt -u nullglob dotglob
check "delete-cache clears fragments" test "${#remaining[@]}" -eq 0
check "delete-cache keeps other roots" test -f "$keep_cache/_root.json"
check "delete-cache keeps completion script" test -f "$completion"
check "delete-cache idempotent" bash "$SCRIPTS/delete-cache.sh" "$delete_root"

# --- guards ---------------------------------------------------------------
expect_failure "delete-cache rejects invalid root" bash "$SCRIPTS/delete-cache.sh" "bad/root"
expect_failure "delete-cache rejects a subcommand path" bash "$SCRIPTS/delete-cache.sh" "$delete_root" add
expect_failure "delete-cache rejects dotdot" bash "$SCRIPTS/delete-cache.sh" ..
expect_failure "delete-cache rejects dot" bash "$SCRIPTS/delete-cache.sh" .
expect_failure "delete-cache rejects empty root" bash "$SCRIPTS/delete-cache.sh" ""

# Path escape guard: a sibling cache directory must survive.
mkdir -p "$ROOT_DIR/cache/delete-sentinel"
printf 'keep\n' >"$ROOT_DIR/cache/delete-sentinel/keep"
expect_failure "delete-cache refuses path escape" bash "$SCRIPTS/delete-cache.sh" '../delete-sentinel'
check "delete-cache leaves sentinel" test -f "$ROOT_DIR/cache/delete-sentinel/keep"

rm -rf "$ROOT_DIR/cache/delete-sentinel" "$delete_cache" "$keep_cache"
rm -f "$completion"

helper_finish
