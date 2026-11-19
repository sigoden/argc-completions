#!/usr/bin/env bash
# references/compgen.md: protocol sections, routing, candidate-check contract.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/compgen.md"

# The numbered sections are the workflow's reading order.
missing_sections=""
for section in 1 2 3 4 5 6; do
    grep -q "^## $section\. " "$doc" || missing_sections+=" $section"
done
if [[ -z "$missing_sections" ]]; then
    pass "compgen sections 1-6"
else
    fail "compgen sections 1-6 (missing:$missing_sections)"
fi
check "compgen section map rows" gawk '
    /^## Section map/ { inside = 1; next }
    inside && /^## / { exit }
    inside && /^\| §/ { n++ }
    END { exit !(n == 6) }
' "$doc"

doc_contains "$doc" \
    "Candidate checks" \
    "--argc-compgen generic" \
    "<SKILL_ROOT>/references/add-choice-fns.md" \
    "__argc_value=<NOTATION>" \
    "A candidate query must be read-only and bounded" \
    "_argc_util_cache" \
    "test-compgen.sh" \
    'command -v yq' \
    "never write the control lines by hand" \
    "mandatory reading before writing"

# The generated array includes the current word; that is the slot counter for
# an option with several value slots.
doc_contains "$doc" \
    "array (option or arg) also includes the current word" \
    '`--pair <TAB>` gives `${argc_pair[@]} = ("")`' \
    "1-based slot being completed" \
    "<SKILL_ROOT>/references/compgen-recipes.md"

# Candidate pipelines stay plain: argc dedupes and orders, jq stays LF-only on
# Windows, and timeouts belong to argc and the shell.
doc_contains "$doc" \
    "Do not sort or dedupe candidates" \
    "jq -b -r" \
    'Never wrap a query in `timeout` command'

# Tool probes: the root and the prerequisites are called directly; `command -v`
# survives only for a tool that may be absent, including command-specific
# branches. §5 documents the raw control lines; it is not a licence to
# hand-assemble them.
doc_contains "$doc" \
    "own root command and any prerequisite tool directly" \
    "Call the root in its invocation form" \
    "first command" \
    "later pipeline" \
    "cargo audit --help" \
    'never `cargo-audit ...`' \
    "command-specific implementations"

doc_lacks "$doc" "COMP_WORDBREAKS"

# --- function-only harness documented in §6 -------------------------------
# A CHOICES body plus a choice function must produce candidates without running
# the generated script.
build_with_script
harness_out="$(
    eval "$(block_body "$WITH_SCRIPT" CHOICES)"
    _choice_foo
)"
check "function harness" test "$harness_out" = "foo"

helper_finish
