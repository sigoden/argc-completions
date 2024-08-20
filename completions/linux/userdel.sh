#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f --force                    force removal of files, even if not owned by user
# @flag -h --help                     display this help message and exit
# @flag -r --remove                   remove home directory and mail spool
# @option -R --root <CHROOT_DIR>      directory to chroot into
# @option -P --prefix <PREFIX_DIR>    prefix directory where are located the /etc/* files
# @flag --extrausers                  Use the extra users database
# @flag -Z --selinux-user             remove any SELinux user mapping for the user
# @arg login[`_module_os_user`]

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"