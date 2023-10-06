#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta inherit-flag-options
# @option -A[`_choice_family`] <family>    use the specified address family (eg `inet').
# @flag -F                                 operate on the kernel's FIB (Forwarding Information Base) routing table.
# @flag -C                                 operate on the kernel's routing cache.
# @flag -v                                 select verbose operation.
# @flag -n                                 show numerical addresses instead of trying to determine symbolic host names.
# @flag -e                                 use netstat(8)-format for displaying the routing table.
# @option -net[`_module_os_network_interface`] <iface>  the target is a network.
# @option -host <v>                        the target is a host.

# {{ route add
# @cmd add a new route.
# @arg action*[`_choice_add`]
add() {
    :;
}
# }} route add

# {{ route del
# @cmd delete a route.
# @arg action*[`_choice_del`]
del() {
    :;
}
# }} route del

# {{ route flush
# @cmd remove all routes
flush() {
    :;
}
# }} route flush

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_family() {
    cat <<-'EOF'
inet	DARPA Internet
inet6	IPv6
ax25	AMPR AX.25 
netrom	AMPR NET/ROM
ipx	Novell IPX
ddp	Appletalk DDP 
x25	CCITT X.25 
EOF
}

_choice_add() {
    cat <<-'EOF' | _argc_util_comp_tv
netmask=;;when adding a network route, the netmask to be used.
gw=;;route packets via a gateway.
metric=;;set the metric field in the routing table (used by routing daemons) to M.
mss=;;sets MTU (Maximum Transmission Unit) of the route to M bytes.
window=;;set the TCP window size for connections over this route to W bytes.
irtt=;;set the initial round trip time (irtt) for TCP connections over this route to I milliseconds (1-12000).
reject;;install a blocking route, which will force a route lookup to fail.
mod;;install a dynamic or modified route.
dyn;;install a dynamic or modified route.
reinstate;;install a dynamic or modified route.
dev=;;force the route to be associated with the specified device, as the kernel will otherwise try to determine the device on its own.
EOF
}

_choice_del() {
    cat <<-'EOF' | _argc_util_comp_tv
netmask=;;when adding a network route, the netmask to be used.
metric=;;set the metric field in the routing table (used by routing daemons) to M.
dev=;;force the route to be associated with the specified device, as the kernel will otherwise try to determine the device on its own.
EOF
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"