#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg words~[`_choice_delegate`]

_choice_delegate() {
    len="${#argc__args[@]}"
    if [[ "$len" -eq 2 ]]; then
        tmuxinator commands
        tmuxinator completions start
    else
        tmuxinator completions "${argc__args[@]:1:$((len - 2))}"
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"