#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c[`_choice_session`] <arg>       connect to given session
# @option -e <arg>                          execute argument on client initialisation
# @option -E <arg>                          execute argument on server initialisation
# @flag -n                                  do not source kakrc files on startup
# @option -s <arg>                          set session name
# @flag -d                                  run as a headless session (requires -s)
# @option -p[`_choice_session`] <arg>       just send stdin as commands to the given session
# @option -f <arg>                          filter: for each file, select the entire buffer and execute the given keys
# @option -i <arg>                          backup the files on which a filter is applied using the given suffix
# @flag -q                                  in filter mode, be quiet about errors applying keys
# @option -ui[terminal|dummy|json] <arg>    set the type of user interface to use (terminal, dummy, or json)
# @flag -l                                  list existing sessions
# @flag -clear                              clear dead sessions
# @option -debug <arg>                      initial debug option value
# @flag -version                            display kakoune version and exit
# @flag -ro                                 readonly mode
# @flag -help                               display a help message and quit
# @arg file*
# @arg line-col <+<line>[:<col>]|+:>

_choice_session() {
    kak -l
}

command eval "$(argc --argc-eval "$0" "$@")"