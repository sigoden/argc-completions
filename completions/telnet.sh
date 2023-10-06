#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -4                                Force IPv4 address resolution.
# @flag -6                                Force IPv6 address resolution.
# @flag -8                                Request 8-bit operation.
# @flag -E                                Disables the escape character functionality; that is, sets the escape character to ``no character''.
# @flag -L                                Specifies an 8-bit data path on output.
# @flag -a                                Attempt automatic login.
# @option -b <address>                    Use bind(2) on the local socket to bind it to a specific local address.
# @flag -d                                Sets the initial value of the debug toggle to TRUE.
# @flag -r                                Emulate rlogin(1).
# @option -S <tos>                        Sets the IP type-of-service (TOS) option for the telnet connection to the value tos.
# @option -e <escapechar>                 Sets the escape character to escapechar.
# @option -l[`_module_os_user`] <user>    Specify user as the user to log in as on the remote system.
# @option -n <tracefile>                  Opens tracefile for recording trace information.
# @arg host

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"