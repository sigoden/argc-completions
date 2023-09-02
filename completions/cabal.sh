#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_delegate() {
    len=${#argc__args[@]}
    if [[ "$len" -le 2 ]]; then
        output="$("${argc__args[0]}" --list-options)"
    elif [[ "${argc__args[-1]}" == -* ]]; then
        output="$("${argc__args[@]:0:$((len-1))}" --list-options)"
    else
        output="$("${argc__args[@]:0:}" --list-options)"
    fi
    if [[ -z "$output" ]]; then
        _argc_util_comp_path
        return
    fi
    echo "$output" | sed 's|\([=/:]\)$|\1\x00|'
}

command eval "$(argc --argc-eval "$0" "$@")"