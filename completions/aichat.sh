#!/usr/bin/env bash
# Generated with `./generate.sh clap aichat`. DON'T MODIFY IT

# @option -m --model
# @option -p --prompt
# @flag  -H  --no-highlight
# @flag  -S  --no-stream
# @flag  --list-roles
# @flag  --list-models
# @option -r --role[`__choice___role`]
# @arg text*

__choice___role() {
    aichat --list-roles
}


eval "$(argc "$0" "$@")"