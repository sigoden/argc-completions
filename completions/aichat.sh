#!/usr/bin/env bash
# Generated with `./generate.sh aichat`. DON'T MODIFY IT

# @option -m --model
# @option -p --prompt
# @flag -H --no-highlight
# @flag -S --no-stream
# @flag --list-roles
# @flag --list-models
# @option -r --role[`_choice_role`]
# @flag --info
# @flag --dry-run
# @arg TEXT*

_choice_role() {
    aichat --list-roles
}


eval "$(argc "$0" "$@")"