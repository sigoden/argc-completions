#!/usr/bin/env bash
# Generated with `./generate.sh just`. DON'T MODIFY IT

# @flag --changelog
# @flag --check
# @flag --choose
# @flag --clear-shell-args
# @flag -n --dry-run
# @flag --dump
# @flag -e --edit
# @flag --evaluate
# @flag --fmt
# @flag --highlight
# @flag --init
# @flag -l --list
# @flag --no-dotenv
# @flag --no-highlight
# @flag -q --quiet
# @flag --shell-command
# @flag --summary
# @flag -u --unsorted
# @flag --unstable
# @flag --variables
# @flag -v --verbose
# @option --chooser
# @option --color[auto|always|never]
# @option -c --command
# @option --completions[zsh|bash|fish|powershell|elvish] <SHELL>
# @option --dotenv-filename
# @option --dotenv-path
# @option --dump-format[just|json] <FORMAT>
# @option -f --justfile
# @option --list-heading <TEXT>
# @option --list-prefix <TEXT>
# @option --set <VALUE>
# @option --shell
# @option --shell-arg*
# @option -s --show <RECIPE>
# @option -d --working-directory
# @arg recipe[`_choice_recipe`]

_choice_recipe() {
   just --summary 2> /dev/null | tr " " "\n" || echo ""
}


eval "$(argc "$0" "$@")"