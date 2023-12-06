#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --become-password-file <BECOME_PASSWORD_FILE>  Become password file
# @option --become-pass-file <BECOME_PASSWORD_FILE>  Become password file
# @option --connection-password-file <CONNECTION_PASSWORD_FILE>  Connection password file
# @option --conn-pass-file <CONNECTION_PASSWORD_FILE>  Connection password file
# @flag --list-hosts                             outputs a list of matching hosts; does not execute anything else
# @option --playbook-dir <BASEDIR>               Since this tool does not use playbooks, use this as a substitute playbook directory.
# @option --task-timeout <TASK_TIMEOUT>          set task timeout limit in seconds, must be positive integer.
# @option --vault-id <VAULT_IDS>                 the vault identity to use.
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag --version                                show program's version number, config file location, configured module search path, module location, executable location and exit
# @option -B --background <SECONDS>              run asynchronously, failing after X seconds (default=N/A)
# @flag -C --check                               don't make any changes; instead, try to predict some of the changes that may occur
# @flag -D --diff                                when changing (small) files and templates, show the differences in those files; works great with --check
# @flag -J                                       ask for vault password
# @flag --ask-vault-password                     ask for vault password
# @flag --ask-vault-pass                         ask for vault password
# @flag -K --ask-become-pass                     ask for privilege escalation password
# @option -M --module-path <MODULE_PATH>         prepend colon-separated path(s) to module library (default={{ ANSIBLE_HOME ~ "/plugins/modules:/usr/share/ansible/plugins/modules" }}).
# @option -P --poll <POLL_INTERVAL>              set the poll interval if using -B (default=15)
# @option -a --args <MODULE_ARGS>                The action's options in space separated k=v format: -a 'opt1=val1 opt2=val2' or a json string: -a '{"opt1": "val1", "opt2": "val2"}'
# @option -e --extra-vars <EXTRA_VARS>           set additional variables as key=value or YAML/JSON, if filename prepend with @.
# @option -f --forks                             specify number of parallel processes to use (default=5)
# @flag -h --help                                show this help message and exit
# @option -i --inventory*, <INVENTORY_FILE>      specify inventory host path or comma separated host list.
# @flag -k --ask-pass                            ask for connection password
# @option -l --limit <SUBSET>                    further limit selected hosts to an additional pattern
# @option -m --module-name[`_choice_plugin`] <MODULE_NAME>  Name of the action to execute (default=command)
# @flag -o --one-line                            condense output
# @option -t --tree                              log output to this directory
# @flag -v --verbose                             Causes Ansible to print more debug messages.
# @option --become-method[`_choice_become_method`] <BECOME_METHOD>  privilege escalation method to use (default=sudo), use `ansible-doc -t become -l` to list valid choices.
# @option --become-user <BECOME_USER>            run operations as this user (default=root)
# @flag -b --become                              run operations with become (does not imply password prompting)
# @option --private-key <PRIVATE_KEY_FILE>       use this file to authenticate the connection
# @option --key-file <PRIVATE_KEY_FILE>          use this file to authenticate the connection
# @option --scp-extra-args <SCP_EXTRA_ARGS>      specify extra arguments to pass to scp only (e.g. -l)
# @option --sftp-extra-args <SFTP_EXTRA_ARGS>    specify extra arguments to pass to sftp only (e.g. -f, -l)
# @option --ssh-common-args <SSH_COMMON_ARGS>    specify common arguments to pass to sftp/scp/ssh (e.g. ProxyCommand)
# @option --ssh-extra-args <SSH_EXTRA_ARGS>      specify extra arguments to pass to ssh only (e.g. -R)
# @option -T --timeout                           override the connection timeout in seconds (default depends on connection)
# @option -c --connection                        connection type to use (default=ssh)
# @option -u --user <REMOTE_USER>                connect as this user (default=None)
# @arg pattern[`_choice_host`]                   host pattern

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

_choice_become_method() {
    ansible-doc -t become -l | sed 's/\s\+/\t/'
}

_choice_host() {
    ansible-inventory $(_argc_util_param_select_options --inventory --playbook-dir) --list | \
    yq  '.[].hosts // [] | .[], keys | filter(. != "_meta") | .[]'
}

command eval "$(argc --argc-eval "$0" "$@")"