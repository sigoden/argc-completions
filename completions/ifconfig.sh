#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a    display all interfaces which are currently available, even if down
# @flag -s    display a short list (like netstat -i)
# @flag -v    be more verbose for some error conditions

# {{ ifconfig interface
# @cmd The name of the interface.
interface() {
    :;
}
# }} ifconfig interface

# {{ ifconfig up
# @cmd This flag causes the interface to be activated.
up() {
    :;
}
# }} ifconfig up

# {{ ifconfig down
# @cmd This flag causes the driver for this interface to be shut down.
down() {
    :;
}
# }} ifconfig down

# {{ ifconfig arp
# @cmd Enable or disable the use of the ARP protocol on this interface.
arp() {
    :;
}
# }} ifconfig arp

# {{ ifconfig promisc
# @cmd Enable or disable the promiscuous mode of the interface.
promisc() {
    :;
}
# }} ifconfig promisc

# {{ ifconfig allmulti
# @cmd Enable or disable all-multicast mode.
allmulti() {
    :;
}
# }} ifconfig allmulti

# {{ ifconfig mtu
# @cmd This parameter sets the Maximum Transfer Unit (MTU) of an interface.
mtu() {
    :;
}
# }} ifconfig mtu

# {{ ifconfig dstaddr
# @cmd Set the remote IP address for a point-to-point link (such as PPP).
dstaddr() {
    :;
}
# }} ifconfig dstaddr

# {{ ifconfig netmask
# @cmd Set the IP network mask for this interface.
netmask() {
    :;
}
# }} ifconfig netmask

# {{ ifconfig add
# @cmd Add an IPv6 address to an interface.
add() {
    :;
}
# }} ifconfig add

# {{ ifconfig del
# @cmd Remove an IPv6 address from an interface.
del() {
    :;
}
# }} ifconfig del

# {{ ifconfig tunnel
# @cmd Create a new SIT (IPv6-in-IPv4) device, tunnelling to the given destination.
tunnel() {
    :;
}
# }} ifconfig tunnel

# {{ ifconfig irq
# @cmd Set the interrupt line used by this device.
irq() {
    :;
}
# }} ifconfig irq

# {{ ifconfig io_addr
# @cmd Set the start address in I/O space for this device.
io_addr() {
    :;
}
# }} ifconfig io_addr

# {{ ifconfig mem_start
# @cmd Set the start address for shared memory used by this device.
mem_start() {
    :;
}
# }} ifconfig mem_start

# {{ ifconfig media
# @cmd Set the physical port or medium type to be used by the device.
media() {
    :;
}
# }} ifconfig media

# {{ ifconfig broadcast
# @cmd If the address argument is given, set the protocol broadcast address for this interface.
broadcast() {
    :;
}
# }} ifconfig broadcast

# {{ ifconfig pointopoint
# @cmd This keyword enables the point-to-point mode of an interface, meaning that it is a direct link between two machines with nobody else listening on it.
pointopoint() {
    :;
}
# }} ifconfig pointopoint

# {{ ifconfig hw
# @cmd Set the hardware address of this interface, if the device driver supports this operation.
hw() {
    :;
}
# }} ifconfig hw

# {{ ifconfig multicast
# @cmd Set the multicast flag on the interface.
multicast() {
    :;
}
# }} ifconfig multicast

# {{ ifconfig address
# @cmd The IP address to be assigned to this interface.
address() {
    :;
}
# }} ifconfig address

# {{ ifconfig txqueuelen
# @cmd Set the length of the transmit queue of the device.
txqueuelen() {
    :;
}
# }} ifconfig txqueuelen

command eval "$(argc --argc-eval "$0" "$@")"