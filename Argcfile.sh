#!/usr/bin/env bash

export PATH="$(pwd)/bin:$PATH"

set -e

# @cmd Automatically generate the completion script for <CMD>
# @arg cmd![?`_choice_completion`]
# @arg subcmd
generate() {
    if [[ -n $argc_subcmd ]]; then
        ./scripts/generate.sh -E -o completions $argc_cmd $argc_subcmd
    else
        ./scripts/generate.sh -o completions $argc_cmd
    fi
}

# @cmd Regenerate all completion scripts
regenerate() {
    while read -r cmd; do
        if command -v $cmd > /dev/null; then
            echo Generate $cmd
            argc generate $cmd
            if [[ -d completions/$cmd ]]; then
                if [[ -d completions/$cmd ]]; then
                    local child
                    for child in completions/$cmd/*.sh; do
                        child="$(basename "$child" .sh)"
                        echo Generate $cmd $child
                        argc generate $cmd $child
                    done
                fi
            fi
        fi
    done < <(_choice_completion)
}

# @cmd Test generate.sh
test() {
    ./scripts/generate.sh __test
}

# @cmd Debug a choice fn 
#
# For example:
#   argc choice-fn git _choice_checkout 'checkout '
#   argc choice-fn git _choice_checkout 'checkout -- '
# @option -C --dir  Change current workdir to <DIR>
# @arg cmd![`_choice_completion_or_src`]
# @arg fn![`_choice_fn_name`]
# @arg line Command line passed to argc for compgen
choice-fn() {
    argc_dir="${argc_dir:-`pwd`}"
    cmd_script="$(realpath "completions/$argc_cmd.sh")"
    if [[ "$OS" == "Windows_NT" ]]; then
        cmd_script="$(cygpath -w "$cmd_script")"
    fi
    if [[ -n "$argc_line" ]] && [[ -f "$cmd_script" ]]; then
        argc_line=${argc_line#"$argc_cmd"} 
        (cd $argc_dir && bash "$cmd_script" $argc_fn "$argc_line")
    else
        for f in utils/_argc_utils/*.sh; do
            . "$f"
        done
        . "src/$argc_cmd.sh"
        (cd $argc_dir && $argc_fn)
    fi
}

# @cmd A aggregation command, easy to switch print-table/help/script
# @option -k --kind[=table|help|script]
# @arg cmd![?`_choice_completion`]
# @arg subcmds*
print() {
    if [[ "$argc_kind" == "table" ]]; then
        print-table $@
    elif [[ "$argc_kind" == "help" ]]; then
        print-help $@
    elif [[ "$argc_kind" == "script" ]]; then
        print-script $@
    fi
}

# @cmd Print the help text of the command
# @flag -P --no-patch  Do not apply _patch_help fn
# @arg cmd![?`_choice_completion`]
# @arg subcmds*
print-help() {
    _source_src_script $@
    if _test_patch_fn help; then
        _patch_help $@
    else
        $@ --help
    fi
}

# @cmd Print the table generate by lexer for the command
# @flag -P --no-patch  Do not apply _patch_table fn
# @arg cmd![?`_choice_completion`]
# @arg subcmds*
print-table() {
    _source_src_script $@
    help_text=$(print-help $@ | awk -f scripts/lexer.awk)
    if _test_patch_fn table; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

# @cmd Print the generated completion script of the command
# @flag -P --no-patch  Do not apply _patch_script fn
# @arg cmd![?`_choice_completion`]
# @arg args*
print-script() {
    _source_src_script $@
    table_text=$(print-table $@ | awk -f scripts/parser.awk)
    if _test_patch_fn script; then
        echo "$table_text" | _patch_script $@
    else
        echo "$table_text"
    fi
}

_choice_completion() {
    ls -p -1 completions | grep -v '/' | sed 's/.sh$//'
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

_source_src_script() {
    if [[ $source_src -eq 1 ]]; then
        return
    fi
    . utils/_patch_utils.sh
    if [[ -n $2 ]] && [[ -f src/$1/$2.sh ]]; then
        . src/$1/$2.sh
    elif [[ -f src/$1.sh ]]; then
        . src/$1.sh
    elif [[ "$1" == "__test"* ]]; then
        . tests/src/$1.sh
    fi
    source_src=1
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
