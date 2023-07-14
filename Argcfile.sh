#!/usr/bin/env bash

export PATH="$(pwd)/bin:$PATH"
export ARGC_COMPLETIONS_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

set -e

# @cmd Automatically generate the completion script for <CMD>
# @flag -E --with-extend-subcmds  Also regenerate extend subcommands
# @flag -v --verbose                Show log
# @arg cmd![?`_choice_completion`]
# @arg subcmd
generate() {
    if ! command -v $argc_cmd > /dev/null; then
        echo $argc_cmd not found
        exit 1
    fi
    generate_sh_args=" -o completions"
    if [[ "$argc_verbose" ]]; then
        generate_sh_args="$generate_sh_args -v"
    fi
    if [[ -n $argc_subcmd ]]; then
        ./scripts/generate.sh $generate_sh_args -E $argc_cmd $argc_subcmd
        echo Generated $argc_cmd $argc_subcmd
    else
        ./scripts/generate.sh $generate_sh_args $argc_cmd
        echo Generated $argc_cmd
        if [[ "$argc_with_extend_subcmds" -eq 1 ]] && [[ -d completions/$argc_cmd ]]; then
            if [[ -d completions/$argc_cmd ]]; then
                local child
                for child in completions/$argc_cmd/*.sh; do
                    child="$(basename "$child" .sh)"
                    ./scripts/generate.sh $generate_sh_args -E $argc_cmd $child
                    echo Generated $argc_cmd $child
                done
            fi
        fi

    fi
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
            os="windows"
            sep="\\"
        elif [[ "$(uname)" == "Darwin" ]]; then
            os="macos"
            sep="/"
        else
            os="linux"
            sep="/"
        fi
        if [[ "${#argc_args[@]}" -gt 0 ]]; then
            last_arg="${argc_args[-1]}"
        fi
        filter="$last_arg"
        if [[ "$last_arg" =~ ^'-' ]] && [[ "$last_arg" =~ '=' ]]; then
            filter="${filter#*=}"
        fi
        (cd $argc_dir && \
            ARGC_COMPGEN=1 ARGC_OS="$os" ARGC_PATH_SEP="$sep" ARGC_FILTER="$filter" ARGC_LAST_ARG="$last_arg" \
            bash "$script_file" ___internal___ $argc_fn ${argc_args[@]})
    else
        . utils/_argc_utils.sh
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
        echo "$(_helper_print_help $@)"
    elif [[ "$argc_kind" == "script" ]]; then
        _helper_print_script $@
    fi
}

# @cmd Test generate.sh
# @option -k --kind[table|help|script]
xtest() {
    if [[ -z "$argc_kind" ]]; then
        ./scripts/generate.sh __test
    else
        argc print __test -k "$argc_kind"
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
    echo __argc_value=file
    _choice_completion
}

_helper_print_help() {
    _helper_source_script $@
    if [[ -x "$1" ]]; then
        $1 --help
    elif [[ -f "$1" ]]; then
        cat $1
    else
        if _helper_test_fn help; then
            _patch_help $@
        else
            _patch_help_run_help $@
        fi
    fi
}

_helper_print_table() {
    _helper_source_script $@
    help_text=$(_helper_print_help $@ | gawk -f scripts/parse-table.awk)
    if _helper_test_fn table; then
        echo "$help_text" | _patch_table $@
    else
        echo "$help_text"
    fi
}

_helper_print_script() {
    _helper_source_script $@
    table_text=$(_helper_print_table $@ | gawk -f scripts/parse-script.awk)
    if _helper_test_fn script; then
        echo "$table_text" | _patch_script $@
    else
        echo "$table_text"
    fi
}

_helper_source_script() {
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

_helper_test_fn() {
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
