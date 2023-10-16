#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n --name <STRING>              description for the NAME paragraph
# @option -s --section[1|6|8]             section number for manual page
# @option -m --manual <TEXT>              name of manual (User Commands, ...)
# @option -S --source <TEXT>              source of program (FSF, Debian, ...)
# @option -L --locale <STRING>            select locale (default "C")
# @option -i --include <FILE>             include material from `FILE'
# @option -I --opt-include <FILE>         include material from `FILE' if it exists
# @option -o --output <FILE>              send output to `FILE'
# @option -p --info-page <TEXT>           name of Texinfo manual
# @flag -N --no-info                      suppress pointer to Texinfo manual
# @flag -l --libtool                      exclude the `lt-' from the program name
# @flag --help                            print this help, then exit
# @flag --version                         print version number, then exit
# @option -h --help-option <STRING>       help option string
# @option -v --version-option <STRING>    version option string
# @option --version-string <STRING>       version string
# @flag --no-discard-stderr               include stderr when parsing option output
# @arg executable[`_module_os_command`]

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