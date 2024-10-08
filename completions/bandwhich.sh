#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i --interface[`_module_os_network_interface`]  The network interface to listen on, eg.
# @flag -r --raw                            Machine friendlier output
# @flag -n --no-resolve                     Do not attempt to resolve IPs to their hostnames
# @flag -s --show-dns                       Show DNS queries
# @option -d --dns-server <DNS_SERVER>      A dns server ip to use instead of the system default
# @option --log-to <LOG_TO>                 Enable debug logging to a file
# @flag -v --verbose*                       Increase logging verbosity
# @flag -q --quiet*                         Decrease logging verbosity
# @flag -p --processes                      Show processes table only
# @flag -c --connections                    Show connections table only
# @flag -a --addresses                      Show remote addresses table only
# @option -u --unit-family <UNIT_FAMILY>    Choose a specific family of units
# @flag -t --total-utilization              Show total (cumulative) usages
# @flag -h --help                           Print help (see a summary with '-h')
# @flag -V --version                        Print version

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"