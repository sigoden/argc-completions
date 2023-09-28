#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -x                          use XML format for printing or reading variables (must appear before -p or -f)
# @flag -X                          use HEX format for printing or reading variables (must appear before -p or -f)
# @flag -p                          print all firmware variables
# @flag -f                          set firmware variables from a text file
# @option -d[`_choice_variable`]    delete the named variable
# @flag -c                          delete all variables
# @arg vars*[`_choice_variable`]

_choice_variable() {
    nvram -p
}

command eval "$(argc --argc-eval "$0" "$@")"