#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_delegate() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi

    len="${#argc__args[@]}"
    if [[ "$len" -eq 2 ]]; then
        jenv commands
    else
        jenv completions "${argc__args[@]:1}"
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"