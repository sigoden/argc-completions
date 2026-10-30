#!/usr/bin/env bash
# references/add-choice-fns.md: export probing and choice-fn binding contract.

set -euo pipefail
. "$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/helper.sh"
helper_init

choice_md="$SKILL_DIR/references/add-choice-fns.md"

assert_contains "choice docs generic compgen" "$choice_md" "--argc-compgen generic"
assert_contains "choice docs subcommand helper" "$choice_md" '_argc_util_comp_subcommand 0'

# Export probing rules and the choice-fn binding contract.
assert_contains "choice docs export schema" "$choice_md" "no top-level \`.options\` array"
assert_contains "choice docs split binding" "$choice_md" "set \`choice_fn\` on **every** item"
assert_contains "choice docs binding script" "$choice_md" "set-choice-fns.sh"
assert_contains "choice docs multi-name binding" "$choice_md" '--eval-command[`_choice_value`]'
assert_contains "choice docs terminated binding" "$choice_md" '--command~[`_choice_command_args`]'
assert_not_contains "choice docs no inline binding jq" "$choice_md" ".items |= map("
assert_contains "choice docs single-item query" "$choice_md" ".flag_options[] | select(.id =="
assert_contains "choice docs reserved prefix" "$choice_md" "_static_"
assert_contains "choice docs assertion helper" "$choice_md" "test-compgen.sh"
assert_contains "choice docs helper naming" "$choice_md" "_helper_*"
assert_contains "choice docs ascii order" "$choice_md" "LC_ALL=C"
assert_contains "choice docs format script" "$choice_md" "format-choices.sh"

helper_finish
