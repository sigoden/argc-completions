#!/usr/bin/env bash

set -e

# @cmd Generate completion scripts
# @arg cmd[`_choice_command`]
generate() {
    if [ $# -eq 0 ]; then
        while read -r name; do
            echo Generate $name
            argc generate $name
        done < <(_choice_command)
    else
        ./generate.sh -o completions $1
    fi
}

# @cmd Print command help
# @arg cmd![`_choice_command`]
# @arg args*
print-help() {
    _help_source_src $1
    if [[ $(type -t _patch_help) = "function" ]]; then
        _patch_help $@
    else
        $@ --help
    fi
}

# @cmd Pirnt command table
# @arg cmd![`_choice_command`]
# @arg args*
print-table() {
    _help_source_src $1
    help_text=$(print-help $@ | awk -f scripts/lexer.awk)
    if [[ $(type -t _patch_table) = "function" ]]; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

# @cmd
test() {
    ./generate.sh -o tests __options
    ./generate.sh -o tests __arguments
    ./generate.sh -o tests __commands
}

_choice_command() {
    for f in src/*; do
        name=$(basename $f)
        echo "${name%.*}"
    done
}

_help_source_src() {
    if [[ -f src/$1.sh ]]; then
        . src/$1.sh
    elif [[ -f src/$1/$1.sh ]]; then
        . src/$1/$1.sh
    fi
}

eval "$(argc --argc-eval "$0" "$@")"
