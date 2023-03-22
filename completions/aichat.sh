#!/usr/bin/env bash
# Generated with `./generate.sh --spec=clap aichat`. DON'T MODIFY IT

# @arg text*
# @option -m --model
# @option -p --prompt
# @flag -H --no-highlight
# @flag -S --no-stream
# @flag --list-roles
# @flag --list-models
# @option -r --role[`__choice___role`]
# @flag --info
# @flag --dry-run

__choice___role() {
    aichat --list-roles
}


eval "$(argc "$0" "$@")"