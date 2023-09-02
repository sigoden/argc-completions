#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --ctty       set the controlling terminal to the current one
# @flag -f --fork       always fork
# @flag -w --wait       wait program to exit, and use the same return
# @flag -h --help       display this help
# @flag -V --version    display version
# @arg program[`_module_os_command`]
# @arg arguments~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"