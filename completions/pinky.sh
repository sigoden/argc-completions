#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -l           produce long format output for the specified USERs
# @flag -b           omit the user's home directory and shell in long format
# @flag -h           omit the user's project file in long format
# @flag -p           omit the user's plan file in long format
# @flag -s           do short format output, this is the default
# @flag -f           omit the line of column headings in short format
# @flag -w           omit the user's full name in short format
# @flag -i           omit the user's full name and remote host in short format
# @flag -q           omit the user's full name, remote host and idle time in short format
# @flag --help       display this help and exit
# @flag --version    output version information and exit
# @arg user*[`_module_os_user`]

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"