#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --addresses                    Show remote addresses table only
# @flag -c --connections                  Show connections table only
# @flag -h --help                         Prints help information
# @flag -n --no-resolve                   Do not attempt to resolve IPs to their hostnames
# @flag -p --processes                    Show processes table only
# @flag -r --raw                          Machine friendlier output
# @flag -s --show-dns                     Show DNS queries
# @flag -t --total-utilization            Show total (cumulative) usages
# @flag -V --version                      Prints version information
# @option -d --dns-server <dns-server>    A dns server ip to use instead of the system default
# @option -i --interface[`_module_os_network_interface`] <interface>  The network interface to listen on, eg.

_module_os_network_interface() {
    ifconfig -s | gawk '{if (NR>1) { print $1 }}'
}

command eval "$(argc --argc-eval "$0" "$@")"