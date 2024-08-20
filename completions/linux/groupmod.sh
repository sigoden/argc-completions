#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -g --gid                     change the group ID to GID
# @flag -h --help                      display this help message and exit
# @option -n --new-name <NEW_GROUP>    change the name to NEW_GROUP
# @flag -o --non-unique                allow to use a duplicate (non-unique) GID
# @option -p --password                change the password to this (encrypted) PASSWORD
# @option -R --root <CHROOT_DIR>       directory to chroot into
# @option -P --prefix <PREFIX_DIR>     prefix directory where are located the /etc/* files
# @arg group[`_module_os_group`]

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"