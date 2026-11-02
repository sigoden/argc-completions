#!/usr/bin/env bash
# scripts/preflight.sh: existing/new/missing detection and path report.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# preflight.sh
# ---------------------------------------------------------------------------
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

rm -rf "$ROOT_DIR/cache/compile/demo"
cp "$FIXTURES/contexts/context.sh" "$TMP_DIR/existing.sh"
preflight_out="$TMP_DIR/preflight.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" --output "$TMP_DIR/out.sh" >"$preflight_out"
check "preflight existing" grep -q '^existing=1$' "$preflight_out"
check "preflight skill root" grep -q "^skill_root=$SKILL_DIR$" "$preflight_out"
check "preflight cache dir" grep -q "^cache_dir=$ROOT_DIR/cache/compile/demo$" "$preflight_out"
check "preflight cache exists flag" grep -q '^cache_exists=0$' "$preflight_out"
check "preflight root fragment flag" grep -q '^root_fragment_exists=0$' "$preflight_out"
check "preflight empty cache version" grep -q '^cache_version=$' "$preflight_out"
quiet bash "$SCRIPTS/preflight.sh" >"$TMP_DIR/preflight-paths.txt"
check "preflight paths skill root" grep -q "^skill_root=$SKILL_DIR$" "$TMP_DIR/preflight-paths.txt"
check "preflight paths repo root" grep -q "^repo_root=$ROOT_DIR$" "$TMP_DIR/preflight-paths.txt"
check "preflight paths marker" grep -q '^mode=paths$' "$TMP_DIR/preflight-paths.txt"
expect_failure "preflight override without root" bash "$SCRIPTS/preflight.sh" --output "$TMP_DIR/no-root.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --stdout >"$TMP_DIR/preflight-new.sh"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/preflight-new.sh" >"$TMP_DIR/preflight-new2.txt"
check "preflight blocks new" grep -q '^blocks=new$' "$TMP_DIR/preflight-new2.txt"
check "preflight prompt region" grep -q '^prompt_region=1$' "$TMP_DIR/preflight-new2.txt"
quiet bash "$SCRIPTS/preflight.sh" demo --output "$TMP_DIR/new-out.sh" >"$TMP_DIR/preflight-missing.txt"
check "preflight missing completion" grep -q '^existing=0$' "$TMP_DIR/preflight-missing.txt"
check "preflight missing blocks" grep -q '^blocks=missing$' "$TMP_DIR/preflight-missing.txt"
printf '#!/usr/bin/env bash\n# @cmd Demo\ndemo() { :; }\n' >"$TMP_DIR/unmarked.sh"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/unmarked.sh" >"$TMP_DIR/preflight-unmarked.txt"
check "preflight unmarked blocks" grep -q '^blocks=unmarked$' "$TMP_DIR/preflight-unmarked.txt"
check "preflight does not create cache" test ! -d "$ROOT_DIR/cache/compile/demo"
mkdir -p "$ROOT_DIR/cache/compile/demo"
printf '{"schemaVersion":1,"path":["demo"],"description":"Demo","aliases":[],"meta":[],"items":[],"subcommands":[],"source":{"kind":"none"},"hash":""}\n' >"$ROOT_DIR/cache/compile/demo/_root.json"
quiet bash "$SCRIPTS/preflight.sh" demo --completion "$TMP_DIR/existing.sh" >"$TMP_DIR/preflight-cache.txt"
check "preflight cache exists after mkdir" grep -q '^cache_exists=1$' "$TMP_DIR/preflight-cache.txt"
check "preflight root fragment exists" grep -q '^root_fragment_exists=1$' "$TMP_DIR/preflight-cache.txt"
check "preflight cache version" grep -q '^cache_version=1$' "$TMP_DIR/preflight-cache.txt"
rm -rf "$ROOT_DIR/cache/compile/demo"
expect_failure "preflight missing command" bash "$SCRIPTS/preflight.sh" no-such-command-xyz


helper_finish
