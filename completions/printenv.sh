#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -0 --null    end each output line with NUL, not newline
# @flag --help       display this help and exit
# @flag --version    output version information and exit
# @arg variable*[`_choice_env_var`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_env_var() {
    env | _argc_util_transform format==
}

command eval "$(argc --argc-eval "$0" "$@")"