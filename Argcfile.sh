#!/usr/bin/env bash

export PATH="$(pwd)/bin:$PATH"

set -e

# @cmd Automatically generate the completion script for <CMD>
# @flag -E --with-extend-subcmds  Also regenerate extend subcommands
# @flag -v --verbose                Show log
# @arg cmd![?`_choice_completion`]
# @arg subcmd
generate() {
    generate_sh_args=" -o completions"
    if [[ "$argc_verbose" ]]; then
        generate_sh_args="$generate_sh_args -v"
    fi
    if [[ -n $argc_subcmd ]]; then
        echo Generate $argc_cmd $argc_subcmd
        ./scripts/generate.sh $generate_sh_args -E $argc_cmd $argc_subcmd
    else
        echo Generate $argc_cmd
        ./scripts/generate.sh $generate_sh_args $argc_cmd
        if [[ "$argc_with_extend_subcmds" -eq 1 ]] && [[ -d completions/$argc_cmd ]]; then
            if [[ -d completions/$argc_cmd ]]; then
                local child
                for child in completions/$argc_cmd/*.sh; do
                    child="$(basename "$child" .sh)"
                    echo Generate $argc_cmd $child
                    ./scripts/generate.sh $generate_sh_args -E $argc_cmd $child
                done
            fi
        fi

    fi
}

# @cmd Regenerate all completion scripts
regenerate() {
    local IFS=$'\n'
    local cmds=( "$(_choice_completion)" )
    for cmd in ${cmds[@]}; do
        if command -v $cmd > /dev/null; then
            argc generate $cmd -E
        fi
    done
}

# @cmd Test generate.sh
test() {
    ./scripts/generate.sh __test
}

# @cmd Debug a choice fn 
#
# For example:
#   argc choice-fn ./src/git.sh _choice_checkout
#   argc choice-fn ./completions/git.sh _choice_checkout git checkout -- '' 
# @option -C --dir  Change current workdir to <DIR>
# @arg script_file!
# @arg fn![`_choice_fn_name`]
# @arg args~ Command line args passed for compgen
choice-fn() {
    argc_dir="${argc_dir:-`pwd`}"
    script_file="$(realpath "$argc_script_file")"
    if grep -q 'argc --argc-eval' "$script_file"; then
        if [[ "$OS" == "Windows_NT" ]]; then
            script_file="$(cygpath -w "$script_file")"
        fi
        if [[ "${#argc_args[@]}" -gt 0 ]]; then
            last_arg="${argc_args[-1]}"
        fi
        matcher="$last_arg"
        if [[ "$last_arg" =~ ^'-' ]] && [[ "$last_arg" =~ '=' ]]; then
            matcher="${matcher#*=}"
        fi
        (cd $argc_dir && \
            ARGC_MATCHER="$matcher" ARGC_LAST_ARG="$last_arg" \
            bash "$script_file" $argc_fn ${argc_args[@]})
    else
        for f in utils/_argc_utils/*.sh; do
            . "$f"
        done
        . "$script_file"
        (cd $argc_dir && $argc_fn)
    fi
}

# @cmd Print generated help/table/script, used to debug patch fn
# @option -k --kind[=table|help|script]
# @flag -P --no-patch  Do not apply _patch_* fn
# @arg cmd_or_help_file![?`_choice_print_target`]
# @arg subcmds*
print() {
    if [[ "$argc_kind" == "table" ]]; then
        _helper_print_table $@
    elif [[ "$argc_kind" == "help" ]]; then
        _helper_print_help $@
    elif [[ "$argc_kind" == "script" ]]; then
        _helper_print_script $@
    fi
}

_choice_completion() {
    ls -p -1 completions | grep -v '/' | sed 's/.sh$//'
}

_choice_fn_name() {
    if [[ -f "$argc_script_file" ]]; then
        cat "$argc_script_file" | grep ^_choice | sed 's/\(_choice\w\+\).*/\1/'
    fi
}

_choice_print_target() {
    echo __argc_value:file
    _choice_completion
}

_helper_print_help() {
    _source_src_script $@
    if [[ -x "$1" ]]; then
        $1 --help
    elif [[ -f "$1" ]]; then
        cat $1
    else
        if _test_patch_fn help; then
            _patch_help $@
        else
            help_text="$($@ --help 2>&1)"
            if [[ $? -ne 0 ]]; then
                if [[ $# -eq 1 ]]; then
                    help_text="$($1 help 2>&1)"
                else
                    help_text="$(${@:1:$#-1} help ${!#} 2>&1)"
                fi
            fi
            echo "$help_text"
        fi
    fi
}

_helper_print_table() {
    _source_src_script $@
    help_text=$(_helper_print_help $@ | awk -f scripts/parse-table.awk)
    if _test_patch_fn table; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

_helper_print_script() {
    _source_src_script $@
    table_text=$(_helper_print_table $@ | awk -f scripts/parse-script.awk)
    if _test_patch_fn script; then
        echo "$table_text" | _patch_script $@
    else
        echo "$table_text"
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
    if [[ "$argc_no_patch" -eq 1 ]] && [[ "$argc_kind" == "$target" ]]; then
        return 1
    fi
    if [[ $(type -t _patch_$target) != "function" ]] ; then
        return 1
    fi
    return 0
}

eval "$(argc --argc-eval "$0" "$@")"
