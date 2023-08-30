#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --current                   show the current context name
# @flag -u --unset                     unset the current context
# @option -d*[`_choice_ctx`] <NAME>    delete context <NAME> ('.' for current-context)
# @flag -h --help                      show this message
# @flag -V --version                   show version
# @arg name[`_choice_name`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_ctx() {
    kubectx
}

_choice_name() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        echo -
        _choice_ctx
    else
        echo .
        _choice_ctx
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"