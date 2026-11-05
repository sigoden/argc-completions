#!/usr/bin/env bash
# scripts/preflight.sh: existing/new/missing detection and path report.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

quiet bash "$SCRIPTS/preflight.sh" --help >"$TMP_DIR/preflight-help.txt" 2>&1
assert_contains "preflight usage optional root" "$TMP_DIR/preflight-help.txt" 'Usage: preflight.sh [<root>]'

# The command preflight probes: one root with help, one subcommand.
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
PATH="$TMP_DIR/bin:$PATH"

# preflight_run <out> [<args...>]: capture the key=value report.
preflight_run() {
    local out="$1"
    shift
    quiet bash "$SCRIPTS/preflight.sh" "$@" >"$out"
}

# --- no cache yet ---------------------------------------------------------
rm -rf "$ROOT_DIR/cache/compile/demo"
cp "$FIXTURES/contexts/context.sh" "$TMP_DIR/existing.sh"
preflight_out="$TMP_DIR/preflight.txt"
preflight_run "$preflight_out" demo --completion "$TMP_DIR/existing.sh" --output "$TMP_DIR/out.sh"
assert_has_line "preflight existing" "$preflight_out" 'existing=1'
assert_has_line "preflight skill root" "$preflight_out" "skill_root=$SKILL_DIR"
assert_has_line "preflight cache dir" "$preflight_out" "cache_dir=$ROOT_DIR/cache/compile/demo"
assert_has_line "preflight cache exists flag" "$preflight_out" 'cache_exists=0'
assert_has_line "preflight root fragment flag" "$preflight_out" 'root_fragment_exists=0'
assert_has_line "preflight empty cache version" "$preflight_out" 'cache_version='

preflight_run "$TMP_DIR/preflight-paths.txt"
assert_has_line "preflight paths skill root" "$TMP_DIR/preflight-paths.txt" "skill_root=$SKILL_DIR"
assert_has_line "preflight paths repo root" "$TMP_DIR/preflight-paths.txt" "repo_root=$ROOT_DIR"
assert_has_line "preflight paths marker" "$TMP_DIR/preflight-paths.txt" 'mode=paths'
expect_failure "preflight override without root" \
    bash "$SCRIPTS/preflight.sh" --output "$TMP_DIR/no-root.sh"

# A script assembled by this skill carries the block layout, so it is `new`.
assemble_to "$TMP_DIR/preflight-new.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --stdout
preflight_run "$TMP_DIR/preflight-new.txt" demo --completion "$TMP_DIR/preflight-new.sh"
assert_has_line "preflight blocks new" "$TMP_DIR/preflight-new.txt" 'blocks=new'
assert_has_line "preflight prompt region" "$TMP_DIR/preflight-new.txt" 'prompt_region=1'
preflight_run "$TMP_DIR/preflight-missing.txt" demo --output "$TMP_DIR/new-out.sh"
assert_has_line "preflight missing completion" "$TMP_DIR/preflight-missing.txt" 'existing=0'
assert_has_line "preflight missing blocks" "$TMP_DIR/preflight-missing.txt" 'blocks=missing'

printf '#!/usr/bin/env bash\n# @cmd Demo\ndemo() { :; }\n' >"$TMP_DIR/unmarked.sh"
preflight_run "$TMP_DIR/preflight-unmarked.txt" demo --completion "$TMP_DIR/unmarked.sh"
assert_has_line "preflight unmarked blocks" "$TMP_DIR/preflight-unmarked.txt" 'blocks=unmarked'
check "preflight does not create cache" test ! -d "$ROOT_DIR/cache/compile/demo"

# --- an existing cache ----------------------------------------------------
mkdir -p "$ROOT_DIR/cache/compile/demo"
printf '{"schemaVersion":1,"path":["demo"],"description":"Demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":""}\n' >"$ROOT_DIR/cache/compile/demo/_root.json"
preflight_run "$TMP_DIR/preflight-cache.txt" demo --completion "$TMP_DIR/existing.sh"
assert_has_line "preflight cache exists after mkdir" "$TMP_DIR/preflight-cache.txt" 'cache_exists=1'
assert_has_line "preflight root fragment exists" "$TMP_DIR/preflight-cache.txt" 'root_fragment_exists=1'
assert_has_line "preflight cache version" "$TMP_DIR/preflight-cache.txt" 'cache_version=1'
rm -rf "$ROOT_DIR/cache/compile/demo"

expect_failure "preflight missing command" bash "$SCRIPTS/preflight.sh" no-such-command-xyz

helper_finish
