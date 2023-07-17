#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --beep                         beep if command has a non-zero exit
# @flag -c --color                        interpret ANSI color and style sequences
# @option -d --differences <permanent>    highlight changes between updates
# @flag -e --errexit                      exit if command has a non-zero exit
# @flag -g --chgexit                      exit when output from command changes
# @option -n --interval <secs>            seconds to wait between updates
# @flag -p --precise                      attempt run command in precise intervals
# @flag -t --no-title                     turn off header
# @flag -w --no-wrap                      turn off line wrapping
# @flag -x --exec                         pass command to exec instead of "sh -c"
# @flag -h --help                         display this help and exit
# @flag -v --version                      output version information and exit

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_value() {
    _argc_util_comp_file
    _module_os_command
}

_module_os_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"