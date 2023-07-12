#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                        display this help message and exit
# @option -R --root <CHROOT_DIR>         directory to chroot into
# @option -s --shell[`_choice_shell`]    new login shell for the user account
# @arg LOGIN[`_choice_user`]

_choice_shell() {
    cat /etc/shells | sed -n '/^\// p'   
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"