#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --add[`_choice_user`] <USER>       add USER to GROUP
# @option -d --delete[`_choice_user`] <USER>    remove USER from GROUP
# @flag -h --help                               display this help message and exit
# @option -Q --root <CHROOT_DIR>                directory to chroot into
# @flag -r --remove-password                    remove the GROUP's password
# @flag -R --restrict                           restrict access to GROUP to its members
# @option -M --members*,[`_choice_user`] <USER,>  set the list of members of GROUP
# @flag --extrausers                            use the extra users database
# @option -A --administrators*,[`_choice_user`] <ADMIN,>  set the list of administrators for GROUP
# @arg GROUP[`_choice_group`]

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"