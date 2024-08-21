#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --add[`_module_os_user`] <USER>       add USER to GROUP
# @option -d --delete[`_module_os_user`] <USER>    remove USER from GROUP
# @flag -h --help                                  display this help message and exit
# @option -Q --root <CHROOT_DIR>                   directory to chroot into
# @flag -r --remove-password                       remove the GROUP's password
# @flag -R --restrict                              restrict access to GROUP to its members
# @option -M --members*,[`_module_os_user`] <USER,>  set the list of members of GROUP
# @flag --extrausers                               use the extra users database
# @option -A --administrators*,[`_module_os_user`] <ADMIN,>  set the list of administrators for GROUP
# @arg group[`_module_os_group`]

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"