#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help           Show help options
# @flag -e --enumerate      Enumerate objects paths for devices
# @flag -d --dump           Dump all parameters for all objects
# @flag -w --wakeups        Get the wakeup data
# @flag -m --monitor        Monitor activity from the power daemon
# @flag --monitor-detail    Monitor with detail
# @option -i --show-info[`_choice_power_device`]  Show information about object path
# @flag -v --version        Print version of client and daemon

_choice_power_device() {
    upower --enumerate 
}

command eval "$(argc --argc-eval "$0" "$@")"