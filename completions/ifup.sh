#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                   this help
# @flag -V --version                copyright and version information
# @flag -a --all                    process all interfaces marked "auto"
# @option --allow <CLASS>           ignore non-"allow-CLASS" interfaces
# @option -i --interfaces <FILE>    use FILE for interface definitions
# @option --state-dir <DIR>         use DIR to store state information
# @option -X --exclude <PATTERN>    exclude interfaces from the list of interfaces to operate on by a PATTERN
# @flag -n --no-act                 print out what would happen, but don't do it (note that this option doesn't disable mappings)
# @flag -v --verbose                print out what would happen before doing it
# @option -o <OPTION=VALUE>         set OPTION to VALUE as though it were in /etc/network/interfaces
# @flag --no-mappings               don't run any mappings
# @flag --no-scripts                don't run any hook scripts
# @flag --no-loopback               don't act specially on the loopback device
# @flag --force                     force de/configuration
# @flag --ignore-errors             ignore errors
# @arg ifaces+[`_module_os_network_interface`]

_module_os_network_interface() {
    ifconfig -s | gawk '{if (NR>1) { print $1 }}'
}

command eval "$(argc --argc-eval "$0" "$@")"