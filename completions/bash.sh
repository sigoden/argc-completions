#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c[`_module_os_command`]    If the -c option is present, then commands are read from the first non-option argument command_string.
# @flag -i                            If the -i option is present, the shell is interactive.
# @flag -l                            Make bash act as if it had been invoked as a login shell (see INVOCATION below).
# @flag -r                            If the -r option is present, the shell becomes restricted (see RESTRICTED SHELL below).
# @flag -s                            If the -s option is present, or if no arguments remain after option processing, then commands are read from the standard input.
# @flag -v                            Print shell input lines as they are read.
# @flag -x                            Print commands and their arguments as they are executed.
# @flag -D                            A list of all double-quoted strings preceded by $ is printed on the standard output.
# @option -O <shopt_option>           shopt_option is one of the shell options accepted by the shopt builtin (see SHELL BUILTIN COMMANDS below).
# @flag --debugger                    Arrange for the debugger profile to be executed before the shell starts.
# @flag --dump-po-strings             Equivalent to -D, but the output is in the GNU gettext po (portable object) file format.
# @flag --dump-strings                Equivalent to -D.
# @flag --help                        Display a usage message on standard output and exit successfully.
# @option --init-file <file>
# @option --rcfile <file>             Execute commands from file instead of the system wide initialization file /etc/bash.bashrc and the standard personal initialization file ~/.bashrc if the shell is interactive (see INVOCATION below).
# @flag --login                       Equivalent to -l.
# @flag --noediting                   Do not use the GNU readline library to read command lines when the shell is interactive.
# @flag --noprofile                   Do not read either the system-wide startup file /etc/profile or any of the personal initialization files ~/.bash_profile, ~/.bash_login, or ~/.profile.
# @flag --norc                        Do not read and execute the system wide initialization file /etc/bash.bashrc and the personal initialization file ~/.bashrc if the shell is interactive.
# @flag --posix                       Change the behavior of bash where the default operation differs from the POSIX standard to match the standard (posix mode).
# @flag --restricted                  The shell becomes restricted (see RESTRICTED SHELL below).
# @flag --verbose                     Equivalent to -v.
# @flag --version                     Show version information for this instance of bash on the standard output and exit successfully.
# @arg file
# @arg args*

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