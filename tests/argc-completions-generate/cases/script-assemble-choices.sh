#!/usr/bin/env bash
# scripts/assemble.sh: choices objects, STATIC generation, dynamic binding.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

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
check "compgen described choices" bash -c "argc --argc-compgen generic '$(native_path "$choices_desc_script")' demo --sort '' | tr -d '\000' | gawk -F'\t' '\$1 == \"none\" && \$3 == \"Do not sort\" { found = 1 } END { exit !found }'"
quiet argc --argc-export "$(native_path "$choices_desc_script")" >"$TMP_DIR/choices-desc-export.json"
check "export described choices" jq -e '.flag_options[] | select(.id == "sort") | .choice.type == "Fn" and .choice.data[0] == "_static_sort"' "$(native_path "$TMP_DIR/choices-desc-export.json")"
check "export plain choices" jq -e '.flag_options[] | select(.id == "plain") | .choice.type == "Values" and .choice.data == ["a", "b"]' "$(native_path "$TMP_DIR/choices-desc-export.json")"
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
    "$(native_path "$TMP_DIR/fragments-choices-regen/_root.json")" >"$TMP_DIR/static-root.tmp"
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
