#!/usr/bin/env bash
# SKILL.md: router contract (references, workflows, rule ownership).

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/SKILL.md"

# SKILL.md is injected in full on every invocation; keep it a thin router that
# still names every reference the workflows defer.
for ref in "$SKILL_DIR"/references/*.md; do
    assert_contains "SKILL.md routes ${ref##*/}" "$doc" "${ref##*/}"
done

# The workflow table and its gates.
doc_contains "$doc" \
    "ask for confirmation" \
    "delete-cache.sh" \
    "Cache-first: never dispatch" \
    "root_fragment_exists=0" \
    "check-fragment.sh" \
    "finalize-cache" \
    'Assemble only when no node is `todo`'

# The structure workflow hands off to add-choice-fns on a semantic reading of
# the exported values; there is no keyword gate script.
doc_contains "$doc" \
    '| `generate-structure` |' \
    'brand-new command defaults to `all`' \
    '| `all` | Brand-new command (`existing=0`)' \
    "next=add-choice-fns"

# A detected bridge is a shortcut that replaces generation with a template copy.
doc_contains "$doc" \
    'bridge=<name>' \
    '<REPO_ROOT>/bridges/<bridge>.sh' \
    'Bridge shortcut' \
    'output_file'

# Root identity vs invocation form for external subcommands.
doc_contains "$doc" \
    "keys every artifact path" \
    "owned by"

# One stream, one jq: a merged stderr breaks the export.
doc_contains "$doc" "2>&1 | jq"

# Block and HINTS contracts the router still states itself.
doc_contains "$doc" \
    '# >>> STATIC' \
    'Lines before the first `# %%` marker are common to every command in the root' \
    'with no inheritance' \
    "Paths compare with collapsed whitespace" \
    '# %%<root> <sub>'

# The counts line is the reporting contract, so every field is defined here
# instead of being inferred from the examples.
doc_contains "$doc" \
    "counts line uses fixed fields" \
    '`commands` is the number of command blocks in `SPEC`' \
    '`fragments` is the number of `.json` files under the cache directory' \
    '`pruned` is the `removed` count'

# Writing a function body is gated on both reference section maps: SKILL.md
# carries the invariant instead of deferring the lookup.
doc_contains "$doc" "both section maps"
doc_lacks "$doc" 'only when a `_choice_*` body needs'

# Doc authorship (maintainers): workflow-local rules live only in their owner
# file (SKILL.md §Rule ownership); SKILL.md keeps cross-cutting invariants and
# links out. The guards below reject distinctive phrases from rules that moved
# out, so a copy cannot drift back into the router.
doc_contains "$doc" "## Rule ownership"
doc_lacks "$doc" \
    "| \`regenerate\` |" \
    "bound slow queries" \
    "Never guard the completion's own root command" \
    "allowed only inside functions" \
    'Do not use `git status` to confirm output' \
    "format-choices.sh" \
    "Candidate assertions use" \
    'Do not inspect `<REPO_ROOT>/completions/`' \
    "A first generation skips the check" \
    "LC_ALL=C" \
    "NUL SKILL_CACHE_VERSION" \
    "The hash body includes"

helper_finish
