#!/usr/bin/env bash

export PATH="$(pwd)/bin:$PATH"
export ARGC_COMPLETIONS_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

set -e

# @cmd Automatically generate the completion script for <CMD>
# @flag -E --with-extend-subcmds    Also regenerate extend subcommands
# @flag -v --verbose                Show log
# @arg cmd![?`_choice_command`]
# @arg subcmd
generate() {
    err=$(_helper_can_generate $argc_cmd)
    if [[ -n "$err" ]]; then
        echo "$err"
        exit 1
    fi
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

# @cmd Generate completions for list of commands
# @arg cmds*[?`_choice_completion`]
regenerate:multi() {
    for cmd in ${argc_cmds[@]}; do
        argc generate $cmd -E
    done
}

# @cmd Generate completions for src changed commands
regenerate:changed() {
    mapfile -t symlink_cmds <<<"$(find src -type l | sed -n 's|src/\([^/]\+\).sh|\1|p')"
    declare -A symlink_map
    for symlink_cmd in ${symlink_cmds[@]}; do
        cmd=$(basename $(realpath src/$symlink_cmd.sh) .sh)
        symlink_map[$cmd]="${symlink_map[$cmd]} $symlink_cmd"
    done
    mapfile -t cmds <<<"$(_helper_list_changed)"
    for cmd in ${cmds[@]}; do
        if [[ -n "$(_helper_can_generate $cmd)" ]]; then
            echo Skip $cmd
            continue
        fi
        argc generate $cmd -E
        if [[ -n "${symlink_map[$cmd]}" ]]; then
            symlink_cmds=( ${symlink_map[$cmd]} )
            for symlink_cmd in ${symlink_cmds[@]}; do
                argc generate $symlink_cmd -E
            done
        fi
    done
}

# @cmd Generate completions for all commands
regenerate:all() {
    for f in completions/*; do
        if [ -f $f ]; then
            cmd="$(basename $f .sh)"
            if [[ -z "$(_helper_can_generate $cmd)" ]]; then
                argc generate $cmd -E
            else
                echo Skip $cmd
            fi
        fi
    done
}

# @cmd Debug a choice fn 
#
# For example:
#   argc choice-fn ./src/git.sh _choice_checkout
#   argc choice-fn ./completions/git.sh _choice_checkout git checkout -- '' 
# @option -C --dir  Change current workdir to <DIR>
# @arg script_file!
# @arg fn![?`_choice_fn_name`]
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
            ARGC_COMPGEN=1 ARGC_OS="$os" ARGC_PATH_SEP="$sep" ARGC_CWORD="$filter" ARGC_LAST_ARG="$last_arg" \
            bash "$script_file" ___internal___ $argc_fn "${argc_args[@]}")
    else
        . utils/_argc_utils.sh
        . "$script_file"
        for f in utils/_modules/*; do
            . $f
        done
        (cd $argc_dir && $argc_fn "${argc_args[@]}")
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
        argc print __test $@ -k "$argc_kind"
    fi
}

# @cmd Format the src file
# @alias fmt
# @arg names*[`_choice_src_name`]
format() {
    for name in ${argc_names[@]}; do
        srcfile="src/$name.sh"
        if [[ ! -f "$srcfile" ]]; then
            echo "missing $srcfile "
        else
            echo "format $srcfile "
            ./scripts/format.sh "$name"
        fi
    done
}

# @cmd Format changed files
format:changed() {
    mapfile -t cmds < <(_helper_list_changed)
    argc format "${cmds[@]}"
}

# @cmd Format all src files
format:all() {
    mapfile -t cmds < <(find src/  -name "*.sh" -type f | sort | sed -n 's|src/\([[:alnum:]_-]\+\)\.sh|\1|p')
    argc format "${cmds[@]}"
}

# @cmd Check scripts
check:all() {
    mapfile -t cmds < <(_choice_completion)
    for cmd in "${cmds[@]}"; do
        echo "check $cmd"
        if [[ -f src/${cmd}.sh && ! -L src/${cmd}.sh ]]; then
            ./scripts/format.sh -c $cmd
        else
            _helper_validate_script ./completions/$cmd.sh
        fi
        if [[ -d completions/$cmd ]]; then
            for subcmd in completions/$cmd/*; do
                echo "check $cmd $(basename ${subcmd##*/} .sh)"
                _helper_validate_script $subcmd
            done
        fi
    done
}

# @cmd Print version
version() {
    argc --argc-version
    yq --version
    sed --version | head -n 1
}

_choice_command() {
    if [[ "$ARGC_OS" != "windows" ]]; then
        compgen -c
    else
        _choice_completion
    fi
}

_choice_completion() {
    ls -p -1 completions | sed -n 's/^\([[:alnum:]_-]\+\)\.sh$/\1/p'
}

_choice_fn_name() {
    if [[ -f "$argc_script_file" ]]; then
        cat "$argc_script_file" | grep ^_choice | sed 's/\(_choice\w\+\).*/\1/'
    fi
}

_choice_src_name() {
    ls -1 src | sed -n 's/^\([[:alnum:]_-]\+\)\.sh$/\1/p'
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
    table_text=$(_helper_print_help $@ | gawk -v "CMDS=$*" -f scripts/parse-table.awk)
    if _helper_test_fn table; then
        echo "$table_text" | _patch_table $@
    else
        echo "$table_text"
    fi
}

_helper_print_script() {
    _helper_source_script $@
    script_text=$(_helper_print_table $@ | gawk -v "CMDS=$*" -f scripts/parse-script.awk)
    if _helper_test_fn script; then
        echo "$script_text" | _patch_script $@
    else
        echo "$script_text"
    fi
}

_helper_can_generate() {
    local cmd="$1" src_file="src/$1.sh"
    if ! command -v $cmd > /dev/null; then
        echo error: $cmd not found
        return
    fi
    if [[ -f "$src_file" ]]; then
        if grep -q _patch_help_run_man "$src_file"; then
            if ! man -w $cmd > /dev/null 2>&1; then
                echo man $cmd not found
                return
            fi
        fi
    fi
    return
}

_helper_source_script() {
    if [[ $source_src -eq 1 ]]; then
        return
    fi
    . utils/_patch_utils/index.sh
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
    if [[ $(type -t _patch_$target) != "function" ]]; then
        return 1
    fi
    return 0
}

_helper_list_changed() {
    git status | \
    gawk '/ (src|completions)\// {
        if (match($0, /^\s+(deleted|renamed):\s+/)) {
            next
        }
        split($NF, p, "/");
        print gensub(/^([a-z0-9_+-]+).*$/, "\\1", 1, p[2])
    }' | \
    sort | uniq
}

_helper_validate_script() {
    local output
    output=$(bash "$1" --help 2>&1 || true)
    if [[ -n "$output" ]]; then
        if ! grep -q "USAGE:" <<<"$output"; then
            echo "$(echo "$output" | head -n 1)"
            exit 1
        fi
    fi
}


eval "$(argc --argc-eval "$0" "$@")"
