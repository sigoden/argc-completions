#!/usr/bin/env bash
# Cross-document invariants: path convention lint and document-wide bans.
#
# The lint bans bare artifact names, and those names are read from the
# directory (scripts/*.sh, scripts/*.jq, references/*.md, agents/*.md), so a new
# script or document is covered without editing this case. A per-name self-test
# proves the derived alternation actually reaches every artifact.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

shopt -s nullglob

# ere_alternation <path...>: basenames without their suffix, joined into one ERE
# branch. Characters outside [A-Za-z0-9_-] are escaped so a filename cannot
# inject pattern syntax.
ere_alternation() {
    local path name escaped=() joined
    for path in "$@"; do
        name="$(basename "$path")"
        name="${name%.*}"
        escaped+=("$(printf '%s' "$name" | sed 's/[^A-Za-z0-9_-]/\\&/g')")
    done
    local IFS='|'
    joined="${escaped[*]}"
    printf '%s' "$joined"
}

# path_prefix_lint <file...>: every path in a skill doc carries one of the two
# documented roots, and no artifact is named bare.
path_prefix_lint() {
    gawk -v script_names="$(ere_alternation "$SCRIPTS"/*.sh)" \
        -v jq_names="$(ere_alternation "$SCRIPTS"/*.jq)" \
        -v reference_names="$(ere_alternation "$SKILL_DIR"/references/*.md)" \
        -v agent_names="$(ere_alternation "$SKILL_DIR"/agents/*.md)" '
    function report(kind) {
        printf "%s:%d: %s: %s\n", FILENAME, FNR, kind, $0
        failed = 1
    }
    # An empty name list would silently disarm a rule; fail instead.
    BEGIN {
        if (script_names == "" || jq_names == "" || reference_names == "" || agent_names == "") {
            print "path lint: empty artifact name list"
            exit 1
        }
    }
    /\.\/(scripts|references|agents|cache|completions|utils|tests|bin|skills|install\.sh)/ { report("dot-relative path") }
    /(^|[^>\/$A-Za-z0-9_.-])(scripts|references|agents|cache|completions|utils|tests|bin|skills)\// { report("bare path prefix") }
    /(^|[^>\/$A-Za-z0-9_.-])install\.sh/ { report("bare install.sh") }
    $0 ~ ("(^|[^>/$A-Za-z0-9_.-])(" script_names ")\\.sh") { report("bare skill script") }
    $0 ~ ("(^|[^>/$A-Za-z0-9_.-])(" jq_names ")\\.jq") { report("bare skill jq") }
    $0 ~ ("(^|[^>/$A-Za-z0-9_.-])(" reference_names ")\\.md") { report("bare reference filename") }
    $0 ~ ("(^|[^>/$A-Za-z0-9_.-])(" agent_names ")\\.md") { report("bare agent contract") }
    /(^|[^>\/$A-Za-z0-9_.-])SKILL\.md/ { report("bare SKILL.md") }
    /<repo>|<skill>|\.agents\/skills\/argc-completions-generate/ { report("legacy root placeholder") }
    END { exit failed }
    ' "$@"
}

# Path convention guards: every skill doc uses the two documented roots.
skill_docs=("$SKILL_DIR/SKILL.md" "$SKILL_DIR"/references/*.md "$SKILL_DIR"/agents/*.md)
check "doc set present" test "${#skill_docs[@]}" -gt 2
check "docs path prefixes" path_prefix_lint "${skill_docs[@]}"
printf 'cache/compile/<root>\n' >"$TMP_DIR/bare-path.md"
expect_failure "path lint detects bare prefix" path_prefix_lint "$TMP_DIR/bare-path.md"
printf '<ARGC_COMPLETIONS_ROOT>/cache/compile/<root>\n' >"$TMP_DIR/rooted-path.md"
check "path lint accepts rooted path" path_prefix_lint "$TMP_DIR/rooted-path.md"
# Every artifact, rooted: the derived bare-name rules must stay quiet here.
{
    for path in "$SKILL_DIR"/references/*.md; do
        printf 'Read <SKILL_ROOT>/references/%s first.\n' "$(basename "$path")"
    done
    for path in "$SKILL_DIR"/agents/*.md; do
        printf 'Follow <SKILL_ROOT>/agents/%s exactly.\n' "$(basename "$path")"
    done
    for path in "$SCRIPTS"/*.sh; do
        printf 'Run <SKILL_ROOT>/scripts/%s before continuing.\n' "$(basename "$path")"
    done
    for path in "$SCRIPTS"/*.jq; do
        printf 'Pipe the export into <SKILL_ROOT>/scripts/%s.\n' "$(basename "$path")"
    done
} >"$TMP_DIR/rooted-artifacts.md"
check "path lint accepts every rooted artifact" path_prefix_lint "$TMP_DIR/rooted-artifacts.md"

# Bare-name self-tests: one document per artifact, so a name that drops out of
# the derived alternation is caught here instead of shipping as a blind spot.
for path in "$SKILL_DIR"/references/*.md; do
    name="$(basename "$path" .md)"
    printf 'Read %s.md before continuing.\n' "$name" >"$TMP_DIR/bare-ref-$name.md"
    expect_failure "path lint detects bare reference $name.md" \
        path_prefix_lint "$TMP_DIR/bare-ref-$name.md"
done
for path in "$SKILL_DIR"/agents/*.md; do
    name="$(basename "$path" .md)"
    printf 'Follow the %s.md contract.\n' "$name" >"$TMP_DIR/bare-agent-$name.md"
    expect_failure "path lint detects bare agent contract $name.md" \
        path_prefix_lint "$TMP_DIR/bare-agent-$name.md"
done
for path in "$SCRIPTS"/*.sh; do
    name="$(basename "$path" .sh)"
    printf 'Run %s.sh <root> first.\n' "$name" >"$TMP_DIR/bare-script-$name.md"
    expect_failure "path lint detects bare script $name.sh" \
        path_prefix_lint "$TMP_DIR/bare-script-$name.md"
done
for path in "$SCRIPTS"/*.jq; do
    name="$(basename "$path" .jq)"
    printf 'Pipe the fragment into %s.jq for a compact view.\n' "$name" \
        >"$TMP_DIR/bare-jq-$name.md"
    expect_failure "path lint detects bare jq $name.jq" \
        path_prefix_lint "$TMP_DIR/bare-jq-$name.md"
done

check "skill docs no stale command args helper" bash -c "! grep -RF '_argc_util_comp_command_args' '$SKILL_DIR'"
check "references no shell command source" bash -c '! grep -RFq -- "compgen -c" "$1"' _ "$SKILL_DIR/references"
check "no doc explains the choice marker" bash -c "! grep -RqE 'advisory hint|optional hint' '$SKILL_DIR'"
check "docs no value_type field" bash -c "! grep -RqE 'value_type' '$SKILL_DIR'"
check "skill no shared completer helpers" bash -c "! grep -RqE '_user_value|_hostname_value|shared completer' '$SKILL_DIR'"

helper_finish
