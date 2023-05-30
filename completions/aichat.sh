#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --model[`_choice_model`]    Choose a model
# @option -p --prompt                    Add a GPT prompt
# @flag -H --no-highlight                Disable syntax highlighting
# @flag -S --no-stream                   No stream output
# @flag --list-roles                     List all roles
# @flag --list-models                    List all models
# @option -r --role[`_choice_role`]      Select a role
# @flag --info                           Print system-wide information
# @flag --dry-run                        Run in dry run mode
# @flag -h --help                        Print help
# @flag -V --version                     Print version
# @arg TEXT*                             Input text

_choice_role() {
    aichat --list-roles
}

_choice_model() {
    aichat --list-models
}

command eval "$(argc --argc-eval "$0" "$@")"