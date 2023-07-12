#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -g --group <groupname>    change groupname instead of the user's group (root only)
# @option -R --root <CHROOT_DIR>    directory to chroot into
# @option -a --add <username>       add username to the members of the group
# @option -d --delete <username>    remove username from the members of the group
# @flag -h --help                   display this help message and exit
# @flag -p --purge                  purge all members from the group
# @flag -l --list                   list the members of the group
# @arg action

command eval "$(argc --argc-eval "$0" "$@")"