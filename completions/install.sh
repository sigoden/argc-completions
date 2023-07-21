#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --backup <CONTROL>                   make a backup of each existing destination file
# @flag -b                                     like --backup but does not accept an argument
# @flag -c                                     (ignored)
# @flag -C --compare                           compare each pair of source and destination files, and in some cases, do not modify the destination at all
# @flag -d --directory                         treat all arguments as directory names; create all components of the specified directories
# @flag -D                                     create all leading components of DEST except the last, or all components of --target-directory, then copy SOURCE to DEST
# @option -g --group[`_module_os_group`]       set group ownership, instead of process' current group
# @option -m --mode                            set permission mode (as in chmod), instead of rwxr-xr-x
# @option -o --owner[`_module_os_user`]        set ownership (super-user only)
# @flag -p --preserve-timestamps               apply access/modification times of SOURCE files to corresponding destination files
# @flag -s --strip                             strip symbol tables
# @option --strip-program <FILE>               program used to strip binaries
# @option -S --suffix                          override the usual backup suffix
# @option -t --target-directory <DIRECTORY>    copy all SOURCE arguments into DIRECTORY
# @flag -T --no-target-directory               treat DEST as a normal file
# @flag -v --verbose                           print the name of each directory as it is created
# @flag --preserve-context                     preserve SELinux security context
# @flag -Z                                     set SELinux security context of destination file and each created directory to default type
# @option --context <CTX>                      like -Z, or if CTX is specified then set the SELinux or SMACK security context to CTX
# @flag --help                                 display this help and exit
# @flag --version                              output version information and exit
# @arg files*

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"