#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                       Displays help with available flag, subcommand, and positional value parameters.
# @option -p --path <dir>               Path of git repo.
# @option -f --filter <text>            Path to filter on in `git log -- <path>`.
# @flag -v --version                    Print the current version
# @flag -d --debug                      Run in debug mode with logging (see --logs flag below).
# @flag -l --logs                       Tail lazygit logs (intended to be used when `lazygit --debug` is called in a separate terminal tab)
# @flag -c --config                     Print the default config
# @flag -cd                             Print the config directory
# @flag --print-config-dir              Print the config directory
# @option -ucd <dir>                    override default config directory with provided directory
# @option --use-config-dir <dir>        override default config directory with provided directory
# @option -w --work-tree <dir>          equivalent of the --work-tree git argument
# @option -g --git-dir <dir>            equivalent of the --git-dir git argument
# @option -ucf*, <file>                 Comma separated list to custom config file(s)
# @option --use-config-file*, <file>    Comma separated list to custom config file(s)
# @arg git-arg

command eval "$(argc --argc-eval "$0" "$@")"