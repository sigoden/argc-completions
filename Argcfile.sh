#!/usr/bin/env bash

# @cmd
# @arg cmd[?`_choice_command`]
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
# @arg cmd![?`_choice_command`]
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
# @flag -P --no-patch
# @arg cmd![?`_choice_command`]
# @arg args*
print-help() {
      ( set -o posix ; set ) | grep argc_
    _source_src $1
    if _test_patch_fn help; then
        _patch_help $@
    else
        $@ --help
    fi
}

# @cmd
# @flag -P --no-patch
# @arg cmd![?`_choice_command`]
# @arg args*
print-table() {
    _source_src $1
    help_text=$(print-help $@ | awk -f scripts/lexer.awk)
    if _test_patch_fn table; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

# @cmd
# @flag -P --no-patch
# @arg cmd![?`_choice_command`]
# @arg args*
print-script() {
    _source_src $1
    table_text=$(print-table $@ | awk -f scripts/parser.awk)
    if _test_patch_fn script; then
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

_source_src() {
    if [[ "$source_src" == "$1" ]]; then
        return
    fi
    . utils/_patch_utils.sh
    if [[ -f src/$1.sh ]]; then
        . src/$1.sh
    elif [[ -f src/$1/$1.sh ]]; then
        . src/$1/$1.sh
    elif [[ "$1" == "__test"* ]]; then
        . tests/src/$1.sh
    fi
    source_src="$1"
}

_test_patch_fn() {
    local target=$1
    if [[ "$argc_no_patch" -eq 1 ]] && [[ "$argc__fn" == "print-$target" ]]; then
        return 1
    fi
    if [[ $(type -t _patch_$target) != "function" ]] ; then
        return 1
    fi
    return 0
}

eval "$(argc --argc-eval "$0" "$@")"
