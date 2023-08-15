#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version       show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -h --help       show this help message and exit
# @flag -v --verbose    verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @arg list-dump-view* <list,dump,view>

# {{ ansible-config list
# @cmd Print all config options
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
list() {
    :;
}
# }} ansible-config list

# {{ ansible-config dump
# @cmd Dump configuration
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
# @flag --only-changed                 Only show configurations that have changed from the default
dump() {
    :;
}
# }} ansible-config dump

# {{ ansible-config view
# @cmd View configuration file
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
view() {
    :;
}
# }} ansible-config view

command eval "$(argc --argc-eval "$0" "$@")"