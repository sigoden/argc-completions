#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -s    Finger displays the user's login name, real name, terminal name and write status (as a ``*'' after the terminal name if write permission is denied), idle time, login time, office location and office phone number.
# @flag -l    Produces a multi-line format displaying all of the information described for the -s option as well as the user's home directory, home phone number, login shell, mail status, and the contents of the files “.plan”, “.project”, “.pgpkey” and “.forward” from the user's home directory.
# @flag -p    Prevents the -l option of finger from displaying the contents of the “.plan”, “.project” and “.pgpkey” files.
# @flag -m    Prevent matching of user names.
# @arg user*[`_choice_user_host`]
# @arg user-host* <user@host>

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_user_host() {
    if [[ "$ARGC_CWORD" == *"@"* ]]; then
        echo __argc_prefix="${ARGC_CWORD%%@*}@"
        echo __argc_filter="${ARGC_CWORD#*@}"
        _module_ssh_host
    else
        _module_os_user | _argc_util_transform nospace
    fi
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_module_ssh_host() {
    cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
}

command eval "$(argc --argc-eval "$0" "$@")"