#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --metadata-dump                     **For internal testing only** Dump json metadata for all plugins.
# @option --playbook-dir <BASEDIR>          Since this tool does not use playbooks, use this as a substitute playbook directory.This sets the relative path for many features including roles/ group_vars/ etc.
# @flag --version                           show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -F --list_files                     Show plugin names and their source files without summaries (implies --list).
# @option -M --module-path <MODULE_PATH>    prepend colon-separated path(s) to module library (def ault=~/.ansible/plugins/modules:/usr/share/ansible/plu gins/modules)
# @flag -h --help                           show this help message and exit
# @flag -j --json                           Change output into json format.
# @flag -l --list                           List available plugins.
# @flag -s --snippet                        Show playbook snippet for specified plugin(s)
# @option -t --type[become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars|module|strategy]  Choose which plugin type (defaults to "module").
# @flag -v --verbose                        verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @arg plugin[`_choice_plugin`]             Plugin

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_plugin() {
    ansible-doc --list | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/' | _argc_util_comp_parts '.'
}

command eval "$(argc --argc-eval "$0" "$@")"