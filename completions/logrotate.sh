#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -d --debug                  Don't do anything, just test and print debug messages
# @flag -f --force                  Force file rotation
# @option -m --mail[`_module_os_command`] <command>  Command to send mail (instead of `/bin/mail')
# @option -s --state <statefile>    Path of state file
# @flag --skip-state-lock           Do not lock the state file
# @flag --wait-for-state-lock       Wait for lock on the state file
# @flag -v --verbose                Display messages during rotation
# @option -l --log <logfile>        Log file or 'syslog' to log to syslog
# @flag --version                   Display version information
# @flag -? --help                   Show this help message
# @flag --usage                     Display brief usage message
# @arg configfile!

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

command eval "$(argc --argc-eval "$0" "$@")"