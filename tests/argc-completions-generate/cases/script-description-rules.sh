#!/usr/bin/env bash
# scripts/description-rules.jq: the one rule set behind normalize-description
# and validate-fragment. The contract is that production and acceptance agree:
# whatever the normalizer emits must pass the validator.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

rules="$SCRIPTS/description-rules.jq"
normalizer="$SCRIPTS/normalize-description.sh"

# The module is a library, not a program: it compiles only as an `include`.
check_to "$TMP_DIR/rules-empty.txt" "description rules compile as a module" \
    jq -L "$SCRIPTS" -n 'include "description-rules"; empty'
check "description rules module has no output" test ! -s "$TMP_DIR/rules-empty.txt"
# A module file has definitions only, so it is not a runnable program.
if jq -L "$SCRIPTS" -n -f "$rules" >/dev/null 2>&1; then
    fail "description rules excluded from runnable programs (unexpected success)"
else
    pass "description rules excluded from runnable programs"
fi

# The normalizer inlines the include: the module owns the rules, the script
# only builds the choice list and the jq invocation.
check "normalizer script includes the rules" grep -qx 'include "description-rules";' "$normalizer"
check "normalizer script calls normalize_description" grep -q 'normalize_description(' "$normalizer"
check "validator includes the rules" grep -qx 'include "description-rules";' "$SCRIPTS/validate-fragment.jq"
check "validator has no copied description rule" bash -c "! grep -q 'def sentence_boundary' '$SCRIPTS/validate-fragment.jq'"
check "normalizer script has no awk program" bash -c "! grep -q 'gawk' '$normalizer'"

# Acceptance follows production: every normalized output must validate.
fragment_from_description() {
    local desc="$1" out="$2"
    jq -n --arg d "$desc" \
        '{schemaVersion: 1, path: ["demo"], description: $d, aliases: [], meta: [], items: [], subcommands: [], source: {kind: "none"}, hash: "", notes: ""}' >"$out"
}

agreement_case() {
    # usage: agreement_case <label> <raw> [choice...]
    local label="$1" raw="$2"
    shift 2
    local args=() c normalized frag
    for c in "$@"; do args+=(--choice "$c"); done
    normalized="$(printf '%s' "$raw" | bash "$normalizer" "${args[@]}")"
    frag="$TMP_DIR/agree-$(printf '%s' "$label" | cksum | cut -d' ' -f1).json"
    fragment_from_description "$normalized" "$frag"
    if jq -L "$SCRIPTS" -e -f "$SCRIPTS/validate-fragment.jq" --arg key demo "$frag" >/dev/null 2>"$frag.err"; then
        pass "$label"
    else
        fail "$label (normalized '$normalized' rejected: $(head -n 1 "$frag.err"))"
    fi
}

agreement_case "agreement plain sentence" 'Manage remotes. More detail.'
agreement_case "agreement echoed bracket group" 'Mode [a|b] (default: a). More.' a b
agreement_case "agreement labeled bracket group" 'Level [possible values: low, high]' low high
agreement_case "agreement labeled paren group" 'Sort (one of: name, version)' name version
agreement_case "agreement labeled colon list" 'Sort: possible values: name, version' name version

# A labeled enumeration echoes the choice set: it is deleted, and default text
# is never a label.
strip_case() {
    # usage: strip_case <label> <raw> <expected> [choice...]
    local label="$1" raw="$2" expected="$3"
    shift 3
    local args=() c got
    for c in "$@"; do args+=(--choice "$c"); done
    got="$(printf '%s' "$raw" | bash "$normalizer" "${args[@]}")"
    if [[ "$got" == "$expected" ]]; then
        pass "$label"
    else
        fail "$label (got '$got', want '$expected')"
    fi
}

strip_case "label possible values dropped" \
    'Set zip compress level [default: low] [possible values: none, low, medium, high]' \
    'Set zip compress level [default: low]' none low medium high
strip_case "label one of dropped" 'Sort (one of: name, version)' 'Sort' name version
strip_case "label with single value dropped" 'Mode [possible values: fast]' 'Mode' fast
strip_case "default label kept" 'Keep default [default: low]' 'Keep default [default: low]' low
strip_case "partial labeled group kept" 'Level [possible values: low, high]' \
    'Level [possible values: low, high]' low
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

# The validator still rejects what production would not emit.
fragment_from_description 'First. Second' "$TMP_DIR/reject-two.json"
expect_failure "agreement validator rejects two sentences" \
    jq -L "$SCRIPTS" -e -f "$SCRIPTS/validate-fragment.jq" --arg key demo "$TMP_DIR/reject-two.json"
fragment_from_description 'Use /home/you/bin' "$TMP_DIR/reject-home.json"
expect_failure "agreement validator rejects home path" \
    jq -L "$SCRIPTS" -e -f "$SCRIPTS/validate-fragment.jq" --arg key demo "$TMP_DIR/reject-home.json"

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
    jq -L "$SCRIPTS" -e -f "$SCRIPTS/validate-fragment.jq" --arg key demo "$TMP_DIR/reject-labeled-colon.json"

helper_finish
