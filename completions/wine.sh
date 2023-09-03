#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help       Display this help and exit
# @flag --version    Output version information and exit
# @arg exe[`_choice_exe`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_exe() {
    if [[ -z "$ARGC_CWORD" ]]; then
        printf "c:/\0\n"
        _argc_util_comp_path
    elif [[ "$ARGC_CWORD" == "c:/"* ]] || [[ "$ARGC_CWORD" == "C:/"* ]]; then
        prefix="${ARGC_CWORD%/*}"
        filter="${ARGC_CWORD##*/}"
        cd="$HOME/.wine/drive_c/${prefix:3}"
        _argc_util_comp_path "cd=$cd" "prefix=$prefix/" "filter=$filter"
    else
        _argc_util_comp_path
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"