#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n --adjustment <N>    add integer N to the niceness (default 10)
# @flag --help                   display this help and exit
# @flag --version                output version information and exit
# @arg command[`_module_os_command`]
# @arg arg~[`_module_os_command_args`]

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