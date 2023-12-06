#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -0              Use this option to ping with source IP address 0.0.0.0.
# @flag -a              Audiable ping.
# @flag -A              Only count addresses matching  requested  address  (This  *WILL* break  most things you do.
# @flag -b              Like -0 but source broadcast source  address  (255.255.255.255).
# @flag -B              Use instead of host if you want to address 255.255.255.255.
# @option -c <count>    Only send count requests.
# @option -C <count>    Only wait for this many replies, regardless of -c and -w.
# @flag -d              Find duplicate replies.
# @flag -D              Display answers as exclamation points and missing packets as dots.
# @flag -e              Like -a but beep when there is no reply.
# @flag -F              Don't try to be smart about the interface name.
# @option -g <group>    setgid() to this group instead of the nobody group.
# @flag -h              Displays a help message and exits.
# @option -i[`_module_os_network_interface`] <interface>  Use the specified interface.
# @option -m <type>     Type of timestamp to use for incoming packets.
# @flag -q              Does not display messages, except error messages.
# @flag -Q              pri 802.1p priority to set.
# @flag -r              Raw output: only the MAC/IP address is displayed for each reply.
# @flag -R              Raw output: Like -r but shows "the other one", can  be  combined with -r.
# @flag -s              MAC Set source MAC address.
# @option -S <IP>       Like  -b and -0 but with set source address.
# @flag -t              MAC Set target MAC address to use when pinging IP address.
# @option -T <IP>       Use -T as target address when pinging MACs that won't respond to a broadcast ping but perhaps to a directed broadcast.
# @flag -p              Turn  on  promiscious  mode  on interface, use this if you don't "own" the MAC address you are using.
# @flag -P              Send ARP replies instead of requests.
# @flag -u              Show index=received/sent instead  of  just  index=received  when pinging MACs.
# @flag -U              Send unsolicited ARP.
# @flag -v              Verbose output.
# @flag -V              num 802.1Q tag to add.
# @flag -w              sec Specify a timeout before ping exits regardless of how many packets have been sent or received.
# @flag -W              sec Time to wait between pings.

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"