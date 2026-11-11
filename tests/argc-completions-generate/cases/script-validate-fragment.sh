#!/usr/bin/env bash
# scripts/validate-fragment.jq: description rule acceptance and rejection.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

# fragment_description_check <label> <ok|reject> <description> [<needle>]
fragment_description_check() {
    local label="$1" want="$2" desc="$3" needle="${4:-}" frag
    frag="$TMP_DIR/desc-$(printf '%s' "$label" | cksum | cut -d' ' -f1).json"
    fragment_from_description "$desc" "$frag"
    if validate_fragment "$frag" >/dev/null 2>"$frag.err"; then
        if [[ "$want" == ok ]]; then pass "$label"; else fail "$label (unexpected accept)"; fi
    elif [[ "$want" == reject ]] && { [[ -z "$needle" ]] || file_has_line "$frag.err" "$needle"; }; then
        pass "$label"
    else
        fail "$label (want $want: $(head -n 1 "$frag.err"))"
    fi
}

fragment_description_check "validator accepts one sentence" ok 'Manage remotes'
fragment_description_check "validator accepts abbreviation" ok 'Use e.g. foo'
fragment_description_check "validator accepts dotted tail" ok 'save files to PREFIX/..'
fragment_description_check "validator rejects trailing terminator" reject 'Manage remotes.' 'description must be one line'
fragment_description_check "validator rejects second sentence" reject 'First. Second' 'description must be one line'
fragment_description_check "validator rejects home path" reject 'Use /home/you/bin/x' 'description must be one line'
fragment_description_check "validator rejects HOME path" reject 'Set $HOME/.config' 'description must be one line'
fragment_description_check "validator rejects backtick" reject 'a `b`' 'description must be one line'
fragment_description_check "validator accepts CJK single sentence" ok '清理缓存'
fragment_description_check "validator rejects CJK second sentence" reject '清理。更多' 'description must be one line'

# Meta belongs to the root fragment only.
fragment_from_description 'Root meta' "$TMP_DIR/meta-root.json"
fragment_jq "$TMP_DIR/meta-root.json" '.meta = [{key: "external-subcommands", value: ""}]'
check "validator accepts meta on the root" validate_fragment "$TMP_DIR/meta-root.json"

fragment_jq "$TMP_DIR/meta-root.json" '.path = ["demo", "remote"]'
check_rejects "validator rejects meta on a subcommand" \
    "meta is root-only" \
    jq_skill_file "$TMP_DIR/meta-root.json" -e -f "$NATIVE_SCRIPTS/validate-fragment.jq" --arg key 'demo|remote'

# argc allows some keys on subcommands; this skill does not.
fragment_jq "$TMP_DIR/meta-root.json" '.meta = [{key: "version", value: "1.0.0"}]'
check_rejects "validator rejects any meta on a subcommand" \
    "meta is root-only" \
    jq_skill_file "$TMP_DIR/meta-root.json" -e -f "$NATIVE_SCRIPTS/validate-fragment.jq" --arg key 'demo|remote'

# Item names: any count and any order, but no empty, duplicate, or malformed
# entry, and a prefixed option still takes exactly one name.
names_fragments="$TMP_DIR/fragments-names"
fragment_with_items "$names_fragments" '[
  {"kind": "flag", "names": ["--help", "-?", "-h"], "repeatable": false, "description": "Print help"},
  {"kind": "option", "names": ["-ex", "--eval-command", "-e"], "notations": ["<COMMAND>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Execute a command"},
  {"kind": "flag", "names": ["-~", "--value"], "repeatable": false, "description": "Literal tilde"}
]'
check "validator accepts multi names in any order" validate_fragment "$names_fragments/_root.json"

# A positive spelling and its negated form are two parameters, so they are two
# items; one item carrying both is a schema error.
negation_split="$TMP_DIR/fragments-negation-split"
fragment_with_items "$negation_split" '[
  {"kind": "option", "names": ["--color"], "notations": ["<WHEN>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Colorize the output"},
  {"kind": "flag", "names": ["--no-color"], "repeatable": false, "description": "Colorize the output"},
  {"kind": "flag", "names": ["--no-name"], "repeatable": false, "description": "Do not save the name"}
]'
check "validator accepts a positive item and a separate negated item" validate_fragment "$negation_split/_root.json"

negation_combined="$TMP_DIR/fragments-negation-combined"
fragment_with_items "$negation_combined" '[{"kind": "flag", "names": ["--color", "--no-color"], "repeatable": false, "description": "Colorize the output"}]'
check_rejects "validator rejects combined positive and negated names" \
    "negated and positive spellings must be separate items: --no-color" \
    validate_fragment "$negation_combined/_root.json"

negation_short="$TMP_DIR/fragments-negation-short"
fragment_with_items "$negation_short" '[{"kind": "flag", "names": ["-f", "--force", "--no-force"], "repeatable": false, "description": "Force the operation"}]'
check_rejects "validator rejects combined names in a short group" \
    "negated and positive spellings must be separate items: --no-force" \
    validate_fragment "$negation_short/_root.json"

duplicate_fragments="$TMP_DIR/fragments-duplicate-name"
fragment_with_items "$duplicate_fragments" '[{"kind": "flag", "names": ["-a", "--alpha", "-a"], "repeatable": false, "description": "Duplicate"}]'
check_rejects "validator rejects duplicate name" "duplicate name: -a" \
    validate_fragment "$duplicate_fragments/_root.json"

prefixed_multi="$TMP_DIR/fragments-prefixed-multi"
fragment_with_items "$prefixed_multi" '[{"kind": "option", "names": ["-A", "--alpha"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": true, "delimiter": null, "description": "Prefixed"}]'
check_rejects "validator rejects prefixed multi names" "a prefixed option must have exactly one name" \
    validate_fragment "$prefixed_multi/_root.json"

tilde_name="$TMP_DIR/fragments-tilde-name"
fragment_with_items "$tilde_name" '[{"kind": "option", "names": ["-a", "--alpha~"], "notations": ["<V>"], "choices": [], "choice_fn": null, "repeatable": false, "prefixed": false, "delimiter": null, "description": "Tilde"}]'
check_rejects "validator rejects non-literal tilde name" "must not end in ~" \
    validate_fragment "$tilde_name/_root.json"

# source.command is a single-line shell expression; kind/section keep their
# current semantics.
source_frag="$TMP_DIR/source-command.json"
cp "$FIXTURES/fragments/with-choice/_root.json" "$source_frag"
for cmd in 'demo --help | cat' 'demo --help; demo remote --help' \
    "demo --help | sed 's/^/x/'" \
    'demo --help 2>/dev/null' \
    'demo --help && demo remote --help' 'demo --help || man demo' \
    'LANG=C demo --help' 'help cd'; do
    fragment_jq "$source_frag" --arg cmd "$cmd" '.source.command = $cmd'
    check "validator accepts source.command: $cmd" validate_fragment "$source_frag"
done
fragment_jq "$source_frag" '.source.command = ""'
check_rejects "validator rejects empty source.command" \
    "source.command must be a non-empty single-line shell expression" validate_fragment "$source_frag"
fragment_jq "$source_frag" '.source.command = "   "'
check_rejects "validator rejects whitespace source.command" \
    "source.command must be a non-empty single-line shell expression" validate_fragment "$source_frag"
fragment_jq "$source_frag" '.source.command = "demo --help\ncat"'
check_rejects "validator rejects newline source.command" \
    "source.command must be a non-empty single-line shell expression" validate_fragment "$source_frag"
fragment_jq "$source_frag" '.source.command = "demo --help\tcat"'
check_rejects "validator rejects tab source.command" \
    "source.command must be a non-empty single-line shell expression" validate_fragment "$source_frag"

helper_finish
