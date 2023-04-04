#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg TEXT*
# @option -m --model[`_choice_model`]
# @option -p --prompt
# @flag -H --no-highlight
# @flag -S --no-stream
# @flag --list-roles
# @flag --list-models
# @option -r --role[`_choice_role`]
# @flag --info
# @flag --dry-run
# @flag -h --help
# @flag -V --version

_choice_role() {
    aichat --list-roles
}

_choice_model() {
    aichat --list-models
}

eval "$(argc --argc-eval "$0" "$@")"