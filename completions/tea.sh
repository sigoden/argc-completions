#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_delegate() {
    if _argc_util_has_path_prefix; then
        echo "__argc_value=path"
        return
    fi
    len="${#argc__args[@]}"
    if [[ "$len" -gt 2 ]] && [[ "$ARGC_CWORD" == "" ]] && [[ "${argc__args[-2]}" =~ ^-[[:alnum:]]$ ]]; then
        ${argc__args[@]:0:$((len - 2))} --generate-bash-completion
    else
        ${argc__args[@]} --generate-bash-completion
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"