#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -v --verbose              Tell the user what is going on by being verbose.
# @flag -n --numeric              shows numerical addresses instead of trying to determine symbolic host, port or user names.
# @option -H <type>               When setting or reading the ARP cache, this optional parameter tells arp which class of entries it should check for.
# @option -t <type>               When setting or reading the ARP cache, this optional parameter tells arp which class of entries it should check for.
# @option --hw-type <type>        When setting or reading the ARP cache, this optional parameter tells arp which class of entries it should check for.
# @flag -a                        Use alternate BSD style output format (with no fixed columns).
# @flag -e                        Use default Linux style output format (with fixed columns).
# @flag -D --use-device           Instead of a hw_addr, the given argument is the name of an interface.
# @option -i --device[`_module_os_network_interface`] <If>  Select an interface.
# @option -f --file <filename>    Similar to the -s option, only this time the address info is taken from file filename.
# @arg hostname

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"