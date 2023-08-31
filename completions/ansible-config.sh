#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version       show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -h --help       show this help message and exit
# @flag -v --verbose    Causes Ansible to print more debug messages.
# @arg list-dump-view-init* <list,dump,view,init>

# {{ ansible-config list
# @cmd Print all config options
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   Causes Ansible to print more debug messages.
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
# @option -t --type[all|base|become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars]  Filter down to a specific plugin type.
# @option -f --format[json|yaml]       Output format for list
# @arg args*[`_choice_plugin`]         Specific plugin to target, requires type of plugin to be set
list() {
    :;
}
# }} ansible-config list

# {{ ansible-config dump
# @cmd Dump configuration
# @flag -h --help                           show this help message and exit
# @flag -v --verbose                        Causes Ansible to print more debug messages.
# @option -c --config <CONFIG_FILE>         path to configuration file, defaults to first file found in precedence.
# @option -t --type[all|base|become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars]  Filter down to a specific plugin type.
# @flag --only-changed                      Only show configurations that have changed from the default
# @flag --changed-only                      Only show configurations that have changed from the default
# @option -f --format[json|yaml|display]    Output format for dump
# @arg args*[`_choice_plugin`]              Specific plugin to target, requires type of plugin to be set
dump() {
    :;
}
# }} ansible-config dump

# {{ ansible-config view
# @cmd View configuration file
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   Causes Ansible to print more debug messages.
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
# @option -t --type[all|base|become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars]  Filter down to a specific plugin type.
# @arg args*[`_choice_plugin`]         Specific plugin to target, requires type of plugin to be set
view() {
    :;
}
# }} ansible-config view

# {{ ansible-config init
# @cmd Create initial configuration
# @flag -h --help                      show this help message and exit
# @flag -v --verbose                   Causes Ansible to print more debug messages.
# @option -c --config <CONFIG_FILE>    path to configuration file, defaults to first file found in precedence.
# @option -t --type[all|base|become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars]  Filter down to a specific plugin type.
# @option -f --format[ini|env|vars]    Output format for init
# @flag --disabled                     Prefixes all entries with a comment character to disable them
# @arg args*[`_choice_plugin`]         Specific plugin to target, requires type of plugin to be set
init() {
    :;
}
# }} ansible-config init

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_plugin() {
    ansible-doc --list | \
    gawk '{
        if (deprecated == 1) {
            next
        } else if (match($0, /^(\S+)\s+(.*)$/, arr)) {
            name = arr[1]
            desc = arr[2]
            if (index(name, "ansible.builtin.") > 0) {
                print substr(name, 17) "\t" desc
            } else {
                print name "\t" desc
            }
        } else if (match($0, /^DEPRECATED:/)) {
            deprecated = 1
        }
    }' | \
    _argc_util_comp_parts '.'
}

command eval "$(argc --argc-eval "$0" "$@")"