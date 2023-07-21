#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                     display this help message and exit
# @option -R --root <CHROOT_DIR>      directory to chroot into
# @option -P --prefix <PREFIX_DIR>    prefix directory where are located the /etc/* files
# @flag -f --force                    delete group even if it is the primary group of a user
# @flag --extrausers                  Use the extra users database
# @arg group[`_module_os_group`]

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"