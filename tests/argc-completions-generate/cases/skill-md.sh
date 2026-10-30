#!/usr/bin/env bash
# SKILL.md: router contract (references, workflows, rule ownership).

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

skill_md="$SKILL_DIR/SKILL.md"

# SKILL.md is injected in full on every invocation; keep it a thin router that
# still names every reference the workflows defer.
for ref in "$SKILL_DIR"/references/*.md; do
    check "SKILL.md routes $(basename "$ref")" \
        grep -Fq "$(basename "$ref")" "$skill_md"
done

assert_contains "skill regenerate routing" "$skill_md" "| \`regenerate\` |"
assert_contains "skill regenerate trigger" "$skill_md" "Explicit regenerate intent overrides the cache state"
assert_contains "skill reset-cache step" "$skill_md" "reset-cache.sh"

# The structure workflow hands off to add-choice-fns on a semantic reading of
# the exported values; there is no keyword gate script.
assert_contains "skill generate-structure routing" "$skill_md" '| `generate-structure` |'
assert_contains "skill all default" "$skill_md" 'a brand-new command defaults to `all`'
assert_contains "skill all routing" "$skill_md" '| `all` | Brand-new command (`existing=0`)'
assert_contains "skill next step" "$skill_md" "next=add-choice-fns"
assert_contains "skill merged stream ban" "$skill_md" "2>&1 | jq"
assert_contains "skill static block contract" "$skill_md" '# >>> STATIC'

# Writing a function body is gated on both reference section maps: SKILL.md
# carries the invariant instead of deferring the lookup.
assert_contains "skill mandatory helper lookup" "$skill_md" "both section maps"
assert_not_contains "skill no deferred helper lookup" "$skill_md" 'only when a `_choice_*` body needs'

# Doc authorship (maintainers): workflow-local rules live only in their owner
# file (SKILL.md §Rule ownership); SKILL.md keeps cross-cutting invariants and
# links out. The guards below reject distinctive phrases from rules that moved
# out, so a copy cannot drift back into the router.
assert_contains "skill rule ownership" "$skill_md" "## Rule ownership"
assert_not_contains "skill no bounded-query rule" "$skill_md" "bound slow queries"
assert_not_contains "skill no root-guard rule" "$skill_md" "Never guard the completion's own root command"
assert_not_contains "skill no yq policy rule" "$skill_md" "allowed only inside functions"
assert_not_contains "skill no git-status rule" "$skill_md" 'Do not use `git status` to confirm output'
assert_not_contains "skill no format rule" "$skill_md" "format-choices.sh"
assert_not_contains "skill no generic-assertion rule" "$skill_md" "Candidate assertions use"
assert_not_contains "skill no completions-inspection rule" "$skill_md" 'Do not inspect `<REPO_ROOT>/completions/`'
assert_not_contains "skill no sort rule" "$skill_md" "LC_ALL=C"

helper_finish
