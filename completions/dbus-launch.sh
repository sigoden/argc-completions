#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --auto-syntax                 Choose --csh-syntax or --sh-syntax based on the SHELL environment variable.
# @flag --binary-syntax               Write to stdout a nul-terminated bus address, then the bus PID as a binary integer of size sizeof(pid_t), then the bus X window ID as a binary integer of size sizeof(long).
# @flag --close-stderr                Close the standard error output stream before starting the D-Bus daemon.
# @option --config-file <FILENAME>    Pass --config-file=FILENAME to the bus daemon, instead of passing it the --session argument.
# @flag --csh-syntax                  Emit csh compatible code to set up environment variables.
# @flag --exit-with-x11               If this option is provided, a persistent "babysitter" process will be created, and will connect to the X server.
# @flag --exit-with-session           If this option is provided, a persistent "babysitter" process will be created, as if for --exit-with-x11.
# @option --autolaunch <MACHINEID>    This option implies that dbus-launch should scan for a previously-started session and reuse the values found there.
# @flag --sh-syntax                   Emit Bourne-shell compatible code to set up environment variables.
# @flag --version                     Print the version of dbus-launch
# @flag --help                        Print the help info of dbus-launch
# @arg program[`_module_os_command`]
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