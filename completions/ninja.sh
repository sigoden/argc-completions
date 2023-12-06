#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                       print ninja version ("1.11.1")
# @flag -v --verbose                    show all command lines while building
# @flag --quiet                         don't show progress status, just command output
# @option -C <DIR>                      change to DIR before doing anything else
# @option -f <FILE>                     specify input build file [default=build.ninja]
# @option -j <N>                        run N jobs in parallel (0 means infinity) [default=22 on this system]
# @option -k <N>                        keep going until N jobs fail (0 means infinity) [default=1]
# @option -l <N>                        do not start new jobs if the load average is greater than N
# @flag -n                              dry run (don't run commands but act like they succeeded)
# @option -d*[`_choice_mode`] <MODE>    enable debugging (use '-d list' to list modes)
# @option -t*[`_choice_tool`] <TOOL>    run a subtool (use '-t list' to list subtools)
# @option -w <FLAG>                     adjust warnings (use '-w list' to list warnings)
# @arg targets*[`_choice_target`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_mode() {
    ninja -d list | sed -n 's/^  \(\S\+\)\s*\(.*\)/\1\t\2/p'
}

_choice_tool() {
    ninja -t list | sed -n 's/^\s\+\(\S\+\)\s\+\(.*\)/\1\t\2/p'
}

_choice_target() {
    ninja $(_argc_util_param_select_options -C -f) -t targets all | sed 's/:.*//'
}

command eval "$(argc --argc-eval "$0" "$@")"