#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -g --group[`_choice_group`] <groupname>  change groupname instead of the user's group (root only)
# @option -R --root <CHROOT_DIR>                 directory to chroot into
# @option -a --add[`_choice_user`] <username>    add username to the members of the group
# @option -d --delete[`_choice_user`] <username>  remove username from the members of the group
# @flag -h --help                                display this help message and exit
# @flag -p --purge                               purge all members from the group
# @flag -l --list                                list the members of the group
# @arg action

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"