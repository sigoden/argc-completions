#!/usr/bin/env bash
# scripts/description-rules.jq: the one rule set behind normalize-description
# and validate-fragment. The contract is that production and acceptance agree:
# whatever the normalizer emits must pass the validator.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

normalizer="$SCRIPTS/normalize-description.sh"
validator="$SCRIPTS/validate-fragment.jq"

# --- module wiring --------------------------------------------------------
# The module is a library, not a program: it compiles only as an `include`.
check_to "$TMP_DIR/rules-empty.txt" "description rules compile as a module" \
    jq_skill -n 'include "description-rules"; empty'
check "description rules module has no output" test ! -s "$TMP_DIR/rules-empty.txt"
expect_failure "description rules excluded from runnable programs" jq_skill -n -f "$NATIVE_SCRIPTS/description-rules.jq"

# The normalizer inlines the include: the module owns the rules, the script
# only builds the choice list and the jq invocation.
assert_has_line "normalizer script includes the rules" "$normalizer" 'include "description-rules";'
assert_contains "normalizer script calls normalize_description" "$normalizer" 'normalize_description('
assert_has_line "validator includes the rules" "$validator" 'include "description-rules";'
assert_not_contains "validator has no copied description rule" "$validator" 'def sentence_boundary'
assert_not_contains "normalizer script has no awk program" "$normalizer" 'gawk'

# agreement_case <label> <raw> [<choice...>]: every normalized output must
# validate.
agreement_case() {
    local label="$1" raw="$2" normalized frag
    shift 2
    normalized="$(normalize_description "$raw" "$@")"
    frag="$TMP_DIR/agree-$(printf '%s' "$label" | cksum | cut -d' ' -f1).json"
    fragment_from_description "$normalized" "$frag"
    if validate_fragment "$frag" >/dev/null 2>"$frag.err"; then
        pass "$label"
    else
        fail "$label (normalized '$normalized' rejected: $(head -n 1 "$frag.err"))"
    fi
}

# strip_case <label> <raw> <expected> [<choice...>]
strip_case() {
    local label="$1" raw="$2" expected="$3" got
    shift 3
    got="$(normalize_description "$raw" "$@")"
    if [[ "$got" == "$expected" ]]; then
        pass "$label"
    else
        fail "$label (got '$got', want '$expected')"
    fi
}

# --- acceptance follows production ---------------------------------------
agreement_case "agreement plain sentence" 'Manage remotes. More detail.'
agreement_case "agreement echoed bracket group" 'Mode [a|b] (default: a). More.' a b
agreement_case "agreement labeled bracket group" 'Level [possible values: low, high]' low high
agreement_case "agreement labeled paren group" 'Sort (one of: name, version)' name version
agreement_case "agreement labeled colon list" 'Sort: possible values: name, version' name version
agreement_case "agreement echoed colon list" 'Select sort: name,version,none.' name version none
agreement_case "agreement home path connector" 'use /home/you/.local/bin/browser.sh or BROWSER'
agreement_case "agreement home-only text" '$HOME/.config/x'
agreement_case "agreement multiline and backticks" $'Set `foo`\n    wrapped\tline.'
agreement_case "agreement abbreviation" 'Print sizes (e.g. 1K 234M 56G)'
agreement_case "agreement dotted tail" 'save files to PREFIX/..'
agreement_case "agreement single letter initial" 'J. Smith'
agreement_case "agreement CJK sentence" '清理缓存。更多说明'
agreement_case "agreement nested group kept" 'Nested (a (b) c) group stays' a b
agreement_case "agreement unclosed group kept" 'Unclosed [a|b text' a b
agreement_case "agreement empty description" ''

# A labeled enumeration echoes the choice set: it is deleted, and default text
# is never a label.
strip_case "label possible values dropped" \
    'Set zip compress level [default: low] [possible values: none, low, medium, high]' \
    'Set zip compress level [default: low]' none low medium high
strip_case "label one of dropped" 'Sort (one of: name, version)' 'Sort' name version
strip_case "label with single value dropped" 'Mode [possible values: fast]' 'Mode' fast
strip_case "default label kept" 'Keep default [default: low]' 'Keep default [default: low]' low
strip_case "partial labeled group kept" 'Level [possible values: low, high]' \
    'Level [possible values: low, high]' low

# --- the validator still rejects what production would not emit -----------
fragment_from_description 'First. Second' "$TMP_DIR/reject-two.json"
expect_failure "agreement validator rejects two sentences" validate_fragment "$TMP_DIR/reject-two.json"
fragment_from_description 'Use /home/you/bin' "$TMP_DIR/reject-home.json"
expect_failure "agreement validator rejects home path" validate_fragment "$TMP_DIR/reject-home.json"

# A labeled colon list still echoes the choices: the label is ignored when the
# tail is compared, so the validator rejects the unnormalized form.
jq -n --arg d 'Sort: possible values: name, version' --args '
  {schemaVersion: 1, path: ["demo"], description: "", aliases: [], meta: [],
   items: [{kind: "option", names: ["--sort"], notations: ["<VALUE>"],
            choices: ($ARGS.positional | map({value: ., description: ""})),
            choice_fn: null, repeatable: false, prefixed: false, delimiter: null,
            description: $d}],
   subcommands: [], source: {kind: "none"}, hash: "", notes: ""}' name version \
    >"$TMP_DIR/reject-labeled-colon.json"
expect_failure "agreement validator rejects labeled colon echo" \
    validate_fragment "$TMP_DIR/reject-labeled-colon.json"

helper_finish
