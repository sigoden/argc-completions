#!/usr/bin/env bash

set -e

# @cmd
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

# @cmd
test() {
    ./generate.sh __test
}

# @cmd
# @option -k --kind[=table|help|script]
# @arg cmd![`_choice_command`]
# @arg args*
print() {
    if [[ "$argc_kind" == "help" ]]; then
        print-help $@
    elif [[ "$argc_kind" == "table" ]]; then
        print-table $@
    elif [[ "$argc_kind" == "script" ]]; then
        print-script $@
    fi
}

# @cmd
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

# @cmd
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
# @arg cmd![`_choice_command`]
# @arg args*
print-script() {
    _help_source_src $1
    table_text=$(print-table $@ | awk -f scripts/parser.awk)
    if [[ $(type -t _patch_script) = "function" ]]; then
        echo "$table_text" | _patch_script $@
    else
        echo "$table_text"
    fi
}

_choice_command() {
    for f in completions/*; do
        name=$(basename $f)
        echo "${name%.*}"
    done
}

_help_source_src() {
    if [[ "$source_src" == "$1" ]]; then
        return
    fi
    if [[ -f src/$1.sh ]]; then
        . src/$1.sh
        source_src="$1"
    elif [[ -f src/$1/$1.sh ]]; then
        . src/$1/$1.sh
        source_src="$1"
    fi
}

eval "$(argc --argc-eval "$0" "$@")"
