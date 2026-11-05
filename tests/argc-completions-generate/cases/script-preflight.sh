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

# --- external subcommands --------------------------------------------------
# The host completion declares the root-level meta; the root binary and the
# host completion are unique to this Case so parallel cases never collide.
ext_host="pfhost$$"
ext_root="$ext_host-ext"
multi_root="$ext_host-llvm-cov"
nohost_root="nohost$$-ext"
host_completion="$ROOT_DIR/completions/$ext_host.sh"
cleanup_preflight_fixtures() {
    rm -rf "$TMP_DIR" \
        "$ROOT_DIR/completions/$ext_host.sh" \
        "$ROOT_DIR/cache/compile/$ext_root" \
        "$ROOT_DIR/cache/compile/$multi_root" \
        "$ROOT_DIR/cache/compile/$nohost_root"
}
trap cleanup_preflight_fixtures EXIT

write_host_completion() {
    cat >"$host_completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @meta external-subcommands
# @flag -h --help  Print help
# <<< SPEC
SCRIPT
}

for ext_bin in "$ext_root" "$multi_root" "$nohost_root"; do
    cat >"$TMP_DIR/bin/$ext_bin" <<'DEMO'
#!/usr/bin/env bash
# External-subcommand fixture: preflight only checks that it exists.
exit 0
DEMO
    chmod +x "$TMP_DIR/bin/$ext_bin"
done

# The host meta selects the external form; artifact paths stay root-based.
write_host_completion
preflight_run "$TMP_DIR/preflight-ext.txt" "$ext_root"
assert_has_line "preflight external invoke" "$TMP_DIR/preflight-ext.txt" "invoke=$ext_host ext"
assert_has_line "preflight external source" "$TMP_DIR/preflight-ext.txt" 'invoke_source=external-subcommands'
assert_has_line "preflight external cache dir stays rooted" "$TMP_DIR/preflight-ext.txt" "cache_dir=$ROOT_DIR/cache/compile/$ext_root"
assert_has_line "preflight external output stays rooted" "$TMP_DIR/preflight-ext.txt" "output_file=$ROOT_DIR/completions/$ext_root.sh"

# Only the first dash marks the host: the rest stays hyphenated.
preflight_run "$TMP_DIR/preflight-multi.txt" "$multi_root"
assert_has_line "preflight multi-dash invoke" "$TMP_DIR/preflight-multi.txt" "invoke=$ext_host llvm-cov"
assert_has_line "preflight multi-dash source" "$TMP_DIR/preflight-multi.txt" 'invoke_source=external-subcommands'

# A host completion without the meta keeps the root form.
cat >"$host_completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# @flag -h --help  Print help
# <<< SPEC
SCRIPT
preflight_run "$TMP_DIR/preflight-no-meta.txt" "$ext_root"
assert_has_line "preflight no meta invoke" "$TMP_DIR/preflight-no-meta.txt" "invoke=$ext_root"
assert_has_line "preflight no meta source" "$TMP_DIR/preflight-no-meta.txt" 'invoke_source=root'

# The meta is root-level only: after the first `# {{` it does not count.
cat >"$host_completion" <<'SCRIPT'
#!/usr/bin/env bash
# >>> SPEC
# {{ pfhost ext
# @cmd Child
# }} pfhost ext
# @meta external-subcommands
# <<< SPEC
SCRIPT
preflight_run "$TMP_DIR/preflight-child-meta.txt" "$ext_root"
assert_has_line "preflight child meta is ignored" "$TMP_DIR/preflight-child-meta.txt" "invoke=$ext_root"
assert_has_line "preflight child meta source" "$TMP_DIR/preflight-child-meta.txt" 'invoke_source=root'

# A missing host completion keeps the root form.
preflight_run "$TMP_DIR/preflight-no-host.txt" "$nohost_root"
assert_has_line "preflight no host completion invoke" "$TMP_DIR/preflight-no-host.txt" "invoke=$nohost_root"
assert_has_line "preflight no host completion source" "$TMP_DIR/preflight-no-host.txt" 'invoke_source=root'

# A root without a dash never enters external mode.
assert_has_line "preflight plain root invoke" "$preflight_out" 'invoke=demo'
assert_has_line "preflight plain root source" "$preflight_out" 'invoke_source=root'

expect_failure "preflight missing command" bash "$SCRIPTS/preflight.sh" no-such-command-xyz

helper_finish
