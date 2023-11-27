#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --cmd                                     Graph the execution time for a list of commands rather than pinging hosts
# @option -n --watch-interval <WATCH_INTERVAL>    Watch interval seconds (provide partial seconds like '0.5').
# @option -b --buffer                             Determines the number of seconds to display in the graph.
# @flag -4                                        Resolve ping targets to IPv4 address
# @flag -6                                        Resolve ping targets to IPv6 address
# @option -i --interface                          Interface to use when pinging
# @flag -s --simple-graphics                      Uses dot characters instead of braille
# @option --vertical-margin <VERTICAL_MARGIN>     Vertical margin around the graph (top and bottom) [default: 1]
# @option --horizontal-margin <HORIZONTAL_MARGIN>  Horizontal margin around the graph (left and right) [default: 0]
# @option -c --color <color>                      Assign color to a graph entry.
# @flag --clear                                   Clear the graph from the terminal after closing the program
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @arg host_or_commands~[`_choice_host_or_commands`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_host_or_commands() {
    if [[ -n "$argc_cmd" ]]; then
        _module_os_exec
    fi
}

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

_module_os_exec() {
    if [[ -n "$argc__option" ]]; then
        argc__positionals=( "${!argc__option}" )
    fi
    if [[ "${#argc__positionals[@]}" -lt 2 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 0
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"