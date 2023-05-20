#!/usr/bin/env bash

# @cmd
# @arg cmd[?`_choice_completion`]
generate() {
    if [ $# -eq 0 ]; then
        while read -r name; do
            echo Generate $name
            argc generate $name
        done < <(_choice_completion)
    else
        ./generate.sh -o completions $1
    fi
}

# @cmd
test() {
    ./generate.sh __test
}

# @cmd
# @arg cmd![`_choice_completion_or_src`]
# @arg fn![`_choice_fn_name`]
# @arg line
run-choice-fn() {
    cmd_script="completions/$argc_cmd.sh"
    if [[ -n "$argc_line" ]] && [[ -f "$cmd_script" ]]; then
        argc_line=${argc_line#"$argc_cmd"} 
        bash "$cmd_script" $argc_fn "$argc_line"
    else
        . "src/$argc_cmd.sh"
        $argc_fn
    fi
}

# @cmd
# @option -k --kind[=table|help|script]
# @arg cmd![?`_choice_completion`]
# @arg args*
check() {
    if [[ "$argc_kind" == "help" ]]; then
        check-help $@
    elif [[ "$argc_kind" == "table" ]]; then
        check-table $@
    elif [[ "$argc_kind" == "script" ]]; then
        check-script $@
    fi
}

# @cmd
# @flag -P --no-patch
# @arg cmd![?`_choice_completion`]
# @arg args*
check-help() {
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
# @arg cmd![?`_choice_completion`]
# @arg args*
check-table() {
    _source_src $1
    help_text=$(check-help $@ | awk -f scripts/lexer.awk)
    if _test_patch_fn table; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

# @cmd
# @flag -P --no-patch
# @arg cmd![?`_choice_completion`]
# @arg args*
check-script() {
    _source_src $1
    table_text=$(check-table $@ | awk -f scripts/parser.awk)
    if _test_patch_fn script; then
        echo "$table_text" | _patch_script $@
    else
        echo "$table_text"
    fi
}

_choice_completion() {
    ls -1 completions | xargs -I% basename % .sh
}

_choice_src() {
    ls -1 src | xargs -I% basename % .sh
}

_choice_completion_or_src() {
    { _choice_completion; _choice_src; } | sort | uniq
}

_choice_fn_name() {
    cmd_script="src/$argc_cmd.sh" 
    if [[ -f "$cmd_script" ]]; then
        cat "$cmd_script" | grep ^_choice | sed 's/\(_choice\w\+\).*/\1/'
    fi
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
    if [[ "$argc_no_patch" -eq 1 ]] && [[ "$argc__fn" == "check-$target" ]]; then
        return 1
    fi
    if [[ $(type -t _patch_$target) != "function" ]] ; then
        return 1
    fi
    return 0
}

eval "$(argc --argc-eval "$0" "$@")"
