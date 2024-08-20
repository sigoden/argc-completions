#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -g --group[`_module_os_group`] <groupname>  change groupname instead of the user's group (root only)
# @option -R --root <CHROOT_DIR>    directory to chroot into
# @option -a --add[`_module_os_user`] <username>  add username to the members of the group
# @option -d --delete[`_module_os_user`] <username>  remove username from the members of the group
# @flag -h --help                   display this help message and exit
# @flag -p --purge                  purge all members from the group
# @flag -l --list                   list the members of the group
# @arg action

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"