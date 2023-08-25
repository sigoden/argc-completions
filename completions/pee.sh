#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --ignore-sigpipe            Do (not) ignore SIGPIPE.
# @flag --no-ignore-sigpipe         Do (not) ignore SIGPIPE.
# @flag --ignore-write-errors       Do (not) ignore write errors.
# @flag --no-ignore-write-errors    Do (not) ignore write errors.
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]

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