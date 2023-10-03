#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                               show program's version number and exit
# @flag -h --help                               show this help message and exit
# @option -f[fork|root|terminal] <FLAGS>        use additional flags: f=fork, r=root, t=terminal.
# @flag -l                                      list possible ways to open the files (id:label:flags:command)
# @option -p <KEYWORD>                          pick a method to open the files.
# @option -w[`_module_os_command`] <PROGRAM>    open the files with PROGRAM
# @option -c <CONFIG_FILE>                      read config from specified file instead of default
# @arg files*

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