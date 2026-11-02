#!/usr/bin/env bash
# scripts/finalize-cache.sh: metadata/status sync, stale pruning, safety.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

finalize_root="finalize-demo-$$"
finalize_cache="$TMP_DIR/cache-finalize"
mkdir -p "$finalize_cache/old"

cat >"$finalize_cache/_root.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$finalize_root"],
  "description": "Finalize demo",
  "aliases": [],
  "meta": [],
  "items": [],
  "subcommands": [
    {"name": "child", "aliases": ["c"], "description": "Canonical child", "status": "todo"},
    {"name": "broken", "aliases": [], "description": "Broken", "status": "todo"},
    {"name": "gone", "aliases": [], "description": "Gone", "status": "succeeded"}
  ],
  "source": {"kind": "help", "command": "finalize-demo --help"},
  "hash": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
  "notes": ""
}
JSON

cat >"$finalize_cache/child.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$finalize_root", "child"],
  "description": "Stale description",
  "aliases": ["old"],
  "meta": [],
  "items": [],
  "subcommands": [],
  "source": {"kind": "help", "command": "finalize-demo child --help"},
  "hash": "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb",
  "notes": ""
}
JSON

printf '{"schemaVersion":1,"path":["%s","broken"],"description":"Broken","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":"help unavailable"}\n' "$finalize_root" >"$finalize_cache/broken.json"
printf '{"schemaVersion":1,"path":["%s","stale"],"description":"Stale","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/stale.json"
printf '{"schemaVersion":1,"path":["%s","old","nested"],"description":"Nested","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/old/nested.json"
printf 'legacy help\n' >"$finalize_cache/legacy.txt"

finalize_out="$TMP_DIR/finalize.txt"
check_to "$finalize_out" "finalize-cache runs" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
assert_contains "finalize-cache synced count" "$finalize_out" "synced=1 removed=2"
check "finalize-cache syncs description" test "$(jq -r '.description' "$finalize_cache/child.json")" = "Canonical child"
check "finalize-cache syncs aliases" test "$(jq -c '.aliases' "$finalize_cache/child.json")" = '["c"]'
check "finalize-cache keeps items" test "$(jq -c '.items' "$finalize_cache/child.json")" = '[]'
check "finalize-cache keeps child source" test "$(jq -r '.source.command' "$finalize_cache/child.json")" = "finalize-demo child --help"
check "finalize-cache keeps child hash" test "$(jq -r '.hash' "$finalize_cache/child.json")" = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
check "finalize-cache marks child succeeded" test "$(jq -r '.subcommands[] | select(.name == "child") | .status' "$finalize_cache/_root.json")" = succeeded
check "finalize-cache marks failed" test "$(jq -r '.subcommands[] | select(.name == "broken") | .status' "$finalize_cache/_root.json")" = failed
check "finalize-cache marks missing todo" test "$(jq -r '.subcommands[] | select(.name == "gone") | .status' "$finalize_cache/_root.json")" = todo
check "finalize-cache removes stale json" test ! -e "$finalize_cache/stale.json"
check "finalize-cache removes nested stale" test ! -e "$finalize_cache/old/nested.json"
check "finalize-cache removes empty dir" test ! -d "$finalize_cache/old"
check "finalize-cache keeps legacy txt" test -f "$finalize_cache/legacy.txt"
check "finalize-cache idempotent" bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"

# A trailing slash must not make declared fragments look stale.
trailing_out="$TMP_DIR/finalize-trailing.txt"
check_to "$trailing_out" "finalize-cache trailing slash runs" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache/"
assert_contains "finalize-cache trailing slash removes nothing" "$trailing_out" "removed=0"
check "finalize-cache trailing slash keeps root" test -f "$finalize_cache/_root.json"
check "finalize-cache trailing slash keeps child" test -f "$finalize_cache/child.json"

# A schema-valid fragment may omit or null subcommands; finalize must normalize
# the field instead of failing with an invalid jq path expression.
nosubs_root="finalize-nosubs-$$"
nosubs_cache="$TMP_DIR/cache-finalize-nosubs"
mkdir -p "$nosubs_cache"
cat >"$nosubs_cache/_root.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$nosubs_root"],
  "description": "No subcommands",
  "aliases": [],
  "meta": [],
  "items": [],
  "source": {"kind": "none"},
  "hash": "",
  "notes": ""
}
JSON
check_to "$TMP_DIR/finalize-nosubs.txt" "finalize-cache accepts missing subcommands" \
    bash "$SCRIPTS/finalize-cache.sh" "$nosubs_root" --cache-dir "$nosubs_cache"
check "finalize-cache missing subcommands keeps root" test -f "$nosubs_cache/_root.json"
check "finalize-cache missing subcommands normalizes field" test "$(jq -c '.subcommands' "$nosubs_cache/_root.json")" = '[]'

jq '.subcommands = null' "$nosubs_cache/_root.json" >"$TMP_DIR/finalize-nosubs.tmp" \
    && mv "$TMP_DIR/finalize-nosubs.tmp" "$nosubs_cache/_root.json"
check_to "$TMP_DIR/finalize-null-subs.txt" "finalize-cache accepts null subcommands" \
    bash "$SCRIPTS/finalize-cache.sh" "$nosubs_root" --cache-dir "$nosubs_cache"
check "finalize-cache null subcommands normalizes field" test "$(jq -c '.subcommands' "$nosubs_cache/_root.json")" = '[]'

# An invalid declared child refuses before any sync or prune.
mkdir -p "$finalize_cache/old"
printf '{"schemaVersion":1,"path":["%s","broken"],"description":"Broken","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":"help unavailable"}\n' "$finalize_root" >"$finalize_cache/broken.json"
printf '{"schemaVersion":1,"path":["%s","stale"],"description":"Stale","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/stale.json"
jq 'del(.hash)' "$finalize_cache/child.json" >"$TMP_DIR/bad-child.json" && mv "$TMP_DIR/bad-child.json" "$finalize_cache/child.json"
expect_failure "finalize-cache rejects invalid child" bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
check "finalize-cache invalid child does not prune" test -f "$finalize_cache/stale.json"

# Restore the child and remove the root hash: cleanup must still be refused.
jq '.hash = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"' "$finalize_cache/child.json" >"$TMP_DIR/good-child.json" && mv "$TMP_DIR/good-child.json" "$finalize_cache/child.json"
jq 'del(.hash)' "$finalize_cache/_root.json" >"$TMP_DIR/bad-root.json" && mv "$TMP_DIR/bad-root.json" "$finalize_cache/_root.json"
expect_failure "finalize-cache rejects invalid root" bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
check "finalize-cache invalid root does not prune" test -f "$finalize_cache/stale.json"

expect_failure "finalize-cache rejects missing root" bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$TMP_DIR/no-cache-dir"
expect_failure "finalize-cache rejects invalid root name" bash "$SCRIPTS/finalize-cache.sh" "bad/root" --cache-dir "$finalize_cache"

helper_finish
