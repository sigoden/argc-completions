_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
  -A family     use the specified address family (eg `inet'). # [`_choice_family`]
  -F            operate on the kernel's FIB (Forwarding Information Base) routing table.
  -C            operate on the kernel's routing cache.
  -v            select verbose operation.
  -n            show numerical addresses instead of trying to determine symbolic host names.
  -e            use netstat(8)-format for displaying the routing table.
  -net iface    the target is a network.
  -host addr    the target is a host.
# add - add a new route.
# del - delete a route.
# flush - remove all routes
EOF
}

_patch_table() {
    if [[ "$*" == "route" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options | \
        _patch_table_edit_options \
            '-A;[`_choice_family`]' \
            '-host(<v>)' \
            '-net;[`_module_os_network_interface`]' \

    elif [[ "$*" == "route add" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_add`]'

    elif [[ "$*" == "route del" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_del`]'

    else
        cat

    fi
}

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
