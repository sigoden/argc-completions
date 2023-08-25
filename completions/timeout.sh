#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --preserve-status               exit with the same status as COMMAND, even when the command times out
# @flag --foreground                    when not running timeout directly from a shell prompt, allow COMMAND to read from the TTY and get TTY signals; in this mode, children of COMMAND will not be timed out
# @option -k --kill-after <DURATION>    also send a KILL signal if COMMAND is still running this long after the initial signal was sent
# @option -s --signal                   specify the signal to be sent on timeout; SIGNAL may be a name like 'HUP' or a number; see 'kill -l' for a list of signals
# @flag -v --verbose                    diagnose to stderr any signal sent upon timeout
# @flag --help                          display this help and exit
# @flag --version                       output version information and exit
# @arg duration
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