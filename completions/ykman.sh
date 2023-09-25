#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_delegate() {
    line="${argc__args[*]}"
    mapfile -t lines < <(COMP_WORDS="${line}" COMP_CWORD="${argc__args[-1]}" _YKMAN_COMPLETE=fish_complete ykman)
    for completion in "${lines[@]}"; do
        IFS=',' read type value <<< "$completion"
        if [[ $type == 'dir' ]]; then
            _argc_util_comp_path dir
        elif [[ $type == 'file' ]]; then
            _argc_util_comp_path
        elif [[ $type == 'plain' ]]; then
            printf "%s\n" "$value"
        fi
    done
}

command eval "$(argc --argc-eval "$0" "$@")"