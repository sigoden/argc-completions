#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C <config-file>                Parse and check the configuration file config, then exit.
# @flag -L                                Clear any persisted authentications from previous invocations, then immediately exit.
# @flag -n                                Non interactive mode, fail if the matching rule doesn't have the nopass option.
# @flag -s                                Execute the shell from SHELL or /etc/passwd.
# @option -u[`_module_os_user`] <user>    Execute the command as user.

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"