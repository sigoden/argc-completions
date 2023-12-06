#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                 Display all available interfaces.
# @option -A --address <addr>    Set the interface address to addr.
# @option -B --broadcast <addr>
# @option -b --brdaddr <addr>    Set the broadcast address to addr.
# @option -d --dstaddr <addr>
# @option -p --peer <addr>       Set the destination (peer) address to addr.
# @flag --up                     Activate the interface (default if address is given).
# @flag --down                   Shut the interface down.
# @flag -F --flags               flag,[flag ...] Set the interface flags.
# @option -i --interface[`_module_os_network_interface`] <name>  Configure the network interface name.
# @flag -l --list                List the available or selected interfaces.
# @option -m --netmask <mask>    Set the netmask to mask.
# @option --metric <n>           Set the interface metric to n.
# @option -M --mtu <n>           Set the interface MTU to n.
# @option --format <format>      Select the output format; set to help for information.
# @flag -s --short               Short output format.
# @flag -v --verbose             Output information when configuring the interface.
# @flag -? --help                Give this help list.
# @flag --usage                  Give a short usage message.
# @flag -V --version             Print program version.
# @option -T --txqlen <n>        Set the transmit queue length to n.
# @arg args~[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    if [[ "${#argc__positionals[@]}" -eq 1 ]]; then
        _module_os_network_interface
    else
        argc__positionals=( "${argc__positionals[@]:1}" )
        cat <<-'EOF' | _argc_util_comp_tv
add=;;Add an IPv6 address to an interface.
del=;;Remove an IPv6 address from an interface.
broadcast=;;If the address argument is given, set the protocol broadcast address for this interface.
-broadcast;;Clear broadcast
pointopoint=;;This keyword enables the point-to-point mode of an interface, meaning that it is a direct link between two machines with nobody else listening on it.
-pointopoint=;;Clear pointopoint
netmask=;;Set the IP network mask for this interface.
dstaddr=;;Set the remote IP address for a point-to-point link (such as PPP).
tunnel=;;Create a new SIT (IPv6-in-IPv4) device, tunnelling to the given destination.
outfill=;;Set outfill
keepalive=;;Set keepalive
hw=;;Set the hardware address of this interface, if the device driver supports this operation.
mtu=;;This parameter sets the Maximum Transfer Unit (MTU) of an interface.
trailers;;Enable the use of trailers in network communication
-trailers;;Disable the use of trailers in network communication
arp;;Enable the use of the ARP protocol on this interface.
-arp;;Disable the use of the ARP protocol on this interface.
allmulti;;Enable all-multicast mode.
-allmulti;;Disable all-multicast mode.
multicast;;Set the multicast flag on the interface.
promisc;;Enable the promiscuous mode of the interface.
-promisc;;Disable the promiscuous mode of the interface.
mem_start=;;Set the start address for shared memory used by this device.
io_addr=;;Set the start address in I/O space for this device.
irq=;;Set the interrupt line used by this device.
media=;;Set the physical port or medium type to be used by the device.
txqueuelen=;;Set the length of the transmit queue of the device.
dynamic;;Enable the use of dynamic IP addressing
-dynamic;;Disable the use of dynamic IP addressing
up;;This flag causes the interface to be activated.
down;;This flag causes the driver for this interface to be shut down.
EOF
    fi
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"