#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --current    show the current namespace
# @flag -h --help       show this message
# @flag -V --version    show version
# @arg name[`_choice_name`]

_choice_name() {
    echo -
    _choice_ns
}

_choice_ns() {
    kubens
}

command eval "$(argc --argc-eval "$0" "$@")"