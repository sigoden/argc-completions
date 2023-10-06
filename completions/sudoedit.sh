#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -A --askpass                             use a helper program for password prompting
# @flag -B --bell                                ring bell when prompting
# @option -C --close-from <num>                  close all file descriptors >= num
# @option -D --chdir <directory>                 change the working directory before running command
# @option -g --group[`_module_os_group`] <group>  run command as the specified group name or ID
# @flag --help                                   display help message and exit
# @option -h --host <host>                       run command on host (if supported by plugin)
# @flag -k --reset-timestamp                     invalidate timestamp file
# @flag -n --non-interactive                     non-interactive mode, no prompts are used
# @option -p --prompt <prompt>                   use the specified password prompt
# @option -R --chroot <directory>                change the root directory before running command
# @option -r --role <role>                       create SELinux security context with specified role
# @flag -S --stdin                               read password from standard input
# @option -t --type <type>                       create SELinux security context with specified type
# @option -T --command-timeout <timeout>         terminate command after the specified time limit
# @option -u --user[`_module_os_user`] <user>    run command (or edit file) as specified user name or ID
# @flag -V --version                             display version information and exit
# @arg files*

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"