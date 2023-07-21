#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a              ignore, for compatibility with other versions
# @flag -Z --context    print only the security context of the process
# @flag -g --group      print only the effective group ID
# @flag -G --groups     print all group IDs
# @flag -n --name       print a name instead of a number, for -ugG
# @flag -r --real       print the real ID instead of the effective ID, with -ugG
# @flag -u --user       print only the effective user ID
# @flag -z --zero       delimit entries with NUL characters, not whitespace; not permitted in default format
# @flag --help          display this help and exit
# @flag --version       output version information and exit
# @arg user*[`_module_os_user`]

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"