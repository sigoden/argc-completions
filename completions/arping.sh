#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f                 quit on first reply
# @flag -q                 be quiet
# @flag -b                 keep on broadcasting, do not unicast
# @flag -D                 duplicate address detection mode
# @flag -U                 unsolicited ARP mode, update your neighbours
# @flag -A                 ARP answer mode, update your neighbours
# @flag -V                 print version and exit
# @option -c <count>       how many packets to send
# @option -w <timeout>     how long to wait for a reply
# @option -i <interval>    set interval between packets (default: 1 second)
# @option -I[`_module_os_network_interface`] <device>  which ethernet device to use
# @option -s <source>      source ip address
# @arg destination!

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"