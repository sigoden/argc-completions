#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                 The program displays or deletes all of the current ARP entries.
# @flag -d                 A super-user may delete an entry for the host called hostname with the -d flag.
# @option -i[`_module_os_network_interface`] <interface>  Limit the operation scope to the ARP entries on interface.
# @flag -l                 Show link-layer reachability information.
# @flag -n                 Show network addresses as numbers (normally arp attempts to display addresses symbolically).
# @flag -s                 hostname ether_addr Create an ARP entry for the host called hostname with the Ethernet address ether_addr.
# @flag -S                 hostname ether_addr Is just like -s except any existing ARP entry for this host will be deleted first.
# @option -f <filename>    Cause the file filename to be read and multiple entries to be set in the ARP tables.
# @flag -x                 Show extended link-layer reachability information in addition to that shown by the -l flag.
# @arg hostname

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"