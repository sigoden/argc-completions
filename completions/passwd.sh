#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                       report password status on all accounts
# @flag -d --delete                    delete the password for the named account
# @flag -e --expire                    force expire the password for the named account
# @flag -h --help                      display this help message and exit
# @flag -k --keep-tokens               change password only if expired
# @option -i --inactive                set password inactive after expiration to INACTIVE
# @flag -l --lock                      lock the password of the named account
# @option -n --mindays <MIN_DAYS>      set minimum number of days before password change to MIN_DAYS
# @flag -q --quiet                     quiet mode
# @option -r --repository              change password in REPOSITORY repository
# @option -R --root <CHROOT_DIR>       directory to chroot into
# @flag -S --status                    report password status on the named account
# @flag -u --unlock                    unlock the password of the named account
# @option -w --warndays <WARN_DAYS>    set expiration warning days to WARN_DAYS
# @option -x --maxdays <MAX_DAYS>      set maximum number of days before password change to MAX_DAYS
# @arg login[`_module_os_user`]

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"