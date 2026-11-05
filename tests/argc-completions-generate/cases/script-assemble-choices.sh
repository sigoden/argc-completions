#!/usr/bin/env bash
# scripts/assemble.sh: choices objects, STATIC generation, dynamic binding.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# --- choices objects and generated STATIC functions ------------------------
build_static_fixture
choices_desc_script="$STATIC_SCRIPT"
assert_contains "assemble described choices tag" "$choices_desc_script" '# @option --sort[?`_static_sort`] <SORTER>'
assert_contains "assemble undescribed choices stay static" "$choices_desc_script" '# @option --plain[a|b] <MODE>'
assert_contains "assemble static block" "$choices_desc_script" '# >>> STATIC'
assert_contains "assemble static function" "$choices_desc_script" '_static_sort() {'
assert_not_contains "assemble described choices omit empty CHOICES" "$choices_desc_script" '# >>> CHOICES'
check "assemble static function body" \
    gawk '/^\tnone\tDo not sort$/ { found = 1 } END { exit !found }' "$choices_desc_script"
check "assemble static block order" gawk '
    /^# >>> (SPEC|STATIC|HINTS|CHOICES)$/ { block[++n] = $0 }
    END {
        exit !(n == 3 && block[1] == "# >>> SPEC" && block[2] == "# >>> HINTS" \
            && block[3] == "# >>> STATIC")
    }
' "$choices_desc_script"
verify_check "verify described choices" "$choices_desc_script" --cache-dir "$STATIC_FRAGMENTS"
verify_check "verify described choices require-no-choice" "$choices_desc_script" \
    --cache-dir "$STATIC_FRAGMENTS" --require-no-choice-fns
quiet compgen_candidates "$choices_desc_script" demo --sort '' >"$TMP_DIR/compgen-sort.txt"
assert_tsv "compgen described choices" "$TMP_DIR/compgen-sort.txt" 1=none 3='Do not sort'
quiet argc_export "$choices_desc_script" "$TMP_DIR/choices-desc-export.json"
assert_jq "export described choices" \
    '.flag_options[] | select(.id == "sort") | .choice.type == "Fn" and .choice.data[0] == "_static_sort"' \
    "$TMP_DIR/choices-desc-export.json"
assert_jq "export plain choices" \
    '.flag_options[] | select(.id == "plain") | .choice.type == "Values" and .choice.data == ["a", "b"]' \
    "$TMP_DIR/choices-desc-export.json"
assemble_to "$TMP_DIR/static-dump.txt" demo --cache-dir "$STATIC_FRAGMENTS" --dump-static
block_body "$choices_desc_script" STATIC >"$TMP_DIR/static-actual.txt"
assert_same "dump-static matches block" "$TMP_DIR/static-actual.txt" "$TMP_DIR/static-dump.txt"

# STATIC is regenerated; HINTS and CHOICES are preserved.
regen_fragments="$TMP_DIR/fragments-choices-regen"
cp -R "$STATIC_FRAGMENTS" "$regen_fragments"
assemble_to "$TMP_DIR/static-before.sh" demo --cache-dir "$regen_fragments" \
    --context "$STATIC_CONTEXT" --stdout
fragment_jq "$regen_fragments/_root.json" '(.items[] | select(.names | index("--sort")) | .choices[0].description) = "Do not sort at all"'
assemble_to "$TMP_DIR/static-after.sh" demo --cache-dir "$regen_fragments" \
    --context "$TMP_DIR/static-before.sh" --stdout
assert_contains "static regeneration updates description" "$TMP_DIR/static-after.sh" 'Do not sort at all'
assert_contains "static regeneration keeps CHOICES" "$TMP_DIR/static-after.sh" '_choice_keep() { :; }'
assert_contains "static regeneration keeps HINTS" "$TMP_DIR/static-after.sh" '# keep this hint'
assemble_to "$TMP_DIR/static-after-again.sh" demo --cache-dir "$regen_fragments" \
    --context "$TMP_DIR/static-after.sh" --stdout
assert_same "static regeneration idempotent" "$TMP_DIR/static-after.sh" "$TMP_DIR/static-after-again.sh"

# Two items whose static names would collide are rejected, and so is a name the
# preserved CHOICES block already defines.
collide_fragments="$TMP_DIR/fragments-choices-collide"
fragment_with_items "$collide_fragments" '[
  {"kind": "option", "names": ["--foo.bar"], "notations": ["<V>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Dotted"},
  {"kind": "option", "names": ["--foo-bar"], "notations": ["<V>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Dashed"}
]'
check_rejects "assemble rejects static name collision" "static choice function name collision" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$collide_fragments" --stdout
block_append "$STATIC_CONTEXT" "$TMP_DIR/static-preserved.sh" CHOICES '_static_sort() { :; }'
check_rejects "assemble rejects static collision with CHOICES" "already defined outside STATIC" \
    bash "$SCRIPTS/assemble.sh" demo --cache-dir "$STATIC_FRAGMENTS" \
    --context "$TMP_DIR/static-preserved.sh" --stdout

# A bound choice_fn wins over described choices and suppresses the static
# function the descriptions would have generated.
binding_fragments="$TMP_DIR/fragments-choices-binding"
fragment_with_items "$binding_fragments" '[
  {"kind": "option", "names": ["--mode"], "notations": ["<MODE>"], "choices": [{"value": "a", "description": "A"}], "choice_fn": "_choice_root", "repeatable": false, "prefixed": false, "delimiter": null, "description": "Mode"}
]'
assemble_to "$TMP_DIR/choices-binding.sh" demo --cache-dir "$binding_fragments" \
    --context "$FIXTURES/contexts/context.sh" --stdout
assert_contains "binding wins over described choices" "$TMP_DIR/choices-binding.sh" '# @option --mode[?`_choice_root`] <MODE>'
assert_not_contains "binding suppresses static function" "$TMP_DIR/choices-binding.sh" '_static_mode'

# --- choices schema rejections --------------------------------------------
choice_schema_reject() {
    local label="$1" item="$2" needle="$3" dir
    dir="$TMP_DIR/fragments-schema-$(printf '%s' "$label" | tr -c 'A-Za-z0-9' '-')"
    fragment_with_items "$dir" "[$item]"
    check_rejects "$label" "$needle" bash "$SCRIPTS/assemble.sh" demo --cache-dir "$dir" --stdout
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

# --- dynamic binding ------------------------------------------------------
build_dynamic_fixture
assert_contains "dynamic binding rendered" "$DYNAMIC_SCRIPT" '--output[?`_choice_out`]'
assert_contains "dynamic function preserved" "$DYNAMIC_SCRIPT" '_choice_out() {'

assert_not_contains "assemble no value types library" "$SCRIPTS/assemble.sh" "_value_types"
assert_contains "assemble usage repo root" "$SCRIPTS/assemble.sh" "<REPO_ROOT>/cache/compile/<root>"

helper_finish
