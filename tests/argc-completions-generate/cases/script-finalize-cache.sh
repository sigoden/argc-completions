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

# broken.json is a failed node (kind none, empty hash), stale.json and the
# nested file are not declared, legacy.txt is not a fragment at all.
printf '{"schemaVersion":1,"path":["%s","broken"],"description":"Broken","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":"help unavailable"}\n' "$finalize_root" >"$finalize_cache/broken.json"
printf '{"schemaVersion":1,"path":["%s","stale"],"description":"Stale","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/stale.json"
printf '{"schemaVersion":1,"path":["%s","old","nested"],"description":"Nested","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/old/nested.json"
printf 'legacy help\n' >"$finalize_cache/legacy.txt"

check_output "finalize-cache runs" "synced=1 removed=2" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
assert_jq "finalize-cache syncs description" '.description == "Canonical child"' "$finalize_cache/child.json"
assert_jq "finalize-cache syncs aliases" '.aliases == ["c"]' "$finalize_cache/child.json"
assert_jq "finalize-cache keeps items" '.items == []' "$finalize_cache/child.json"
assert_jq "finalize-cache keeps child source" '.source.command == "finalize-demo child --help"' "$finalize_cache/child.json"
assert_jq "finalize-cache keeps child hash" \
    '.hash == "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"' "$finalize_cache/child.json"
assert_jq "finalize-cache marks child succeeded" \
    '.subcommands[] | select(.name == "child") | .status == "succeeded"' "$finalize_cache/_root.json"
assert_jq "finalize-cache marks failed" \
    '.subcommands[] | select(.name == "broken") | .status == "failed"' "$finalize_cache/_root.json"
assert_jq "finalize-cache marks missing todo" \
    '.subcommands[] | select(.name == "gone") | .status == "todo"' "$finalize_cache/_root.json"
check "finalize-cache removes stale json" test ! -e "$finalize_cache/stale.json"
check "finalize-cache removes nested stale" test ! -e "$finalize_cache/old/nested.json"
check "finalize-cache removes empty dir" test ! -d "$finalize_cache/old"
check "finalize-cache keeps legacy txt" test -f "$finalize_cache/legacy.txt"
check "finalize-cache idempotent" bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"

# A trailing slash must not make declared fragments look stale.
check_output "finalize-cache trailing slash runs" "removed=0" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache/"
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
check_output "finalize-cache accepts missing subcommands" "" \
    bash "$SCRIPTS/finalize-cache.sh" "$nosubs_root" --cache-dir "$nosubs_cache"
check "finalize-cache missing subcommands keeps root" test -f "$nosubs_cache/_root.json"
assert_jq "finalize-cache missing subcommands normalizes field" '.subcommands == []' "$nosubs_cache/_root.json"

fragment_jq "$nosubs_cache/_root.json" '.subcommands = null'
check_output "finalize-cache accepts null subcommands" "" \
    bash "$SCRIPTS/finalize-cache.sh" "$nosubs_root" --cache-dir "$nosubs_cache"
assert_jq "finalize-cache null subcommands normalizes field" '.subcommands == []' "$nosubs_cache/_root.json"

# --- refusal paths --------------------------------------------------------
# An invalid declared child refuses before any sync or prune.
mkdir -p "$finalize_cache/old"
printf '{"schemaVersion":1,"path":["%s","broken"],"description":"Broken","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":"help unavailable"}\n' "$finalize_root" >"$finalize_cache/broken.json"
printf '{"schemaVersion":1,"path":["%s","stale"],"description":"Stale","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":"","notes":""}\n' "$finalize_root" >"$finalize_cache/stale.json"
fragment_jq "$finalize_cache/child.json" 'del(.hash)'
expect_failure "finalize-cache rejects invalid child" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
check "finalize-cache invalid child does not prune" test -f "$finalize_cache/stale.json"

# Restore the child and remove the root hash: cleanup must still be refused.
fragment_jq "$finalize_cache/child.json" '.hash = "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"'
fragment_jq "$finalize_cache/_root.json" 'del(.hash)'
expect_failure "finalize-cache rejects invalid root" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$finalize_cache"
check "finalize-cache invalid root does not prune" test -f "$finalize_cache/stale.json"

expect_failure "finalize-cache rejects missing root" \
    bash "$SCRIPTS/finalize-cache.sh" "$finalize_root" --cache-dir "$TMP_DIR/no-cache-dir"
expect_failure "finalize-cache rejects invalid root name" \
    bash "$SCRIPTS/finalize-cache.sh" "bad/root" --cache-dir "$finalize_cache"

helper_finish
