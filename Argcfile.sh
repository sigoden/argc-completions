#!/usr/bin/env bash

set -e

export PATH="$(pwd)/bin:$PATH"
export ARGC_COMPLETIONS_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# @cmd Generate the completion script
# @flag -P --with-plugins           Wheter generate completion scripts for plugins simultaneously
# @flag -v --verbose                Show verbose log
# @option -o --output <dir>         Specify output dir
# @arg cmd![?`_choice_command`]
# @arg subcmd
generate() {
    err=$(_helper_can_generate $argc_cmd)
    if [[ -n "$err" ]]; then
        echo "$err"
        exit 1
    fi
    generate_sh_args=" -o ${argc_output:-"completions"}"
    if [[ "$argc_verbose" ]]; then
        generate_sh_args="$generate_sh_args -v"
    fi
    if [[ -n $argc_subcmd ]]; then
        echo Generate $argc_cmd $argc_subcmd
        ./scripts/generate.sh $generate_sh_args $argc_cmd $argc_subcmd
    else
        echo Generate $argc_cmd
        ./scripts/generate.sh $generate_sh_args $argc_cmd
        if [[ "$argc_with_plugins" -eq 1 ]] && [[ -d completions/$argc_cmd ]]; then
            if [[ -d completions/$argc_cmd ]]; then
                local child
                for child in completions/$argc_cmd/*.sh; do
                    child="$(basename "$child" .sh)"
                    echo Generate $argc_cmd $child
                    ./scripts/generate.sh $generate_sh_args $argc_cmd $child
                done
            fi
        fi

    fi
}

# @cmd Generate completion scripts for multiple commands
# @arg cmds*[?`_choice_completion`]
generate:multi() {
    for cmd in ${argc_cmds[@]}; do
        argc generate $cmd -P
    done
}

# @cmd Generate completion scripts for commands whose files have changed
generate:changed() {
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
        argc generate $cmd -P
        if [[ -n "${symlink_map[$cmd]}" ]]; then
            symlink_cmds=( ${symlink_map[$cmd]} )
            for symlink_cmd in ${symlink_cmds[@]}; do
                argc generate $symlink_cmd -P
            done
        fi
    done
}

# @cmd Generate completion scripts for macOS-only commands
generate:mac() {
    mapfile -t cmds < <(cat MANIFEST.md | grep '(macOS)' | sed -n 's/^- \[\(\S\+\)\].*/\1/p')
    for cmd in ${cmds[@]}; do
        if [[ -z "$(_helper_can_generate $cmd)" ]]; then
            argc generate $cmd -P
        fi
    done
}

# @cmd Generate completion scripts for all commands
# @option -s --start-after-cmd[`_choice_completion`] Start generate after the command
generate:all() {
    local need_gen=0
    if [[ -z "$argc_start_after_cmd" ]]; then
        need_gen=1
    fi
    for f in completions/*; do
        if [ -f $f ]; then
            cmd="$(basename $f .sh)"

            if [[ "$need_gen" -eq 0 ]]; then
                if [[ "$argc_start_after_cmd" == "$cmd" ]]; then
                    need_gen=1
                fi
                continue
            fi
            if [[ " $SKIPS " != *" $cmd "* ]] && [[ -z "$(_helper_can_generate $cmd)" ]]; then
                argc generate $cmd -P
            else
                echo Skip $cmd
            fi
        fi
    done
}

# @cmd Run a choice fn directly
#
# For example:
#   argc choice-fn ./src/git.sh _choice_cmd
#   argc choice-fn ./completions/git.sh _choice_checkout git checkout -- '' 
# @option -C --cwd <dir>            Change current workdir to <DIR>
# @arg script_file!                 File contains choice fns
# @arg fn![?`_choice_fn_name`]      Choice fn to debug
# @arg args~                        Command line args passed for compgen
choice-fn() {
    argc_cwd="${argc_cwd:-`pwd`}"
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
        (cd $argc_cwd && \
            ARGC_COMPGEN=1 ARGC_OS="$os" ARGC_PATH_SEP="$sep" ARGC_CWORD="$filter" ARGC_LAST_ARG="$last_arg" \
            bash "$script_file" ___internal___ $argc_fn "${argc_args[@]}")
    else
        . utils/_argc_utils.sh
        . "$script_file"
        for f in utils/_modules/*; do
            . $f
        done
        (cd $argc_cwd && $argc_fn "${argc_args[@]}")
    fi
}

# @cmd Print help/table/script, used for debugging _patch_help and _patch_table
# @option -k --kind[=table|help|script]     Intermediate file types
# @flag -P --no-patch                       Do not apply `_patch_*` fn
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

# @cmd Integrated Testing
# @option -k --kind[table|help|script]
xtest() {
    if [[ -z "$argc_kind" ]]; then
        ./scripts/generate.sh __test
    else
        argc print __test $@ -k "$argc_kind"
    fi
}

# @cmd Format the source file of a command
# @alias fmt
# @arg names*[?`_choice_src_name`]
format() {
    for name in ${argc_names[@]}; do
        srcfile="src/$name.sh"
        if [[ ! -f "$srcfile" ]]; then
            echo "Not found $srcfile "
        else
            echo "Format $srcfile "
            ./scripts/format.sh "$name"
        fi
    done
}

# @cmd Format source files for commands whose files have changed
format:changed() {
    mapfile -t cmds < <(_helper_list_changed)
    argc format "${cmds[@]}"
}

# @cmd Format all source files
format:all() {
    mapfile -t cmds < <(find src  -name "*.sh" -type f | sort | sed -n 's|src/\([[:alnum:]_-]\+\)\.sh|\1|p')
    argc format "${cmds[@]}"
}

# @cmd Check the completion script
# @arg cmd[`_choice_completion`]
check() {
    cmd="$1"
    echo "check $cmd"
    if [[ -f src/${cmd}.sh && ! -L src/${cmd}.sh ]]; then
        ./scripts/format.sh -c $cmd
    fi
    _helper_validate_script ./completions/$cmd.sh
    _helper_check_manifest $cmd
    if [[ -d completions/$cmd ]]; then
        for subcmd_file in completions/$cmd/*; do
            subcmd="$(basename ${subcmd_file##*/} .sh)"
            echo "check $cmd $subcmd"
            _helper_validate_script $subcmd_file
            _helper_check_manifest $cmd-$subcmd
        done
    fi
}

# @cmd Check all completion scripts
# @option -s --start-after-cmd[`_choice_completion`] Start generate after the command
check:all() {
    local need_check=0
    if [[ -z "$argc_start_after_cmd" ]]; then
        need_check=1
    fi
    mapfile -t cmds < <(_choice_completion)
    for cmd in "${cmds[@]}"; do
        if [[ "$need_check" -eq 0 ]]; then
            if [[ "$argc_start_after_cmd" == "$cmd" ]]; then
                need_check=1
            fi
            continue
        fi
        check "$cmd"
    done
}

# @cmd Update argc-completions
update() {
    remote_url="$(git remote get-url origin)"
    if [[ "$remote_url" == *"sigoden/argc-completions"* ]]; then
        git pull origin main
        echo
    fi
    ./scripts/download-tools.sh 
}

# @cmd Shell setup to use argc-completions
# @arg shell[bash|elvish|fish|nushell|powershell|xonsh|zsh|tcsh] Shell type
shell:setup() {
    ./scripts/setup-shell.sh $1
}

# @cmd Test colors
# @arg arg[`_choice_color`]
color() {
    :;
}

# @cmd Print version
version() {
    echo "argc-completions $(git log --pretty=format:'%h' -n 1)"
    argc --argc-version
    yq --version
    gawk --version | head -n 1
    sed --version | head -n 1
    uname -a
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
        cat "$argc_script_file" | grep '^\(_choice\|_module\)' | sed 's/\(\(_choice\|_module\)\w\+\).*/\1/'
    fi
}

_choice_src_name() {
    ls -1 src | sed -n 's/^\([[:alnum:]_-]\+\)\.sh$/\1/p'
}

_choice_print_target() {
    echo __argc_value=file
    _choice_completion
}

_choice_color() {
    echo -e "type-flag\0\t/color:cyan"
    echo -e "type-option\0\t/color:cyan,bold"
    echo -e "type-command\0\t/color:magenta"
    echo -e "type-dir\0\t/color:blue,bold"
    echo -e "type-file\0\t/color:default"
    echo -e "type-file-exe\0\t/color:green,bold"
    echo -e "type-symlink\0\t/color:cyan,bold"
    echo -e "type-value\0\t/color:green"
    echo -e "color-black\0\t/color:black"
    echo -e "color-black-bold\0\t/color:black,bold"
    echo -e "color-red\0\t/color:red"
    echo -e "color-red-bold\0\t/color:red,bold"
    echo -e "color-green\0\t/color:green"
    echo -e "color-green-bold\0\t/color:green,bold"
    echo -e "color-yellow\0\t/color:yellow"
    echo -e "color-yellow-bold\0\t/color:yellow,bold"
    echo -e "color-blue\0\t/color:blue"
    echo -e "color-blue-bold\0\t/color:blue,bold"
    echo -e "color-magenta\0\t/color:magenta"
    echo -e "color-magenta-bold\0\t/color:magenta,bold"
    echo -e "color-cyan\0\t/color:cyan"
    echo -e "color-cyan-bold\0\t/color:cyan,bold"
    echo -e "color-white\0\t/color:white"
    echo -e "color-white-bold\0\t/color:white,bold"
    echo -e "color-default\0\t/color:default"
    echo -e "color-default-bold\0\t/color:default,bold"
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
                echo error: $cmd manpage not found
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
    gawk '/(src|completions)\// {
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

_helper_check_manifest() {
    if ! grep -q "^- \[$1\]" MANIFEST.md; then
        echo "$1 is not found in MANIFEST.md"
        exit 1
    fi
}

eval "$(argc --argc-eval "$0" "$@")"
