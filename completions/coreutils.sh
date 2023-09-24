#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg command[`_choice_command`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_command() {
    coreutils -h | sed -n '/^    \S/ {s/^    //p}' | tr -d '\n' | sed 's/,\s*/\n/g'
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"