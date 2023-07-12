#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --confdir <DIR>                   Set the configuration directory.
# @flag -C --clientmax                         Set the limit on non-root socket connections.
# @flag -d --debug                             Increase debugging level.
# @option -e --eventfile <FILE>                Use the specified file for events.
# @flag -f --foreground                        Run in the foreground.
# @flag -l --logevents                         Log all event activity.
# @option -g --socketgroup[`_choice_group`]    Set the group on the socket file.
# @flag -m --socketmode                        Set the permissions on the socket file.
# @option -s --socketfile <FILE>               Use the specified socket file.
# @flag -S --nosocket                          Do not listen on a UNIX socket (overrides -s).
# @option -p --pidfile <FILE>                  Use the specified PID file.
# @option -L --lockfile <FILE>                 Use the specified lockfile to stop processing.
# @flag -n --netlink                           Force netlink/input layer mode.
# @option -r --dropaction <VALUE>              Define the pseudo-action to drop an event.
# @flag -t --tpmutefix                         Fixup for ThinkPad mute-repeat behaviour.
# @flag -v --version                           Print version information.
# @flag -h --help                              Print this message.

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"