#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --before <DAYS>                      print only lastlog records older than DAYS
# @flag -C --clear                                clear lastlog record of an user (usable only with -u)
# @flag -h --help                                 display this help message and exit
# @option -R --root <CHROOT_DIR>                  directory to chroot into
# @flag -S --set                                  set lastlog record to current time (usable only with -u)
# @option -t --time <DAYS>                        print only lastlog records more recent than DAYS
# @option -u --user[`_module_os_user`] <LOGIN>    print lastlog record of the specified LOGIN

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"