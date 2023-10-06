#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a    Respond to all events which occur while the utility is running.
# @flag -c    Clear the screen before invoking the utility specified on the command line.
# @flag -d    Track the directories of regular files provided as input and exit if a new file is added.
# @flag -n    Run in non-interactive mode.
# @flag -p    Postpone the first execution of the utility until a file is modified.
# @flag -r    Reload a persistent child process.
# @flag -s    Evaluate the first argument using the interpreter specified by the SHELL environment variable.
# @flag -z    Exit after the utility completes.
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