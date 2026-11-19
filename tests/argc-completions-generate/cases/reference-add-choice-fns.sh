#!/usr/bin/env bash
# references/add-choice-fns.md: export probing and choice-fn binding contract.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

doc="$SKILL_DIR/references/add-choice-fns.md"

# The compgen protocol and the subcommand helper every function body uses.
doc_contains "$doc" \
    "--argc-compgen generic" \
    "_argc_util_comp_subcommand 0"

# Export probing rules and the choice-fn binding contract.
doc_contains "$doc" \
    "no top-level \`.options\` array" \
    "set \`choice_fn\` on **every** item" \
    "set-choice-fns.sh" \
    '--eval-command[`_choice_value`]' \
    '--command~[`_choice_command_args`]' \
    'a terminated arg renders `~` alone' \
    ".flag_options[] | select(.id ==" \
    "_static_" \
    "test-compgen.sh" \
    "_helper_*" \
    "sorts the block" \
    "format-choices.sh" \
    "tool probes"

# A multi-value option stays one item and one binding; the slot decision lives
# inside the function.
doc_contains "$doc" \
    "A multi-value option is still one item" \
    "Do not split the option into several items" \
    "branch on the slot inside the function" \
    "<SKILL_ROOT>/references/compgen-recipes.md"

# A function body starts from both reference section maps; a hand-assembled
# control line is a reported last resort.
doc_contains "$doc" \
    "mandatory lookup" \
    '_argc_utils.sh` §*Section map*' \
    'compgen-recipes.md` §*Section map*' \
    'Do not assemble `__argc_prefix`' \
    "report the uncovered shape"

# Timeouts belong to argc and the shell, never to a `timeout` wrapper.
doc_contains "$doc" "do not wrap an external service in"

# Rules that moved out must not drift back in.
doc_lacks "$doc" \
    ".items |= map(" \
    "LC_ALL=C" \
    "a timeout around network or external services"

helper_finish
