#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help       display this help and exit
# @flag --version    output version information and exit
# @arg users*[`_module_os_user`]

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"