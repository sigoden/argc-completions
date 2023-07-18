#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --force                    exit successfully if the group already exists, and cancel -g if the GID is already used
# @option -g --gid                    use GID for the new group
# @flag -h --help                     display this help message and exit
# @option -K --key <KEY=VALUE>        override /etc/login.defs defaults
# @flag -o --non-unique               allow to create groups with duplicate (non-unique) GID
# @option -p --password               use this encrypted password for the new group
# @flag -r --system                   create a system account
# @option -R --root <CHROOT_DIR>      directory to chroot into
# @option -P --prefix <PREFIX_DIR>    directory prefix
# @flag --extrausers                  Use the extra users database
# @arg group

command eval "$(argc --argc-eval "$0" "$@")"