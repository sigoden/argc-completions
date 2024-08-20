#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                             display version information
# @flag -v --verbose                             more verbose output
# @flag -R --reset                               reset MII to poweron state
# @flag -r --restart                             restart autonegotiation
# @flag -w --watch                               monitor for link status changes
# @flag -l --log                                 with -w, write events to syslog
# @option -A --advertise*,[`_choice_media`] <media,>  advertise only specified media
# @option -F --force[`_choice_media`] <media>    force specified media technology
# @option -p --phy <addr>                        set PHY (MII address) to report
# @arg interface+[`_module_os_network_interface`]

_choice_media() {
    printf "%s\n" 100baseT4 100baseTx-FD 100baseTx-HD 10baseT-FD and 10baseT-HD
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"