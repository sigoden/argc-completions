#!/usr/bin/env bash
# scripts/assemble.sh: fragment schema validation, rendering, STATIC, regeneration.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# ---------------------------------------------------------------------------
# assemble.sh: new script, no context
# ---------------------------------------------------------------------------
new_script="$TMP_DIR/new.sh"
quiet bash "$SCRIPTS/assemble.sh" demo -c "$FIXTURES/fragments/no-choice" --stdout >"$new_script"
check "assemble new bash syntax" bash -n "$new_script"
check "assemble new argc export" bash -c "argc --argc-export '$new_script' >/dev/null"
check "assemble new block markers" bash -c "grep -Fq '# >>> SPEC' '$new_script' && grep -Fq '# >>> HINTS' '$new_script'"
assert_contains "assemble new static choices" "$new_script" '--format[text|json]'
assert_contains "assemble new nested command" "$new_script" 'remote::add() {'
assert_contains "assemble new subcommand alias" "$new_script" '# @alias r'
assert_contains "assemble new shadow function" "$new_script" 'cat_() {'
assert_contains "assemble arg optional" "$new_script" '# @arg v1 <V1>'
assert_contains "assemble arg required" "$new_script" '# @arg name! <NAME>'
check "assemble aligns flag description at column 49" \
    gawk '/^# @flag -v --verbose / { found = index($0, "Verbose output") == 49 } END { exit !found }' "$new_script"

# Tag order inside a command block is owned by assembly: a fragment that lists
# an arg among the options still renders flag/option tags first, then args, and
# each group keeps the fragment order.
mkdir -p "$TMP_DIR/fragments-item-order"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-item-order/"
jq '.items = ([
  {"kind": "arg", "name": "first", "repeatable": false, "required": false, "notation": "<FIRST>", "choices": [{"value": "x", "description": "Ex"}, {"value": "y", "description": "Why"}], "choice_fn": null, "description": "First value"},
  {"kind": "option", "names": ["--late"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": "Mode A"}, {"value": "b", "description": "Mode B"}], "choice_fn": null, "repeatable": false, "description": "Late option"},
  {"kind": "arg", "name": "second", "repeatable": false, "required": true, "notation": "<SECOND>", "choices": [], "choice_fn": null, "description": "Second value"}
] + .items)' \
    "$TMP_DIR/fragments-item-order/_root.json" >"$TMP_DIR/item-order.tmp" && \
    mv "$TMP_DIR/item-order.tmp" "$TMP_DIR/fragments-item-order/_root.json"
order_script="$TMP_DIR/item-order.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-item-order" --stdout >"$order_script"
gawk '/^# \{+ / { exit } /^# @(flag|option|arg) / { print $2 }' "$order_script" >"$TMP_DIR/item-order-tags.txt"
printf '%s\n' "@option" "@flag" "@option" "@option" "@arg" "@arg" >"$TMP_DIR/item-order-expected.txt"
check "assemble renders flag/option tags before arg tags" cmp -s "$TMP_DIR/item-order-tags.txt" "$TMP_DIR/item-order-expected.txt"
check "assemble keeps positional order" bash -c "
    argc --argc-export '$order_script' | jq -e '.positionals | map(.id) == [\"first\", \"second\"]' >/dev/null
"
check "assemble moves static functions with their items" gawk '
    /^_static_late\(\)/ { late = NR }
    /^_static_first\(\)/ { first = NR }
    END { exit !(late && first && late < first) }
' "$order_script"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-item-order" --context "$order_script" --stdout >"$TMP_DIR/item-order-again.sh"
check "assemble item order idempotent" cmp -s "$order_script" "$TMP_DIR/item-order-again.sh"
check "verify item order script" bash "$SCRIPTS/verify-completion.sh" "$order_script" --cmd demo --cache-dir "$TMP_DIR/fragments-item-order" --skip-compgen

# Long tags fall back to a plain two-space separator instead of being padded.
mkdir -p "$TMP_DIR/fragments-align"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-align/"
jq '.items += [{"kind": "option", "names": ["--tiebreak"], "notations": ["<CRI>"], "choices": [{"value": "length", "description": ""}, {"value": "chunk", "description": ""}, {"value": "pathname", "description": ""}, {"value": "begin", "description": ""}, {"value": "end", "description": ""}, {"value": "index", "description": ""}], "repeatable": false, "description": "Comma-separated list of sort criteria"}]' \
    "$TMP_DIR/fragments-align/_root.json" >"$TMP_DIR/align-root.json" && \
    mv "$TMP_DIR/align-root.json" "$TMP_DIR/fragments-align/_root.json"
align_script="$TMP_DIR/align.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-align" --stdout >"$align_script"
check "assemble long tag keeps two spaces" \
    gawk 'index($0, "# @option --tiebreak[length|chunk|pathname|begin|end|index] <CRI>  Comma-separated list") == 1 { found = 1 } END { exit !found }' "$align_script"
assert_not_contains "assemble new no choice fn" "$new_script" '_choice_'
check "assemble new empty prompt block" bash -c "grep -A1 '^# >>> HINTS$' '$new_script' | grep -q '^# <<< HINTS$'"
check "assemble new omits empty optional blocks" bash -c "! grep -Eq '^# >>> (STATIC|CHOICES)$' '$new_script'"
check "verify new no-choice" bash "$SCRIPTS/verify-completion.sh" "$new_script" --cmd demo --cache-dir "$FIXTURES/fragments/no-choice" --skip-compgen --require-no-choice-fns
# Re-assembly is byte-stable, and empty optional blocks left by older runs are
# dropped instead of being re-emitted.
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$new_script" --stdout >"$TMP_DIR/new-again.sh"
check "assemble new idempotent" cmp -s "$new_script" "$TMP_DIR/new-again.sh"
empty_blocks="$TMP_DIR/empty-blocks.sh"
gawk '/^command eval / && !done {
        print "# >>> STATIC"
        print "# <<< STATIC"
        print ""
        print "# >>> CHOICES"
        print "# <<< CHOICES"
        print ""
        done = 1
    }
    { print }' "$new_script" >"$empty_blocks"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/no-choice" --context "$empty_blocks" --stdout >"$TMP_DIR/empty-blocks-again.sh"
check "assemble drops empty optional blocks" cmp -s "$new_script" "$TMP_DIR/empty-blocks-again.sh"
# ---------------------------------------------------------------------------
# assemble.sh: context preservation and exact block
# ---------------------------------------------------------------------------
with_script="$TMP_DIR/demo-with.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" \
    --context "$FIXTURES/contexts/context.sh" --stdout >"$with_script"
check "assemble with context syntax" bash -n "$with_script"

assert_contains "assemble with context prompt" "$with_script" '# - prompt for demo remote'
assert_contains "assemble with context choice fn" "$with_script" '--foo[?`_choice_foo`]'
assert_contains "assemble with context function" "$with_script" '_choice_foo() {'
# A fragment may store only the bare function name; the rendered marker is
# assembly output.
marker_dir="$TMP_DIR/fragments-marker"
mkdir -p "$marker_dir"
cp -R "$FIXTURES/fragments/with-choice/." "$marker_dir/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = "?_choice_foo"' \
    "$marker_dir/remote.json" >"$marker_dir/remote.tmp" && mv "$marker_dir/remote.tmp" "$marker_dir/remote.json"
expect_failure "assemble rejects a prefixed choice_fn" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$marker_dir" \
    --context "$FIXTURES/contexts/context.sh" --stdout
check "verify with context and fragments" bash "$SCRIPTS/verify-completion.sh" "$with_script" --cmd demo --cache-dir "$FIXTURES/fragments/with-choice"
# Exact SPEC dump
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$FIXTURES/fragments/with-choice" --dump-spec >"$TMP_DIR/dump.txt"
gawk '/^# >>> SPEC$/ { inside = 1; next } /^# <<< SPEC$/ { inside = 0 } inside { print }' "$with_script" >"$TMP_DIR/actual-block.txt"
check "dump SPEC matches block" diff -u "$TMP_DIR/dump.txt" "$TMP_DIR/actual-block.txt"

# Regeneration preserves prompt/CHOICES and updates SPEC.
mkdir -p "$TMP_DIR/fragments-regen"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-regen/"
cp "$with_script" "$TMP_DIR/regen.sh"
sed -n '/^# >>> HINTS$/,/^# <<< HINTS$/p' "$with_script" >"$TMP_DIR/prompt-before.txt"
sed -n '/^# >>> CHOICES$/,/^# <<< CHOICES$/p' "$with_script" >"$TMP_DIR/choice-before.txt"
jq '.items += [{"kind": "flag", "names": ["--new"], "repeatable": false, "description": "New flag"}]' \
    "$TMP_DIR/fragments-regen/_root.json" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble refuses overwrite" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --force
assert_contains "regenerate new flag" "$TMP_DIR/regen.sh" '--new'
sed -n '/^# >>> HINTS$/,/^# <<< HINTS$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/prompt-after.txt"
sed -n '/^# >>> CHOICES$/,/^# <<< CHOICES$/p' "$TMP_DIR/regen.sh" >"$TMP_DIR/choice-after.txt"
check "regenerate preserves prompt" diff -u "$TMP_DIR/prompt-before.txt" "$TMP_DIR/prompt-after.txt"
check "regenerate preserves CHOICES" diff -u "$TMP_DIR/choice-before.txt" "$TMP_DIR/choice-after.txt"
check "regenerate verify" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/regen.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-regen" --skip-compgen
check "assemble --check unchanged" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check

# Change a fragment and ensure --check detects it.
jq '.items += [{"kind": "flag", "names": ["--another"], "repeatable": false, "description": "Another"}]' \
    "$TMP_DIR/fragments-regen/_root.json" >"$TMP_DIR/regen-root.json" && \
    mv "$TMP_DIR/regen-root.json" "$TMP_DIR/fragments-regen/_root.json"
expect_failure "assemble --check detects change" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-regen" --output "$TMP_DIR/regen.sh" --check
# ---------------------------------------------------------------------------
# Status and validation failures
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-todo"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-todo/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "todo"' "$TMP_DIR/fragments-todo/_root.json" >"$TMP_DIR/todo.tmp" && mv "$TMP_DIR/todo.tmp" "$TMP_DIR/fragments-todo/_root.json"
expect_failure "assemble rejects todo" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-todo" --stdout

mkdir -p "$TMP_DIR/fragments-missing"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing/"
rm "$TMP_DIR/fragments-missing/remote/add.json"
expect_failure "assemble rejects missing fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing" --stdout

mkdir -p "$TMP_DIR/fragments-stale"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-stale/"
cp "$TMP_DIR/fragments-stale/remote/add.json" "$TMP_DIR/fragments-stale/extra.json"
jq '.path = ["demo", "extra"] | .subcommands = []' "$TMP_DIR/fragments-stale/extra.json" >"$TMP_DIR/extra.tmp" && mv "$TMP_DIR/extra.tmp" "$TMP_DIR/fragments-stale/extra.json"
expect_failure "assemble rejects stale fragment" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-stale" --stdout

mkdir -p "$TMP_DIR/fragments-path-mismatch"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-path-mismatch/"
jq '.path = ["demo", "wrong"]' "$TMP_DIR/fragments-path-mismatch/remote.json" >"$TMP_DIR/mismatch.tmp" && mv "$TMP_DIR/mismatch.tmp" "$TMP_DIR/fragments-path-mismatch/remote.json"
expect_failure "assemble rejects path mismatch" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-path-mismatch" --stdout

mkdir -p "$TMP_DIR/fragments-bad-status"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-bad-status/"
jq '(.subcommands[] | select(.name == "remote") | .status) = "unknown"' "$TMP_DIR/fragments-bad-status/_root.json" >"$TMP_DIR/bad-status.tmp" && mv "$TMP_DIR/bad-status.tmp" "$TMP_DIR/fragments-bad-status/_root.json"
expect_failure "assemble rejects invalid status" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-status" --stdout

mkdir -p "$TMP_DIR/fragments-bad-choice"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-bad-choice/"
jq '(.items[] | select(.names | index("--foo")) | .choice_fn) = ["_choice_foo"]' "$TMP_DIR/fragments-bad-choice/remote.json" >"$TMP_DIR/bad.tmp" && mv "$TMP_DIR/bad.tmp" "$TMP_DIR/fragments-bad-choice/remote.json"
expect_failure "assemble rejects non-string choice_fn" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-choice" --context "$FIXTURES/contexts/context.sh" --stdout

mkdir -p "$TMP_DIR/fragments-missing-fn"
cp -R "$FIXTURES/fragments/with-choice/." "$TMP_DIR/fragments-missing-fn/"
sed '/^_choice_foo() {/,/^}/d' "$FIXTURES/contexts/context.sh" >"$TMP_DIR/context-missing-fn.sh"
expect_failure "assemble rejects missing choice function" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing-fn" --context "$TMP_DIR/context-missing-fn.sh" --stdout

mkdir -p "$TMP_DIR/fragments-path"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-path/"
jq '.items += [
      {"kind": "option", "names": ["--config"], "notations": ["<path>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Config path"},
      {"kind": "option", "names": ["--file"], "notations": ["<file>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Input file"},
      {"kind": "option", "names": ["--dir"], "notations": ["<dir>"], "choices": [], "choice_fn": null, "repeatable": false, "description": "Output dir"}
    ]' "$TMP_DIR/fragments-path/_root.json" >"$TMP_DIR/path.tmp" && mv "$TMP_DIR/path.tmp" "$TMP_DIR/fragments-path/_root.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-path" --stdout >"$TMP_DIR/path-notation.sh"
assert_contains "assemble path notation" "$TMP_DIR/path-notation.sh" '--config <path>'
assert_contains "assemble file notation" "$TMP_DIR/path-notation.sh" '--file <file>'
assert_contains "assemble dir notation" "$TMP_DIR/path-notation.sh" '--dir <dir>'
check "verify path notation" bash "$SCRIPTS/verify-completion.sh" "$TMP_DIR/path-notation.sh" --cmd demo --cache-dir "$TMP_DIR/fragments-path" --skip-compgen

# ---------------------------------------------------------------------------
# Arg repeatable/required schema
# ---------------------------------------------------------------------------
mkdir -p "$TMP_DIR/fragments-arg-required-repeatable"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-arg-required-repeatable/"
jq '.items += [{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "description": "Files"}]' \
    "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json" >"$TMP_DIR/arg-req.tmp" && \
    mv "$TMP_DIR/arg-req.tmp" "$TMP_DIR/fragments-arg-required-repeatable/remote/add.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-required-repeatable" --stdout >"$TMP_DIR/arg-required-repeatable.sh"
assert_contains "assemble arg repeatable required" "$TMP_DIR/arg-required-repeatable.sh" '# @arg files+ <FILE>'

mkdir -p "$TMP_DIR/fragments-arg-optional-repeatable"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-arg-optional-repeatable/"
jq '.items += [{"kind": "arg", "name": "rest", "repeatable": true, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "description": "Rest"}]' \
    "$TMP_DIR/fragments-arg-optional-repeatable/remote.json" >"$TMP_DIR/arg-opt.tmp" && \
    mv "$TMP_DIR/arg-opt.tmp" "$TMP_DIR/fragments-arg-optional-repeatable/remote.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-optional-repeatable" --stdout >"$TMP_DIR/arg-optional-repeatable.sh"
assert_contains "assemble arg repeatable optional" "$TMP_DIR/arg-optional-repeatable.sh" '# @arg rest* <ARG>'

mkdir -p "$TMP_DIR/fragments-modifier"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-modifier/"
jq '.items[0].modifier = "!"' "$TMP_DIR/fragments-modifier/remote/add.json" >"$TMP_DIR/modifier.tmp" && \
    mv "$TMP_DIR/modifier.tmp" "$TMP_DIR/fragments-modifier/remote/add.json"
expect_failure "assemble rejects modifier field" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-modifier" --stdout

mkdir -p "$TMP_DIR/fragments-missing-required"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-missing-required/"
jq 'del(.items[0].required)' "$TMP_DIR/fragments-missing-required/remote/add.json" >"$TMP_DIR/missing-required.tmp" && \
    mv "$TMP_DIR/missing-required.tmp" "$TMP_DIR/fragments-missing-required/remote/add.json"
expect_failure "assemble rejects arg without required" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-missing-required" --stdout

# ---------------------------------------------------------------------------
# Option prefixed/delimiter schema
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-prefix-delimiter" '[
  {"kind": "option", "names": ["-ao"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "s", "description": ""}, {"value": "t", "description": ""}, {"value": "u", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Overwrite mode"},
  {"kind": "option", "names": ["--type"], "notations": ["<TYPE>"], "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Filter by entry type"},
  {"kind": "option", "names": ["-Q"], "notations": [], "choices": [{"value": "X", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefix without repeat"},
  {"kind": "option", "names": ["-Z"], "notations": [], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": ",", "description": "Prefix with delimiter"},
  {"kind": "arg", "name": "types", "repeatable": true, "required": false, "notation": "<TYPE>", "choices": [{"value": "d", "description": ""}, {"value": "f", "description": ""}], "choice_fn": null, "delimiter": ",", "description": "Entry types"}
]'
prefix_script="$TMP_DIR/prefix-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --stdout >"$prefix_script"
assert_contains "assemble prefixed option" "$prefix_script" '# @option -ao-*[a|s|t|u]'
assert_contains "assemble prefixed non-repeatable" "$prefix_script" '# @option -Q-[X]'
assert_contains "assemble delimiter option" "$prefix_script" '# @option --type*,[d|f] <TYPE>'
assert_contains "assemble delimiter arg" "$prefix_script" '# @arg types*,[d|f] <TYPE>'
assert_contains "assemble combined prefix delimiter" "$prefix_script" '# @option -Z-*,[a|b]'
check "assemble prefixed/delimiter syntax" bash -n "$prefix_script"
check "export prefixed/delimiter" bash -c "argc --argc-export '$prefix_script' >'$TMP_DIR/prefix-delimiter-export.json'"
check "export prefixed option" jq -e '.flag_options[] | select(.long_name == "-ao") | .prefixed == true and .multiple_occurs == true and .choice.data == ["a", "s", "t", "u"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export prefixed non-repeatable" jq -e '.flag_options[] | select(.long_name == "-Q") | .prefixed == true and .multiple_occurs == false and .choice.data == ["X"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export delimiter option" jq -e '.flag_options[] | select(.long_name == "--type") | .delimiter == "," and .multiple_occurs == true and .choice.data == ["d", "f"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export delimiter arg" jq -e '.positionals[] | select(.id == "types") | .delimiter == "," and .multiple == true and .required == false and .choice.data == ["d", "f"]' "$TMP_DIR/prefix-delimiter-export.json"
check "export combined prefix delimiter" jq -e '.flag_options[] | select(.long_name == "-Z") | .prefixed == true and .delimiter == "," and .multiple_occurs == true and .choice.data == ["a", "b"]' "$TMP_DIR/prefix-delimiter-export.json"
check "verify prefixed/delimiter" bash "$SCRIPTS/verify-completion.sh" "$prefix_script" --cmd demo --cache-dir "$TMP_DIR/fragments-prefix-delimiter" --skip-compgen

inject_root_items "$TMP_DIR/fragments-arg-delimiter-required" '[{"kind": "arg", "name": "files", "repeatable": true, "required": true, "notation": "<FILE>", "choices": [], "choice_fn": null, "delimiter": ",", "description": "Files"}]'
required_arg_script="$TMP_DIR/required-arg-delimiter.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-arg-delimiter-required" --stdout >"$required_arg_script"
assert_contains "assemble required delimiter arg" "$required_arg_script" '# @arg files+, <FILE>'
check "export required delimiter arg" bash -c "argc --argc-export '$required_arg_script' >'$TMP_DIR/required-arg-delimiter-export.json'"
check "export required delimiter arg fields" jq -e '.positionals[] | select(.id == "files") | .delimiter == "," and .multiple == true and .required == true' "$TMP_DIR/required-arg-delimiter-export.json"


# ---------------------------------------------------------------------------
# Terminated values
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-terminated" '[
  {"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Command", "terminated": true},
  {"kind": "arg", "name": "args", "repeatable": false, "required": false, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
terminated_script="$TMP_DIR/terminated.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated" --stdout >"$terminated_script"
assert_contains "assemble terminated option" "$terminated_script" '# @option --command~ <COMMAND>'
assert_contains "assemble terminated arg" "$terminated_script" '# @arg args~ <ARG>'
check "export terminated fields" bash -c "argc --argc-export '$terminated_script' >'$TMP_DIR/terminated-export.json'"
check "export terminated option" jq -e '.flag_options[] | select(.long_name == "--command") | .terminated == true and .multiple_values == true and .multiple_occurs == false' "$TMP_DIR/terminated-export.json"
check "export terminated arg" jq -e '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true' "$TMP_DIR/terminated-export.json"
check "verify terminated" bash "$SCRIPTS/verify-completion.sh" "$terminated_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated" --skip-compgen

# A required terminated arg renders "~" alone: argc rejects name!~, so assembly
# drops the requiredness and keeps it in the fragment as provenance only.
inject_root_items "$TMP_DIR/fragments-terminated-required" '[
  {"kind": "arg", "name": "args", "repeatable": false, "required": true, "notation": "<ARG>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Args", "terminated": true}
]'
terminated_required_script="$TMP_DIR/terminated-required.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated-required" --stdout >"$terminated_required_script"
assert_contains "assemble required terminated arg" "$terminated_required_script" '# @arg args~ <ARG>'
assert_not_contains "assemble required terminated arg drops bang" "$terminated_required_script" '# @arg args!~'
check "export required terminated arg" bash -c "argc --argc-export '$terminated_required_script' >'$TMP_DIR/terminated-required-export.json'"
check "export required terminated arg fields" jq -e '.positionals[] | select(.id == "args") | .terminated == true and .multiple == true and .required == false' "$TMP_DIR/terminated-required-export.json"
check "verify required terminated arg" bash "$SCRIPTS/verify-completion.sh" "$terminated_required_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-required" --skip-compgen

inject_root_items "$TMP_DIR/fragments-terminated-literal" '[{"kind": "option", "names": ["-~", "--value"], "notations": ["<VALUE>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Literal"}]'
literal_script="$TMP_DIR/terminated-literal.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --stdout >"$literal_script"
assert_contains "assemble literal tilde name" "$literal_script" '# @option -~ --value <VALUE>'
check "verify literal tilde name" bash "$SCRIPTS/verify-completion.sh" "$literal_script" --cmd demo --cache-dir "$TMP_DIR/fragments-terminated-literal" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-terminated-repeatable" '[{"kind": "option", "names": ["--command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-repeatable" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-flag" '[{"kind": "flag", "names": ["--command"], "repeatable": false, "description": "Bad", "terminated": true}]'
expect_failure "assemble rejects terminated flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-flag" --stdout
inject_root_items "$TMP_DIR/fragments-bad-terminated-name" '[{"kind": "option", "names": ["--command~"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects name ending in tilde" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-terminated-name" --stdout

# ---------------------------------------------------------------------------
# Notation modifiers
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-notation-modifiers" '[
  {"kind": "option", "names": ["--files"], "notations": ["<FILE+>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Input files"},
  {"kind": "option", "names": ["--maybe"], "notations": ["<VALUE?>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Optional value"},
  {"kind": "option", "names": ["-l"], "notations": ["<script>", "<args*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Execute script", "terminated": true}
]'
notation_script="$TMP_DIR/notation-modifiers.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-notation-modifiers" --stdout >"$notation_script"
assert_contains "assemble notation plus" "$notation_script" '# @option --files <FILE+>'
assert_contains "assemble notation optional" "$notation_script" '# @option --maybe <VALUE?>'
assert_contains "assemble notation terminated args" "$notation_script" '# @option -l~ <script> <args*>'
check "export notation modifiers" bash -c "argc --argc-export '$notation_script' >'$TMP_DIR/notation-modifiers-export.json'"
check "export notation plus" jq -e '.flag_options[] | select(.long_name == "--files") | .notations == ["FILE+"] and .num_args[0] == 1 and .num_args[1] > 1 and .multiple_occurs == false' "$TMP_DIR/notation-modifiers-export.json"
check "export notation optional" jq -e '.flag_options[] | select(.long_name == "--maybe") | .notations == ["VALUE?"] and .num_args == [0, 1]' "$TMP_DIR/notation-modifiers-export.json"
check "export notation terminated args" jq -e '.flag_options[] | select(.long_name == "-l") | .notations == ["SCRIPT", "ARGS*~"] and .terminated == true' "$TMP_DIR/notation-modifiers-export.json"
check "verify notation modifiers" bash "$SCRIPTS/verify-completion.sh" "$notation_script" --cmd demo --cache-dir "$TMP_DIR/fragments-notation-modifiers" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-nonfinal-notation" '[{"kind": "option", "names": ["--pair"], "notations": ["<LEFT*>", "<RIGHT>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
nonfinal_log="$(new_log)"
if run_quiet "$nonfinal_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-nonfinal-notation" --stdout; then
    fail "assemble rejects non-final notation modifier (unexpected success)"
else
    pass "assemble rejects non-final notation modifier"
fi
assert_contains "non-final notation modifier message" "$nonfinal_log" "only the final option notation"
inject_root_items "$TMP_DIR/fragments-bad-arg-notation" '[{"kind": "arg", "name": "files", "repeatable": true, "required": false, "notation": "<FILE*>", "choices": [], "choice_fn": null, "delimiter": null, "description": "Bad"}]'
argmod_log="$(new_log)"
if run_quiet "$argmod_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-notation" --stdout; then
    fail "assemble rejects arg notation modifier (unexpected success)"
else
    pass "assemble rejects arg notation modifier"
fi
assert_contains "arg notation modifier message" "$argmod_log" "arg notation must not carry"
inject_root_items "$TMP_DIR/fragments-bad-empty-notation" '[{"kind": "option", "names": ["--empty"], "notations": ["<*>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects empty notation name" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-empty-notation" --stdout

# ---------------------------------------------------------------------------
# Removed value_type field
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-value-type-field" '[
  {"kind": "option", "names": ["--owner"], "notations": ["<NAME>"], "choices": [], "choice_fn": null, "value_type": "user", "repeatable": false, "prefixed": false, "delimiter": null, "description": "File owner"}
]'
value_type_log="$(new_log)"
if run_quiet "$value_type_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-value-type-field" --stdout; then
    fail "assemble rejects value_type field (unexpected success)"
else
    pass "assemble rejects value_type field"
fi
assert_contains "value_type unknown field error" "$value_type_log" "unknown fields: value_type"

inject_root_items "$TMP_DIR/fragments-bad-delimiter-repeat" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-prefixed" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-delimiter" '[{"kind": "flag", "names": ["--bad"], "repeatable": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter flag" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-delimiter" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-prefixed" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "prefixed": true, "description": "Bad"}]'
expect_failure "assemble rejects prefixed arg" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-prefixed" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-repeat" '[{"kind": "arg", "name": "bad", "repeatable": false, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects arg delimiter without repeatable" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-repeat" --stdout
inject_root_items "$TMP_DIR/fragments-bad-arg-delimiter-char" '[{"kind": "arg", "name": "bad", "repeatable": true, "required": false, "notation": null, "choices": [], "choice_fn": null, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid arg delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-arg-delimiter-char" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-names" '[{"kind": "option", "names": ["-A", "--alpha"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed two names" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-names" --stdout
inject_root_items "$TMP_DIR/fragments-bad-prefix-dash" '[{"kind": "option", "names": ["-X-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-nonprefix-dash" '[{"kind": "option", "names": ["--dash-"], "notations": [], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix option name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-nonprefix-dash" --stdout
inject_root_items "$TMP_DIR/fragments-bad-flag-nonprefix-dash" '[{"kind": "flag", "names": ["--dash-"], "repeatable": false, "description": "Bad"}]'
expect_failure "assemble rejects non-prefix flag name with dash" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-flag-nonprefix-dash" --stdout

# argc silently drops the second name, and the choice with it, when the
# two-name shape is one it cannot parse. Assembly must reject it instead.
inject_root_items "$TMP_DIR/fragments-bad-names-alias-first" '[{"kind": "option", "names": ["-ex", "--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_alias_log="$(new_log)"
if run_quiet "$names_alias_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-alias-first" --stdout; then
    fail "assemble rejects alias-first two names (unexpected success)"
else
    pass "assemble rejects alias-first two names"
fi
assert_contains "assemble alias-first names error" "$names_alias_log" "one-character short name"
inject_root_items "$TMP_DIR/fragments-bad-names-help-order" '[{"kind": "option", "names": ["--eval-command", "-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}]'
names_help_order_log="$(new_log)"
if run_quiet "$names_help_order_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-names-help-order" --stdout; then
    fail "assemble rejects help-order two names (unexpected success)"
else
    pass "assemble rejects help-order two names"
fi
assert_contains "assemble help-order names error" "$names_help_order_log" "one-character short name"

# Accepted two-name shapes: two single-character shorts and a short plus a
# multi-character single-dash alias.
inject_root_items "$TMP_DIR/fragments-names-ok" '[
  {"kind": "flag", "names": ["-b", "-m"], "repeatable": false, "description": "Ignored for compatibility"},
  {"kind": "option", "names": ["-x", "-ex"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Two names"}
]'
names_ok_script="$TMP_DIR/names-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-names-ok" --stdout >"$names_ok_script"
assert_contains "assemble two shorts" "$names_ok_script" '# @flag -b -m'
assert_contains "assemble short plus alias" "$names_ok_script" '# @option -x -ex <V>'
check "verify two-name shapes" bash "$SCRIPTS/verify-completion.sh" "$names_ok_script" --cmd demo --cache-dir "$TMP_DIR/fragments-names-ok" --skip-compgen

# A pair argc cannot accept becomes one item per name with every other field
# copied; both items must keep the dynamic binding.
mkdir -p "$TMP_DIR/fragments-split"
cp -R "$FIXTURES/fragments/no-choice/." "$TMP_DIR/fragments-split/"
jq '.items += [
  {"kind": "option", "names": ["--eval-command"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"},
  {"kind": "option", "names": ["-ex"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": "_choice_root", "repeatable": true, "prefixed": false, "delimiter": null, "description": "Execute a single command"}
]' "$TMP_DIR/fragments-split/_root.json" >"$TMP_DIR/split.tmp" && mv "$TMP_DIR/split.tmp" "$TMP_DIR/fragments-split/_root.json"
split_script="$TMP_DIR/split.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-split" --context "$FIXTURES/contexts/context.sh" --stdout >"$split_script"
assert_contains "assemble split long name" "$split_script" '# @option --eval-command*[?`_choice_root`] <COMMAND>'
assert_contains "assemble split alias" "$split_script" '# @option -ex*[?`_choice_root`] <COMMAND>'
check "verify split option bindings" bash "$SCRIPTS/verify-completion.sh" "$split_script" --cmd demo --cache-dir "$TMP_DIR/fragments-split" --skip-compgen

inject_root_items "$TMP_DIR/fragments-bad-prefix-notations" '[{"kind": "option", "names": ["-X"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": true, "delimiter": null, "description": "Bad"}]'
expect_failure "assemble rejects prefixed multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-prefix-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-notations" '[{"kind": "option", "names": ["--multi"], "notations": ["<A>", "<B>"], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": ",", "description": "Bad"}]'
expect_failure "assemble rejects delimiter multiple notations" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-notations" --stdout
inject_root_items "$TMP_DIR/fragments-bad-delimiter-char" '[{"kind": "option", "names": ["--sep"], "notations": [], "choices": [], "choice_fn": null, "repeatable": true, "prefixed": false, "delimiter": "x", "description": "Bad"}]'
expect_failure "assemble rejects invalid delimiter" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-bad-delimiter-char" --stdout

# ---------------------------------------------------------------------------
# Description must not repeat static choices
# ---------------------------------------------------------------------------
choice_echo_reject() {
    local label="$1" dir="$2" item="$3" needle="$4" err
    inject_root_items "$dir" "[$item]"
    err="$(new_log)"
    if run_quiet "$err" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout; then
        fail "$label (unexpected success)"
    else
        pass "$label"
        if grep -Fq -- "$needle" "$err"; then
            pass "$label error"
        else
            fail "$label error (missing: $needle)"
        fi
    fi
}

choice_echo_reject "assemble rejects parenthesized choice echo" \
    "$TMP_DIR/fragments-choice-echo-paren" \
    '{"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "relay", "description": ""}, {"value": "tailcat", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, tailcat, relay) (default: \"auto\")"}' \
    "description repeats choices: auto, tailcat, relay"
choice_echo_reject "assemble rejects bracketed choice echo" \
    "$TMP_DIR/fragments-choice-echo-bracket" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode [a|b] (default: a)"}' \
    "description repeats choices: a|b"
choice_echo_reject "assemble rejects braced choice echo" \
    "$TMP_DIR/fragments-choice-echo-brace" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode {a, b}"}' \
    "description repeats choices: a, b"
choice_echo_reject "assemble rejects quoted choice echo" \
    "$TMP_DIR/fragments-choice-echo-quoted" \
    '{"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (\"a\", \"b\")"}' \
    'description repeats choices: "a", "b"'

choice_ok_dir="$TMP_DIR/fragments-choice-ok"
inject_root_items "$choice_ok_dir" '[
  {"kind": "option", "names": ["--transport"], "notations": ["<value>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (default: \"auto\")"},
  {"kind": "option", "names": ["--partial"], "notations": ["<VALUE>"], "choices": [{"value": "auto", "description": ""}, {"value": "tailcat", "description": ""}, {"value": "relay", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "guest transport (auto, relay)"},
  {"kind": "option", "names": ["--prose"], "notations": ["<MODE>"], "choices": [{"value": "fast", "description": ""}, {"value": "slow", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode (see fast docs)"},
  {"kind": "option", "names": ["--empty"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": ""}
]'
choice_ok_script="$TMP_DIR/choice-ok.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$choice_ok_dir" --stdout >"$choice_ok_script"
assert_contains "assemble keeps cleaned choices description" "$choice_ok_script" 'guest transport (default: "auto")'
assert_contains "assemble keeps partial choice list" "$choice_ok_script" 'guest transport (auto, relay)'
assert_contains "assemble keeps prose group" "$choice_ok_script" 'Mode (see fast docs)'
check "assemble renders empty description without padding" grep -Fxq '# @option --empty[a|b] <MODE>' "$choice_ok_script"
check "verify cleaned choice descriptions" bash "$SCRIPTS/verify-completion.sh" "$choice_ok_script" --cmd demo --cache-dir "$choice_ok_dir" --skip-compgen

choice_echo_reject "assemble rejects colon-list choice echo" \
    "$TMP_DIR/fragments-choice-echo-colon" \
    '{"kind": "option", "names": ["--sort"], "notations": ["<KEY>"], "choices": [{"value": "name", "description": ""}, {"value": "version", "description": ""}, {"value": "none", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Select sort: name,version,none"}' \
    "description repeats choices in a colon list"
# ---------------------------------------------------------------------------
# choices objects and generated STATIC functions
# ---------------------------------------------------------------------------
inject_root_items "$TMP_DIR/fragments-choices-desc" '[
  {"kind": "option", "names": ["--sort"], "notations": ["<SORTER>"], "choices": [{"value": "none", "description": "Do not sort"}, {"value": "path", "description": "Sort by file path"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Sort results"},
  {"kind": "option", "names": ["--plain"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": ""}, {"value": "b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Plain mode"}
]'
choices_desc_script="$TMP_DIR/choices-desc.sh"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-desc" --stdout >"$choices_desc_script"
assert_contains "assemble described choices tag" "$choices_desc_script" '# @option --sort[?`_static_sort`] <SORTER>'
assert_contains "assemble undescribed choices stay static" "$choices_desc_script" '# @option --plain[a|b] <MODE>'
assert_contains "assemble static block" "$choices_desc_script" '# >>> STATIC'
assert_contains "assemble static function" "$choices_desc_script" '_static_sort() {'
check "assemble described choices omit empty CHOICES" bash -c "! grep -q '^# >>> CHOICES$' '$choices_desc_script'"
check "assemble static function body" gawk '/^\tnone\tDo not sort$/ { found = 1 } END { exit !found }' "$choices_desc_script"
check "assemble static block order" gawk '
    /^# >>> (SPEC|STATIC|HINTS|CHOICES)$/ { block[++n] = $0 }
    END {
        exit !(n == 3 && block[1] == "# >>> SPEC" && block[2] == "# >>> HINTS" \
            && block[3] == "# >>> STATIC")
    }
' "$choices_desc_script"
check "verify described choices" bash "$SCRIPTS/verify-completion.sh" "$choices_desc_script" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen
check "verify described choices require-no-choice" bash "$SCRIPTS/verify-completion.sh" "$choices_desc_script" --cmd demo --cache-dir "$TMP_DIR/fragments-choices-desc" --skip-compgen --require-no-choice-fns
check "compgen described choices" bash -c "argc --argc-compgen generic '$choices_desc_script' demo --sort '' | tr -d '\000' | gawk -F'\t' '\$1 == \"none\" && \$3 == \"Do not sort\" { found = 1 } END { exit !found }'"
quiet argc --argc-export "$choices_desc_script" >"$TMP_DIR/choices-desc-export.json"
check "export described choices" jq -e '.flag_options[] | select(.id == "sort") | .choice.type == "Fn" and .choice.data[0] == "_static_sort"' "$TMP_DIR/choices-desc-export.json"
check "export plain choices" jq -e '.flag_options[] | select(.id == "plain") | .choice.type == "Values" and .choice.data == ["a", "b"]' "$TMP_DIR/choices-desc-export.json"
check "dump-static matches block" bash -c "
    sed -n '/^# >>> STATIC\$/,/^# <<< STATIC\$/p' '$choices_desc_script' | sed '1d;\$d' >'$TMP_DIR/static-actual.txt'
    bash '$SCRIPTS/assemble.sh' demo --cache-dir '$TMP_DIR/fragments-choices-desc' --dump-static >'$TMP_DIR/static-dump.txt'
    cmp -s '$TMP_DIR/static-actual.txt' '$TMP_DIR/static-dump.txt'
"

# STATIC is regenerated; HINTS and CHOICES are preserved.
cp -R "$TMP_DIR/fragments-choices-desc" "$TMP_DIR/fragments-choices-regen"
cat >"$TMP_DIR/static-context.sh" <<'CTX'
# >>> SPEC
# <<< SPEC

# >>> HINTS
# keep this hint
# <<< HINTS

# >>> CHOICES
_choice_keep() { :; }
# <<< CHOICES
CTX
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-regen" --context "$TMP_DIR/static-context.sh" --stdout >"$TMP_DIR/static-before.sh"
jq '(.items[] | select(.names | index("--sort")) | .choices[0].description) = "Do not sort at all"' \
    "$TMP_DIR/fragments-choices-regen/_root.json" >"$TMP_DIR/static-root.tmp"
mv "$TMP_DIR/static-root.tmp" "$TMP_DIR/fragments-choices-regen/_root.json"
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-regen" --context "$TMP_DIR/static-before.sh" --stdout >"$TMP_DIR/static-after.sh"
assert_contains "static regeneration updates description" "$TMP_DIR/static-after.sh" 'Do not sort at all'
assert_contains "static regeneration keeps CHOICES" "$TMP_DIR/static-after.sh" '_choice_keep() { :; }'
assert_contains "static regeneration keeps HINTS" "$TMP_DIR/static-after.sh" '# keep this hint'
check "static regeneration idempotent" bash -c "bash '$SCRIPTS/assemble.sh' demo --cache-dir '$TMP_DIR/fragments-choices-regen' --context '$TMP_DIR/static-after.sh' --stdout | cmp -s - '$TMP_DIR/static-after.sh'"
inject_root_items "$TMP_DIR/fragments-choices-collide" '[
  {"kind": "option", "names": ["--foo.bar"], "notations": ["<V>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Dotted"},
  {"kind": "option", "names": ["--foo-bar"], "notations": ["<V>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Dashed"}
]'
collide_log="$(new_log)"
if run_quiet "$collide_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-collide" --stdout; then
    fail "assemble rejects static name collision (unexpected success)"
else
    pass "assemble rejects static name collision"
fi
assert_contains "assemble static name collision message" "$collide_log" "static choice function name collision"

gawk '/^# <<< CHOICES$/ && !done { print "_static_sort() { :; }"; done = 1 } { print }' \
    "$TMP_DIR/static-context.sh" >"$TMP_DIR/static-preserved.sh"
preserved_log="$(new_log)"
if run_quiet "$preserved_log" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-desc" --context "$TMP_DIR/static-preserved.sh" --stdout; then
    fail "assemble rejects static collision with CHOICES (unexpected success)"
else
    pass "assemble rejects static collision with CHOICES"
fi
assert_contains "assemble preserved collision message" "$preserved_log" "already defined outside STATIC"

inject_root_items "$TMP_DIR/fragments-choices-binding" '[
  {"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": "_choice_root", "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode"}
]'
quiet bash "$SCRIPTS/assemble.sh" demo --cache-dir "$TMP_DIR/fragments-choices-binding" --context "$FIXTURES/contexts/context.sh" --stdout >"$TMP_DIR/choices-binding.sh"
assert_contains "binding wins over described choices" "$TMP_DIR/choices-binding.sh" '# @option --mode[?`_choice_root`] <MODE>'
assert_not_contains "binding suppresses static function" "$TMP_DIR/choices-binding.sh" '_static_mode'

choice_schema_reject() {
    local label="$1" item="$2" needle="$3" dir err
    dir="$TMP_DIR/fragments-schema-$(printf '%s' "$label" | tr -c 'A-Za-z0-9' '-')"
    inject_root_items "$dir" "[$item]"
    err="$(new_log)"
    if run_quiet "$err" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout; then
        fail "$label (unexpected success)"
    else
        pass "$label"
        if [[ -n "$needle" ]]; then
            if grep -Fq -- "$needle" "$err"; then
                pass "$label error"
            else
                fail "$label error (missing: $needle)"
            fi
        fi
    fi
}

choice_schema_reject "assemble rejects string choices" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": ["a"], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "choices entries must be objects {value, description}"
choice_schema_reject "assemble rejects choices extra key" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "a", "description": "", "extra": 1}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "may only contain value and description"
choice_schema_reject "assemble rejects choices missing description" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "a"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "invalid choices"
choice_schema_reject "assemble rejects duplicate choice value" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "a", "description": ""}, {"value": "a", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "distinct non-empty value"
choice_schema_reject "assemble rejects empty choice value" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "invalid choices"
choice_schema_reject "assemble rejects bracketed choice value" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "a]b", "description": ""}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "invalid choices"
choice_schema_reject "assemble rejects tab in choice description" \
    '{"kind": "option", "names": ["--bad"], "notations": ["<V>"], "choices": [{"value": "a", "description": "x\ty"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Bad"}' \
    "invalid choices"

build_dynamic_fixture
assert_contains "dynamic binding rendered" "$TMP_DIR/dynamic.sh" '--output[?`_choice_out`]'
assert_contains "dynamic function preserved" "$TMP_DIR/dynamic.sh" '_choice_out() {'

assert_not_contains "assemble no value types library" "$SCRIPTS/assemble.sh" "_value_types"
assert_contains "assemble usage repo root" "$SCRIPTS/assemble.sh" "<REPO_ROOT>/cache/compile/<root>"

helper_finish
