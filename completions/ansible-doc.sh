#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --metadata-dump                            **For internal use only** Dump json metadata for all entries, ignores other options.
# @flag --no-fail-on-errors                        **For internal use only** Only used for --metadata-dump.
# @option --playbook-dir <BASEDIR>                 Since this tool does not use playbooks, use this as a substitute playbook directory.
# @flag --version                                  show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -F --list_files                            Show plugin names and their source files without summaries (implies --list).
# @option -M --module-path <MODULE_PATH>           prepend colon-separated path(s) to module library (default={{ ANSIBLE_HOME ~ "/plugins/modules:/usr/share/ansible/plugins/modules" }}).
# @option -e --entry-point <ENTRY_POINT>           Select the entry point for role(s).
# @flag -h --help                                  show this help message and exit
# @flag -j --json                                  Change output into json format.
# @flag -l --list                                  List available plugins.
# @option -r --roles-path <ROLES_PATH>             The path to the directory containing your roles.
# @option -s --snippet[inventory|lookup|module]    Show playbook snippet for these plugin types: inventory, lookup, module
# @option -t --type[become|cache|callback|cliconf|connection|httpapi|inventory|lookup|netconf|shell|vars|module|strategy|test|filter|role|keyword]  Choose which plugin type (defaults to "module").
# @flag -v --verbose                               Causes Ansible to print more debug messages.
# @arg plugin[`_choice_plugin`]                    Plugin

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