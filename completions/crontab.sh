#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -u[`_module_os_user`] <user>    specific user
# @flag -e                                edit user's crontab
# @flag -l                                list user's crontab
# @flag -r                                delete user's crontab
# @flag -i                                prompt before deleting user's crontab
# @arg file

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"