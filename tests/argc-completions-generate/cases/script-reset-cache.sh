#!/usr/bin/env bash
# scripts/reset-cache.sh: full/subtree resets, guards, assembly blocking.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# preflight is used below to observe the cache state; it needs the demo command.
mkdir -p "$TMP_DIR/bin"
cat >"$TMP_DIR/bin/demo" <<'DEMO'
#!/usr/bin/env bash
case "$1" in
    --help) echo "Usage: demo [OPTIONS]"; echo "Options:"; echo "  -v, --verbose  Verbose";;
    remote) echo "Usage: demo remote";;
    *) :;;
esac
DEMO
chmod +x "$TMP_DIR/bin/demo"
cp "$FIXTURES/contexts/context.sh" "$TMP_DIR/existing.sh"
PATH="$TMP_DIR/bin:$PATH"

# ---------------------------------------------------------------------------
# reset-cache.sh
# ---------------------------------------------------------------------------
reset_root="demo-reset-$$"
reset_cache="$ROOT_DIR/cache/compile/$reset_root"
keep_root="demo-keep-$$"
keep_cache="$ROOT_DIR/cache/compile/$keep_root"
mkdir -p "$reset_cache/sub" "$keep_cache"
printf '{"schemaVersion":1}\n' >"$reset_cache/_root.json"
printf 'demo --help\n' >"$reset_cache/_root.txt"
printf 'demo --help\n' >"$reset_cache/_root.new.txt"
printf '{}\n' >"$reset_cache/sub.json"
printf '{}\n' >"$reset_cache/sub/nested.json"
printf 'keep\n' >"$keep_cache/_root.txt"
reset_out="$TMP_DIR/reset-cache.txt"
check_to "$reset_out" "reset-cache full runs" bash "$SCRIPTS/reset-cache.sh" "$reset_root"
assert_contains "reset-cache full mode" "$reset_out" 'mode=full'
assert_contains "reset-cache reports reset" "$reset_out" 'reset=1'
assert_contains "reset-cache reports cache dir" "$reset_out" "cache_dir=$reset_cache"
assert_contains "reset-cache reports root fragment" "$reset_out" "fragment=$reset_cache/_root.json"
assert_contains "reset-cache reports root help" "$reset_out" "help=$reset_cache/_root.txt"
check "reset-cache recreates cache dir" test -d "$reset_cache"
check "reset-cache clears fragments" bash -c "test -z \"\$(ls -A '$reset_cache')\""
check "reset-cache keeps other roots" test -f "$keep_cache/_root.txt"
check "reset-cache idempotent" bash "$SCRIPTS/reset-cache.sh" "$reset_root"
expect_failure "reset-cache rejects invalid root" bash "$SCRIPTS/reset-cache.sh" "bad/root"
rm -rf "$reset_cache" "$keep_cache"

# Subtree reset: target + descendants only.
subtree_root="demo-subtree-$$"
subtree_cache="$ROOT_DIR/cache/compile/$subtree_root"
mkdir -p "$subtree_cache/add" "$subtree_cache/other/nested"
cat >"$subtree_cache/_root.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$subtree_root"],
  "description": "Demo",
  "aliases": [],
  "meta": [],
  "items": [],
  "subcommands": [
    {"name": "add", "aliases": ["a"], "description": "Add", "status": "succeeded"},
    {"name": "other", "aliases": [], "description": "Other", "status": "succeeded"}
  ],
  "source": {"kind": "none"},
  "notes": ""
}
JSON
cat >"$subtree_cache/other.json" <<JSON
{
  "schemaVersion": 1,
  "path": ["$subtree_root", "other"],
  "description": "Other",
  "aliases": [],
  "meta": [],
  "items": [],
  "subcommands": [
    {"name": "nested", "aliases": [], "description": "Nested", "status": "succeeded"}
  ],
  "source": {"kind": "none"},
  "notes": ""
}
JSON
printf 'demo --help\n' >"$subtree_cache/_root.txt"
printf '{"schemaVersion":1,"path":["%s","add"]}\n' "$subtree_root" >"$subtree_cache/add.json"
printf 'add --help\n' >"$subtree_cache/add.txt"
printf '{"schemaVersion":1,"path":["%s","add","nested"]}\n' "$subtree_root" >"$subtree_cache/add/nested.json"
printf 'nested --help\n' >"$subtree_cache/add/nested.txt"
printf 'other --help\n' >"$subtree_cache/other.txt"
printf '{"schemaVersion":1,"path":["%s","other","nested"]}\n' "$subtree_root" >"$subtree_cache/other/nested.json"
printf 'nested --help\n' >"$subtree_cache/other/nested.txt"

# Alias and undeclared paths fail before deleting anything.
if bash "$SCRIPTS/reset-cache.sh" "$subtree_root" a 2>"$TMP_DIR/reset-alias.txt"; then
    fail "reset-cache rejects alias (unexpected success)"
else
    pass "reset-cache rejects alias"
fi
assert_contains "reset-cache alias hint" "$TMP_DIR/reset-alias.txt" "canonical name: add"
check "reset-cache alias keeps fragments" test -f "$subtree_cache/add.json"
if bash "$SCRIPTS/reset-cache.sh" "$subtree_root" missing 2>"$TMP_DIR/reset-missing.txt"; then
    fail "reset-cache rejects undeclared subcommand (unexpected success)"
else
    pass "reset-cache rejects undeclared subcommand"
fi
assert_contains "reset-cache undeclared hint" "$TMP_DIR/reset-missing.txt" "subcommand not declared"
check "reset-cache undeclared keeps fragments" test -f "$subtree_cache/_root.json"

# Path escape guard.
mkdir -p "$ROOT_DIR/cache/reset-sentinel"
printf 'keep\n' >"$ROOT_DIR/cache/reset-sentinel/keep"
expect_failure "reset-cache rejects dotdot root" bash "$SCRIPTS/reset-cache.sh" ..
expect_failure "reset-cache rejects dotdot subcommand" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" ..
expect_failure "reset-cache rejects dot subcommand" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" .
check "reset-cache refuses path escape" test -f "$ROOT_DIR/cache/reset-sentinel/keep"
rm -rf "$ROOT_DIR/cache/reset-sentinel"

# Subtree reset of add.
subtree_out="$TMP_DIR/reset-cache-subtree.txt"
check_to "$subtree_out" "reset-cache subtree runs" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" add
assert_contains "reset-cache subtree mode" "$subtree_out" 'mode=subtree'
assert_contains "reset-cache subtree path" "$subtree_out" "path=$subtree_root add"
assert_contains "reset-cache subtree fragment" "$subtree_out" "fragment=$subtree_cache/add.json"
assert_contains "reset-cache subtree parent" "$subtree_out" "parent_fragment=$subtree_cache/_root.json"
check "reset-cache subtree removes fragment" test ! -e "$subtree_cache/add.json"
check "reset-cache subtree removes help" test ! -e "$subtree_cache/add.txt"
check "reset-cache subtree removes descendants" test ! -e "$subtree_cache/add/nested.json"
check "reset-cache subtree keeps root help" test -f "$subtree_cache/_root.txt"
check "reset-cache subtree keeps sibling fragment" test -f "$subtree_cache/other.json"
check "reset-cache subtree keeps sibling help" test -f "$subtree_cache/other.txt"
check "reset-cache subtree keeps sibling descendant" test -f "$subtree_cache/other/nested.json"
check "reset-cache subtree marks todo" test "$(jq -r --arg name add '.subcommands[] | select(.name == $name) | .status' "$subtree_cache/_root.json")" = todo
check "reset-cache subtree keeps sibling status" test "$(jq -r --arg name other '.subcommands[] | select(.name == $name) | .status' "$subtree_cache/_root.json")" = succeeded
check "reset-cache subtree idempotent" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" add

# Nested target updates its immediate parent only.
nested_out="$TMP_DIR/reset-cache-nested.txt"
check_to "$nested_out" "reset-cache nested runs" bash "$SCRIPTS/reset-cache.sh" "$subtree_root" other nested
assert_contains "reset-cache nested parent" "$nested_out" "parent_fragment=$subtree_cache/other.json"
check "reset-cache nested removes fragment" test ! -e "$subtree_cache/other/nested.json"
check "reset-cache nested removes help" test ! -e "$subtree_cache/other/nested.txt"
check "reset-cache nested marks todo" test "$(jq -r '.subcommands[] | select(.name == "nested") | .status' "$subtree_cache/other.json")" = todo
check "reset-cache nested keeps root status" test "$(jq -r '.subcommands[] | select(.name == "other") | .status' "$subtree_cache/_root.json")" = succeeded
rm -rf "$subtree_cache"

# Subtree reset blocks assembly until the subtree is recompiled.
mkdir -p "$ROOT_DIR/cache/compile/demo"
cp -R "$FIXTURES/fragments/no-choice/." "$ROOT_DIR/cache/compile/demo/"
quiet bash "$SCRIPTS/reset-cache.sh" demo remote >/dev/null
check "reset-cache subtree removes remote fragment" test ! -e "$ROOT_DIR/cache/compile/demo/remote.json"
check "reset-cache subtree marks root child todo" test "$(jq -r '.subcommands[] | select(.name == "remote") | .status' "$ROOT_DIR/cache/compile/demo/_root.json")" = todo
expect_failure "assemble blocks after subtree reset" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$ROOT_DIR/cache/compile/demo" --stdout
rm -rf "$ROOT_DIR/cache/compile/demo"

# Reset makes preflight report no cached root help, which forces cache=new.
mkdir -p "$ROOT_DIR/cache/compile/demo"
printf 'demo --help\n' >"$ROOT_DIR/cache/compile/demo/_root.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" >"$TMP_DIR/preflight-before-reset.txt"
check "preflight sees root help before reset" grep -q '^root_help_exists=1$' "$TMP_DIR/preflight-before-reset.txt"
quiet bash "$SCRIPTS/reset-cache.sh" demo >/dev/null
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" >"$TMP_DIR/preflight-after-reset.txt"
check "preflight sees no root help after reset" grep -q '^root_help_exists=0$' "$TMP_DIR/preflight-after-reset.txt"
check "reset removes cached root help" test ! -f "$ROOT_DIR/cache/compile/demo/_root.txt"
rm -rf "$ROOT_DIR/cache/compile/demo"

helper_finish
