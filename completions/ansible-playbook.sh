#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --ask-vault-password                     ask for vault password
# @flag --ask-vault-pass                         ask for vault password
# @flag --flush-cache                            clear the fact cache for every host in inventory
# @flag --force-handlers                         run handlers even if a task fails
# @flag --list-hosts                             outputs a list of matching hosts; does not execute anything else
# @flag --list-tags                              list all available tags
# @flag --list-tasks                             list all tasks that would be executed
# @option --skip-tags*,[`_choice_tag`] <SKIP_TAGS>  only run plays and tasks whose tags do not match these values
# @option --start-at-task <START_AT_TASK>        start the playbook at the task matching this name
# @flag --step                                   one-step-at-a-time: confirm each task before running
# @flag --syntax-check                           perform a syntax check on the playbook, but do not execute it
# @option --vault-id <VAULT_IDS>                 the vault identity to use
# @option --vault-password-file <VAULT_PASSWORD_FILES>  vault password file
# @option --vault-pass-file <VAULT_PASSWORD_FILES>  vault password file
# @flag --version                                show program's version number, config file location, configured module search path, module location, executable location and exit
# @flag -C --check                               don't make any changes; instead, try to predict some of the changes that may occur
# @flag -D --diff                                when changing (small) files and templates, show the differences in those files; works great with --check
# @option -M --module-path <MODULE_PATH>         prepend colon-separated path(s) to module library (def ault=~/.ansible/plugins/modules:/usr/share/ansible/plu gins/modules)
# @option -e --extra-vars <EXTRA_VARS>           set additional variables as key=value or YAML/JSON, if filename prepend with @
# @option -f --forks                             specify number of parallel processes to use (default=5)
# @flag -h --help                                show this help message and exit
# @option -i --inventory*, <INVENTORY_FILE>      specify inventory host path or comma separated host list.
# @option -l --limit <SUBSET>                    further limit selected hosts to an additional pattern
# @option -t --tags*,[`_choice_tag`]             only run plays and tasks tagged with these values
# @flag -v --verbose                             verbose mode (-vvv for more, -vvvv to enable connection debugging)
# @option --private-key <PRIVATE_KEY_FILE>       use this file to authenticate the connection
# @option --key-file <PRIVATE_KEY_FILE>          use this file to authenticate the connection
# @option --scp-extra-args <SCP_EXTRA_ARGS>      specify extra arguments to pass to scp only (e.g. -l)
# @option --sftp-extra-args <SFTP_EXTRA_ARGS>    specify extra arguments to pass to sftp only (e.g. -f, -l)
# @option --ssh-common-args <SSH_COMMON_ARGS>    specify common arguments to pass to sftp/scp/ssh (e.g. ProxyCommand)
# @option --ssh-extra-args <SSH_EXTRA_ARGS>      specify extra arguments to pass to ssh only (e.g. -R)
# @option -T --timeout                           override the connection timeout in seconds (default=10)
# @option -c --connection                        connection type to use (default=smart)
# @flag -k --ask-pass                            ask for connection password
# @option -u --user <REMOTE_USER>                connect as this user (default=None)
# @option --become-method[`_choice_become_method`] <BECOME_METHOD>  privilege escalation method to use (default=sudo), use `ansible-doc -t become -l` to list valid choices.
# @option --become-user <BECOME_USER>            run operations as this user (default=root)
# @flag -K --ask-become-pass                     ask for privilege escalation password
# @flag -b --become                              run operations with become (does not imply password prompting)
# @arg playbook-file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_tag() {
    printf "%s\tBuiltin tags\n" all tagged untagged
    ansible-playbook $(_argc_util_param_select_options --inventory) "${argc__positionals[@]}" --list-tags 2>/dev/null  | \
    sed -n -e 's/^\s*TASK TAGS: \[\(.*\)\].*/\1/' -e 's/, /\n/p'
}

_choice_become_method() {
    ansible-doc -t become -l | sed 's/\s\+/\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"