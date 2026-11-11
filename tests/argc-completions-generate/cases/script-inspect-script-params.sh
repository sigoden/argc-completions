#!/usr/bin/env bash
# scripts/inspect-script-params.jq: exported parameter dump and path lookup.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

build_with_script
build_prefix_fixture
quiet argc_export "$WITH_SCRIPT" "$TMP_DIR/demo-with-export.json"
quiet argc_export "$PREFIX_SCRIPT" "$TMP_DIR/prefix-delimiter-export.json"

# inspect_params <export-json> <out> [<jq arguments...>]: the parameter table for
# one exported schema, optionally narrowed to a command path by `--arg cmd`.
inspect_params() {
    local json="$1" out="$2"
    shift 2
    quiet jq_skill_file "$json" -b -r -f "$NATIVE_SCRIPTS/inspect-script-params.jq" "$@" >"$out"
}

inspect_params "$TMP_DIR/demo-with-export.json" "$TMP_DIR/script-params.txt"
assert_line "script params command header" "$TMP_DIR/script-params.txt" 1 '# command demo-with'
assert_has_line "script params options" "$TMP_DIR/script-params.txt" '# options'
assert_has_line "script params positionals" "$TMP_DIR/script-params.txt" '# positionals'
assert_tsv "script params option names" "$TMP_DIR/script-params.txt" 1=output 2='-o --output' 3=FILE

# Older argc releases export short_name/long_name instead of names; the same
# table must come out.
quiet jq_skill_file "$TMP_DIR/demo-with-export.json" -b -c '
    walk(if type == "object" and has("flag_options") then
        .flag_options |= map(
            if has("names") then
                .short_name = (.names[0] // "")
                | .long_name = (.names[1] // "")
                | del(.names)
            else . end)
    else . end)
' >"$TMP_DIR/demo-with-legacy-export.json"
inspect_params "$TMP_DIR/demo-with-legacy-export.json" "$TMP_DIR/script-params-legacy.txt"
assert_same "script params reads legacy short/long names" \
    "$TMP_DIR/script-params.txt" "$TMP_DIR/script-params-legacy.txt"

inspect_params "$TMP_DIR/demo-with-export.json" "$TMP_DIR/script-params-sub.txt" --arg cmd 'remote add'
assert_line "script params subcommand header" "$TMP_DIR/script-params-sub.txt" 1 '# command demo-with remote add'
assert_tsv "script params subcommand row" "$TMP_DIR/script-params-sub.txt" 1=name 2=NAME 3=true
check "script params subcommand drops parent" \
    gawk '/^output/ { found = 1 } END { exit found }' "$TMP_DIR/script-params-sub.txt"

# The root name is optional, and a path with collapsed whitespace is the same
# command.
inspect_params "$TMP_DIR/demo-with-export.json" "$TMP_DIR/script-params-sub-rooted.txt" --arg cmd 'demo-with remote add'
assert_same "script params optional root name" "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-rooted.txt"
inspect_params "$TMP_DIR/demo-with-export.json" "$TMP_DIR/script-params-sub-spaced.txt" --arg cmd '  remote   add  '
assert_same "script params whitespace path" "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-sub-spaced.txt"

# A subcommand alias resolves to the same table.
fragment_jq "$TMP_DIR/demo-with-export.json" '(.subcommands[] | select(.name == "remote") | .aliases) = ["r"]'
inspect_params "$TMP_DIR/demo-with-export.json" "$TMP_DIR/script-params-alias.txt" --arg cmd 'r add'
assert_same "script params alias path" "$TMP_DIR/script-params-sub.txt" "$TMP_DIR/script-params-alias.txt"

check_rejects "script params unknown path" "unknown command path" \
    jq_skill_file "$TMP_DIR/demo-with-export.json" -r -f "$NATIVE_SCRIPTS/inspect-script-params.jq" --arg cmd 'remote bogus'
assert_contains "script params unknown path children" "$CHECK_LOG" "available: add"

inspect_params "$TMP_DIR/prefix-delimiter-export.json" "$TMP_DIR/prefix-delimiter-params.txt"
assert_tsv "script params positional delimiter" "$TMP_DIR/prefix-delimiter-params.txt" 1=types 7=,

helper_finish
