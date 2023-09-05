_patch_help() { 
    if [[ "$*" == "ip" ]]; then
        _patch_help_run_man $@ | \
        sed -n '/^OPTIONS/,/^[A-Z]/ {//!p}'
    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# address/a/addr - protocol (IP or IPv6) address on a device.

## add/change/replace - add new protocol address
## delete/del - delete protocol address
## show - look at protocol addresses
## save/flush - flush protocol addresses

# addrlabel - label configuration for protocol address selection.

## add - add an address label
## del - delete an address label
## list - list address labels
## flush - flush address labels

# ioam - manage IOAM namespaces and IOAM schemas.

## namespace
### show
### add ID DATA32 DATA64
### del ID

## schema
### show
### add ID DATA
### del ID

# l2tp - tunnel ethernet over IP (L2TPv3).

## add
### tunnel - add a new tunnel
### session - add a new session to a tunnel

## delete 
### tunnel - destroy a tunnel
### session - destroy a session

## show
### tunnel - show information about tunnels
### session - show information about sessions

# link/l - network device.

## add - add virtual link
## delete - delete virtual link
## set - change device attributes
## show - display device attributes
## xstats - display extended statistics
## afstats - display address-family specific statistics

# maddress - multicast address.
## show - list multicast addresses
## add - add a multicast address
## delete - delete a multicast address

# monitor - watch for netlink messages.
  -t, -timestamp      Prints timestamp before the event message on the separated line in format: Timestamp: <Day> <Month> <DD> <hh:mm:ss> <YYYY> <usecs> usec <EVENT>
  -ts, -tshort        Prints short timestamp before the event message on the same line in format: [<YYYY>-<MM>-<DD>T<hh:mm:ss>.<ms>] <EVENT>

# mptcp - manage MPTCP path manager.

## endpoint
### add - add new MPTCP endpoint
### delete - delete existing MPTCP endpoint
### show - get existing MPTCP endpoint
### flush - flush all existing MPTCP endpoints

## limits
### show - get current MPTCP subflow creation limits
### set - change the MPTCP subflow creation limits
### monitor - displays creation and deletion of MPTCP connections as well as addition or removal of remote addresses and subflows.

# mroute - multicast routing cache entry.

## show - list mroute cache entries

# mrule - rule in multicast routing policy database.

# neighbour/n/neigh - manage ARP or NDISC cache entries.
## add - add a new neighbour entry
## change - change an existing entry
## replace - add a new entry or change an existing one
## delete - delete a neighbour entry
## show - list neighbour entries
## flush - flush neighbour entries
## get - lookup a neighbour entry to a destination given a device

# netns - manage network namespaces.

## list - show all of the named network namespaces
## add NAME - create a new named network namespace
## attach NAME PID - create a new named network namespace
## delete [ NAME ] - delete the name of a network namespace(s)
## set NAME NETNSID - assign an id to a peer network namespace
## identify [PID] - Report network namespaces names for process
## pids NAME - Report processes in the named network namespace
## exec [ NAME ] cmd ... - Run cmd in the named network namespace
## monitor - Report as network namespace names are added and deleted
## list-id [target-nsid POSITIVE-INT] [nsid POSITIVE-INT] - list network namespace ids (nsid)

# ntable - manage the neighbor cache's operation.

## show - list the ip neighbour tables
## change - modify table parameter

# route/ro - routing table entry.

## add - add new route
## change - change route
## replace - change or add new one
## delete/del - delete route
## show - list routes
## flush - flush routing tables
## get - get a single route
## save - save routing table information to stdout
## restore - restore routing table information from stdin

# rule - rule in routing policy database.

## add - insert a new rule
## delete - delete a rule
## flush - also dumps all the deleted rules.
## show - list rules
## save - save rules table information to stdout
## restore - restore rules table information from stdin

# tcp_metrics/tcpmetrics - manage TCP Metrics

## show - show cached entries
## delete - delete single entry
## flush - flush entries

# token - manage tokenized interface identifiers.

## set - set an interface token
## del - delete an interface token
## get - get the interface token from the kernel
## list - list all interface tokens

# tunnel - tunnel over IP.

## add - add a new tunnel
## change - change an existing tunnel
## delete - destroy a tunnel
## prl - potential router list (ISATAP only)
## show - list tunnels This command has no arguments.

# tuntap - manage TUN, TAP devices.

# vrf - manage virtual routing and forwarding devices.

## show [ NAME ] - Show all configured VRF
## exec [ NAME ] cmd ... - Run cmd against the named VRF
## identify [PID] - Report VRF association for process
## pids NAME - Report processes associated with the named VRF

# xfrm - manage IPSec policies.

## state
### add - add new state into xfrm
### update - update existing state in xfrm
### allocspi - allocate an SPI value
### delete - delete existing state in xfrm
### get - get existing state in xfrm
### deleteall - delete all existing state in xfrm
### list - print out the list of existing state in xfrm
### flush - flush all state in xfrm
### count - count all existing state in xfrm

## policy
### add - add a new policy
### update - update an existing policy
### delete - delete an existing policy
### get - get an existing policy
### deleteall - delete all existing xfrm policies
### list - print out the list of xfrm policies
### flush - flush policies
EOF
}

_patch_table() { 
    if [[ "$*" == "ip address add" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_address_add`]'

    elif [[ "$*" == "ip address delete" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_address_delete`]'

    elif [[ "$*" == "ip address show" ]] \
      || [[ "$*" == "ip address save" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_address_save`]'

    elif [[ "$*" == "ip addrlabel add" ]] \
      || [[ "$*" == "ip addrlabel del" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_addrlabel_add`]'

    elif [[ "$*" == "ip l2tp add tunnel" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_l2tp_add_tunnel`]'

    elif [[ "$*" == "ip l2tp add session" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_l2tp_add_session`]'

    elif [[ "$*" == "ip l2tp delete tunnel" ]] \
      || [[ "$*" == "ip l2tp show tunnel" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_l2tp_delete_tunnel`]'

    elif [[ "$*" == "ip l2tp delete session" ]] \
      || [[ "$*" == "ip l2tp show session" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_l2tp_delete_session`]'

    elif [[ "$*" == "ip link add" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_link_add`]'

    elif [[ "$*" == "ip link delete" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_link_delete`]'

    elif [[ "$*" == "ip link set" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_link_set`]'
        
    elif [[ "$*" == "ip link show" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_link_show`]'

    elif [[ "$*" == "ip link xstats" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_link_xstats`]'
        
    elif [[ "$*" == "ip link afstats" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_dev_only`]'

    elif [[ "$*" == "ip maddress show" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_dev_only`]'

    elif [[ "$*" == "ip maddress delete" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_maddress_delete`]'


    elif [[ "$*" == "ip mroute show" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_mroute_show`]'

    elif [[ "$*" == "ip neighbour add" ]] \
      || [[ "$*" == "ip neighbour change" ]] \
      || [[ "$*" == "ip neighbour replace" ]] \
      || [[ "$*" == "ip neighbour delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_neighbour_add`]'

    elif [[ "$*" == "ip neighbour show" ]] \
      || [[ "$*" == "ip neighbour flush" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_neighbour_show`]'

    elif [[ "$*" == "ip neighbour get" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_neighbour_get`]'

    elif [[ "$*" == "ip netns"* ]]; then
        _patch_table_edit_arguments 'name;[`_choice_netns_name`]'

    elif [[ "$*" == "ip ntable show" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_ntable_show`]'

    elif [[ "$*" == "ip ntable change" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_ntable_change`]'

    elif [[ "$*" == "ip route add" ]] \
      || [[ "$*" == "ip route change" ]] \
      || [[ "$*" == "ip route replace" ]] \
      || [[ "$*" == "ip route delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_route_add`]'

    elif [[ "$*" == "ip route show" ]] \
      || [[ "$*" == "ip route flush" ]] \
      || [[ "$*" == "ip route save" ]] \
      || [[ "$*" == "ip route restore" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_route_show`]'

    elif [[ "$*" == "ip route get" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_route_get`]'

    elif [[ "$*" == "ip rule add" ]] \
      || [[ "$*" == "ip rule delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_rule_add`]'

    elif [[ "$*" == "ip rule flush" ]] \
      || [[ "$*" == "ip rule save" ]] \
      || [[ "$*" == "ip rule restore" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_rule_save`]'

    elif [[ "$*" == "ip tcp_metrics show" ]] \
      || [[ "$*" == "ip tcp_metrics delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_address_only`]'

    elif [[ "$*" == "ip token set" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_token_set`]'

    elif [[ "$*" == "ip token del" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_dev_only`]'

    elif [[ "$*" == "ip tunnel add" ]] \
      || [[ "$*" == "ip tunnel change" ]] \
      || [[ "$*" == "ip tunnel delete" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_tunnel_add`]'

    elif [[ "$*" == "ip tunnel prl" ]]; then
        _patch_table_edit_arguments ';;' 'action;*[`_choice_tunnel_prl`]'

    else
        cat
    fi
}

_choice_address_add() {
    if [[ "${#argc__positionals[@]}" -le 1 ]]; then
        :;
    else
        cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;the name of the device to add the address to.
local=;;the address of the interface.
peer=;;the address of the remote endpoint for pointopoint interfaces.
broadcast=;;the broadcast address on the interface.
label=;;Each address may be tagged with a label string.
scope=`_choice_ip_scope`;;the scope of the area where this address is valid.
metric=;;priority of prefix route associated with address.
valid_lft=;;the valid lifetime of this address.
preferred_lft=;;the preferred lifetime of this address.
home;;designates this address the "home address" as defined in RFC 6275.
mngtmpaddr;;(IPv6 only) make the kernel manage temporary addresses created from this one as template on behalf of Privacy Extensions (RFC3041).
nodad;;(IPv6 only) do not perform Duplicate Address Detection (RFC 4862) when adding this address.
optimistic;;(IPv6 only) When performing Duplicate Address Detection, use the RFC 4429 optimistic variant.
noprefixroute;;Do not automatically create a route for the network prefix of the added address, and don't search for one to delete when removing the address.
autojoin;;Joining multicast groups on Ethernet level via ip maddr command does not work if connected to an Ethernet switch that does IGMP snooping since the switch would not replicate multicast packets on ports that did not have IGMP reports for the multicast addresses.
EOF
    fi
}

_choice_address_delete() {
    if [[ "${#argc__positionals[@]}" -le 1 ]]; then
        _choice_ip_address
    else
        _choice_address_add
    fi
}

_choice_address_save() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;name of device.
scope=`_choice_ip_scope`;;only list addresses with this scope.
to=;;only list addresses matching this prefix.
label=;;only list addresses with labels matching the PATTERN.
master=`_choice_ip_device`;;only list interfaces enslaved to this master device.
vrf=;;only list interfaces enslaved to this vrf.
type=`_choice_ip_address_type`;;only list interfaces of the given type.
up;;only list running interfaces.
dynamic;;(IPv6 only) only list addresses installed due to stateless address configuration or only list dynamic (not permanent) addresses.
permanent;;(IPv6 only) only list addresses installed due to stateless address configuration or only list permanent (not dynamic) addresses.
tentative;;(IPv6 only) only list addresses which have not yet passed duplicate address detection.
-tentative;;(IPv6 only) only list addresses which are not in the process of duplicate address detection currently.
deprecated;;(IPv6 only) only list deprecated addresses.
-deprecated;;(IPv6 only) only list addresses not being deprecated.
dadfailed;;(IPv6 only) only list addresses which have failed duplicate address detection.
-dadfailed;;(IPv6 only) only list addresses which have not failed duplicate address detection.
temporary or secondary;;List temporary IPv6 or secondary IPv4 addresses only.
-temporary or -secondary;;These flags are aliases for primary.
primary;;List only primary addresses, in IPv6 exclude temporary ones.
-primary;;This is an alias for temporary or secondary.
EOF
}

_choice_addrlabel_add() {
    cat <<-'EOF' | _argc_util_comp_tv
prefix=`_choice_ip_addrlabel_prefix`
dev=`_choice_ip_device`;;the outgoing interface.
label=;;the label for the prefix.  0xffffffff is reserved.
EOF
}

_choice_l2tp_add_tunnel() {
    cat <<-'EOF' | _argc_util_comp_tv
tunnel_id=;;set the tunnel id, which is a 32-bit integer value.
peer_tunnel_id=;;set the peer tunnel id, which is a 32-bit integer value assigned to the tunnel by the peer.
remote=;;set the IP address of the remote peer.
local=;;set the IP address of the local interface to be used for the tunnel.
encap=;;set the encapsulation type of the tunnel.
udp_sport=;;set the UDP source port to be used for the tunnel.
udp_dport=;;set the UDP destination port to be used for the tunnel.
udp_csum=on,off;;(IPv4 only) control if IPv4 UDP checksums should be calculated and checked for the encapsulating UDP packets, when UDP encapsulating is selected.
udp6_csum_tx=on,off;;(IPv6 only) control if IPv6 UDP checksums should be calculated for encapsulating UDP packets, when UDP encapsulating is selected.
udp6_csum_rx=on,off;;(IPv6 only) control if IPv6 UDP checksums should be checked for the encapsulating UDP packets, when UDP encapsulating is selected.
EOF
}

_choice_l2tp_add_session() {
    cat <<-'EOF' | _argc_util_comp_tv
name=;;sets the session network interface name.
tunnel_id=;;set the tunnel id, which is a 32-bit integer value.
session_id=;;set the session id, which is a 32-bit integer value.
peer_session_id=;;set the peer session id, which is a 32-bit integer value assigned to the session by the peer.
cookie=;;sets an optional cookie value to be assigned to the session.
peer_cookie=;;sets an optional peer cookie value to be assigned to the session.
l2spec_type=none,default;;set the layer2specific header type of the session.
seq=none,send,recv,both;;controls sequence numbering to prevent or detect out of order packets.
EOF
}

_choice_l2tp_delete_tunnel() {
    cat <<-'EOF' | _argc_util_comp_tv
tunnel_id=;;set the tunnel id, which is a 32-bit integer value.
EOF
}

_choice_l2tp_delete_session() {
    cat <<-'EOF' | _argc_util_comp_tv
tunnel_id=;;set the tunnel id in which the session to be deleted is located.
session_id=;;set the session id of the session to be deleted.
EOF
}

_choice_link_add() {
    cat <<-'EOF' | _argc_util_comp_tv
link=`_choice_ip_device`;;specifies the physical device to act operate on.
name=;;specifies the name of the new virtual device.
txqueuelen=
address=
broadcast=
mtu=
index=;;specifies the desired index of the new virtual device.
type=`_choice_ip_link_type`;;specifies the type of the new device.
numtxqueues=;;specifies the number of transmit queues for new device.
numrxqueues=;;specifies the number of receive queues for new device.
gso_max_size=;;specifies the recommended maximum size of a Generic Segment Offload packet the new device should accept.
gso_max_segs=;;specifies the recommended maximum number of a Generic Segment Offload segments the new device should accept.
EOF
}

_choice_link_delete() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;specifies the virtual device to act operate on.
group=;;specifies the group of virtual links to delete.
type=`_choice_ip_link_type`;;specifies the type of the device.
EOF
}

_choice_link_set() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;DEVICE specifies network device to operate on.
group=;;GROUP has a dual role: If both group and dev are present, then move the device to the specified group.
up;;change the state of the device to UP or DOWN.
down;;change the state of the device to UP or DOWN.
arp=on,off;;change the NOARP flag on the device.
multicast=on,off;;change the MULTICAST flag on the device.
allmulticast=on,off;;change the ALLMULTI flag on the device.
promisc=on,off;;change the PROMISC flag on the device.
trailers=on,off;;change the NOTRAILERS flag on the device, NOT used by the Linux and exists for BSD compatibility.
protodown=on,off;;change the PROTODOWN state on the device.
protodown_reason=;;set PROTODOWN reasons on the device.
dynamic=on,off;;change the DYNAMIC flag on the device.
name=;;change the name of the device.
txqueuelen=;;
txqlen=;;change the transmit queue length of the device.
mtu=;;change the MTU of the device.
address=;;change the station address of the interface.
broadcast=;;
brd=;;
peer=;;change the link layer broadcast address or the peer address when the interface is POINTOPOINT.
netns=;;move the device to the network namespace associated with name NETNSNAME or process PID.
alias=;;give the device a symbolic name for easy reference.
vf=;;specify a Virtual Function device to be configured.
xdp=;;set (or unset) a XDP ("eXpress Data Path") BPF program to run on every packet at driver level.
master=`_choice_ip_device`;;set master device of the device (enslave device).
nomaster;;unset master device of the device (release device).
addrgenmode=eui64,none,stable_secret,random;;set the IPv6 address generation mode
link-netnsid;;set peer netnsid for a cross-netns interfaces
EOF
}

_choice_link_show() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;NAME specifies the network device to show.
group=;;GROUP specifies what group of devices to show.
up;;only display running interfaces.
master=`_choice_ip_device`;;DEVICE specifies the master device which enslaves devices to show.
vrf=;;NAME specifies the VRF which enslaves devices to show.
type=`_choice_ip_link_type`;;TYPE specifies the type of devices to show.
EOF
}

_choice_link_xstats() {
    cat <<-'EOF' | _argc_util_comp_tv
type=`_choice_ip_link_type`;;TYPE specifies the type of devices to show.
EOF
}

_choice_dev_only() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;NAME specifies the network device to show.
EOF
}

_choice_maddress_delete() {
    cat <<-'EOF' | _argc_util_comp_tv
address=;;the link-layer multicast address.
dev=`_choice_ip_device`;;NAME specifies the network device to show.
EOF
}

_choice_mroute_show() {
    cat <<-'EOF' | _argc_util_comp_tv
to=;;the prefix selecting the destination multicast addresses to list.
iif=;;the interface on which multicast packets are received.
from=;;the prefix selecting the IP source addresses of the multicast route.
table=;;the table id selecting the multicast table.
EOF
}

_choice_neighbour_add() {
    cat <<-'EOF' | _argc_util_comp_tv
to=;;the protocol address of the neighbour.
dev=`_choice_ip_device`;;the interface to which this neighbour is attached.
proxy;;indicates whether we are proxying for this neighbour entry
router;;indicates whether neighbour is a router;;
extern_learn;;this neigh entry was learned externally.
lladdr=;;the link layer address of the neighbour.
nud=`_choice_ip_neigh_state`;;the state of the neighbour entry.
EOF
}

_choice_neighbour_show() {
    cat <<-'EOF' | _argc_util_comp_tv
to=;;the prefix selecting the neighbours to list.
dev=`_choice_ip_device`;;only list the neighbours attached to this device.
vrf=;;only list the neighbours for given VRF.
proxy;;list neighbour proxies.
unused;;only list neighbours which are not currently in use.
nud=`_choice_ip_neigh_state`;;only list neighbour entries in this state.
EOF
}

_choice_neighbour_get() {
    cat <<-'EOF' | _argc_util_comp_tv
proxy=;;indicates whether we should lookup a proxy neighbour entry
to=;;the prefix selecting the neighbour to query.
dev=`_choice_ip_device`;;get neighbour entry attached to this device.
EOF
}

_choice_netns_name() {
    ip netns list
}

_choice_ntable_show() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;only list the table attached to this device.
name=;;only lists the table with the given name.
EOF
}

_choice_ntable_change() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;only list the table attached to this device.
name=;;only lists the table with the given name.
thresh1=
thresh2=
thresh3=
gc_int=
base_reachable=
retrans=
gc_stale=
delay_probe=
queue=
app_probs=
ucast_probes=
mcast_probes=
anycast_delay=
proxy_delay=
proxy_queue=
locktime=
EOF
}

_choice_route_add() {
    cat <<-'EOF' | _argc_util_comp_tv
to=`_choice_ip_route_type`;;the destination prefix of the route.
tos=;;
dsfield=;;the Type Of Service (TOS) key.
metric=;;
preference=;;the preference value of the route.
table=;;the table to add this route to.
vrf=;;the vrf name to add this route to.
dev=;;the output device name.
via=;;the address of the nexthop router, in the address family FAMILY.
src=;;the source address to prefer when sending to the destinations covered by the route prefix.
realm=;;the realm to which this route is assigned.
mtu=;;
window=;;the maximal window for TCP to advertise to these destinations, measured in bytes.
rtt=;;the initial RTT ('Round Trip Time') estimate.
rttvar=;;the initial RTT variance estimate.
rto_min=;;the minimum TCP Retransmission TimeOut to use when communicating with this destination.
ssthresh=;;an estimate for the initial slow start threshold.
cwnd=;;the clamp for congestion window.
initcwnd=;;the initial congestion window size for connections to this destination.
initrwnd=;;the initial receive window size for connections to this destination.
features=;;Enable or disable per-route features.
quickack=;;Enable or disable quick ack for connections to this destination.
fastopen_no_cookie=;;Enable TCP Fastopen without a cookie for connections to this destination.
congctl=;;Sets a specific TCP congestion control algorithm only for a given destination.
advmss=;;the MSS ('Maximal Segment Size') to advertise to these destinations when establishing TCP connections.
reordering=;;Maximal reordering on the path to this destination.
nexthop=;;the nexthop of a multipath route.
scope=;;the scope of the destinations covered by the route prefix.
protocol=redirect,kernel,boot,static,ra;;the routing protocol identifier of this route.
onlink;;pretend that the nexthop is directly attached to this link, even if it does not match any interface prefix.
pref=low,medium,high;;the IPv6 route preference.
nhid=;;use nexthop object with given id as nexthop specification.
encap=;;attach tunnel encapsulation attributes to this route.
expires=;;the route will be deleted after the expires time.
ttl-propagate=enabled,disabled;;Control whether TTL should be propagated from any encap into the un-encapsulated packet, overriding any global configuration.
EOF
}

_choice_route_show() {
    cat <<-'EOF' | _argc_util_comp_tv
to=;;only select routes from the given range of destinations.
tos=;;
dsfield=;;only select routes with the given TOS.
table=;;show the routes from this table(s).
vrf=;;show the routes for the table associated with the vrf name
cloned=
from=;;the same syntax as for to, but it binds the source address range rather than destinations.
protocol=;;only list routes of this protocol.
scope=;;only list routes with this scope.
type=`_choice_ip_route_type`;;only list routes of this type.
dev=;;only list routes going via this device.
via=;;only list routes going via the nexthop routers selected by PREFIX.
src=;;only list routes with preferred source addresses selected by PREFIX.
realm=;;
realms=;;only list routes with these realms.
EOF
}

_choice_route_get() {
    cat <<-'EOF' | _argc_util_comp_tv
fibmatch;;Return full fib lookup matched route.
to=;;the destination address.
from=;;the source address.
tos=;;
dsfield=;;the Type Of Service.
iif=;;the device from which this packet is expected to arrive.
oif=;;force the output device on which this packet will be routed.
mark=;;the firewall mark (fwmark)
vrf=;;force the vrf device on which this packet will be routed.
ipproto=;;ip protocol as seen by the route lookup
sport=;;source port as seen by the route lookup
dport=;;destination port as seen by the route lookup
connected;;if no source address (option from) was given, relookup the route with the source set to the preferred address received from the first lookup.
EOF
}

_choice_rule_add() {
    cat <<-'EOF' | _argc_util_comp_tv
type=;;the type of this rule.
from=;;select the source prefix to match.
to=;;select the destination prefix to match.
iif=;;select the incoming device to match.
oif=;;select the outgoing device to match.
tos=;;
dsfield=;;select the TOS value to match.
fwmark=;;select the fwmark value to match.
uidrange=;;select the uid value to match.
ipproto=;;select the ip protocol value to match.
sport=;;select the source port value to match.
dport=;;select the destination port value to match.
priority=;;the priority of this rule.
table=;;the routing table identifier to lookup if the rule selector matches.
protocol=;;the routing protocol who installed the rule in question.
suppress_prefixlength=;;reject routing decisions that have a prefix length of NUMBER or less.
suppress_ifgroup=;;reject routing decisions that use a device belonging to the interface group GROUP.
realms=;;Realms to select if the rule matched and the routing table lookup succeeded.
nat=;;The base of the IP address block to translate (for source addresses).
EOF
}

_choice_rule_save() {
    cat <<-'EOF' | _argc_util_comp_tv
protocol=;;Select the originating protocol.
EOF
}

_choice_address_only() {
    cat <<-'EOF' | _argc_util_comp_tv
address=`_choice_ip_address`;;IPv4/IPv6 address. 
EOF
}

_choice_token_set() {
    if [[ "${#argc__positionals[@]}" -le 1 ]]; then
        :;
    else
        _choice_dev_only
    fi
}

_choice_tunnel_add() {
    cat <<-'EOF' | _argc_util_comp_tv
name=;;select the tunnel device name.
mode=ipip,sit,isatap,vti,gre,ip6ip6,ipip6,ip6gre,vti6,any;;set the tunnel mode.
remote=;;set the remote endpoint of the tunnel.
local=;;set the fixed local address for tunneled packets.
ttl=;;
hoplimit=;;set a fixed TTL (IPv4) or hoplimit (IPv6) N on tunneled packets.
tos=
dsfield=
tclass=;;set the type of service (IPv4) or traffic class (IPv6) field on tunneled packets, which can be specified as either a two-digit hex value (e.g.
dev=`_choice_ip_device`;;bind the tunnel to the device NAME so that tunneled packets will only be routed via this device and will not be able to escape to another device when the route to endpoint changes.
nopmtudisc;;disable Path MTU Discovery on this tunnel.
ignore-df;;enable IPv4 DF suppression on this tunnel.
key=
ikey=
okey=;;( only IPv6 tunnels ) use keyed GRE with key K.
csum;;( only IPv6 tunnels ) generate/require checksums for tunneled packets.
icsum;;( only IPv6 tunnels ) generate/require checksums for tunneled packets.
ocsum;;( only IPv6 tunnels ) generate/require checksums for tunneled packets.
seq;;( only IPv6 tunnels ) serialize packets.
iseq;;( only IPv6 tunnels ) serialize packets.
oseq;;( only IPv6 tunnels ) serialize packets.
encaplimit=;;( only IPv6 tunnels ) set a fixed encapsulation limit.
flowlabel=;;( only IPv6 tunnels ) set a fixed flowlabel.
allow-localremote;;( only IPv6 tunnels ) allow remote endpoint on the local host.
EOF
}

_choice_tunnel_prl() {
    cat <<-'EOF' | _argc_util_comp_tv
dev=`_choice_ip_device`;;mandatory device name.
prl-default=
prl-nodefault=
prl-delete=;;Add or delete ADDR as a potential router or default router
EOF
}

_choice_ip_address() {
    ip -o addr show | while read -r a b c d e; do
        echo $d
    done
}

_choice_ip_address_type() {
    printf "%s\n" bridge bridge_slave bond bond_slave can dummy hsr ifb ipoib \
        macvlan macvtap vcan veth vlan vxlan ip6tnl ipip sit gre gretap erspan \
        ip6gre ip6gretap ip6erspan vti vrf nlmon ipvlan lowpan geneve macsec 
}

_choice_ip_addrlabel_prefix() {
    ip addrlabel list | gawk '{print $2}'
}

_choice_ip_device() {
    ip -o link show | sed -n 's/^\S\+ \(\S\+\):.*$/\1/p'
}

_choice_ip_link_type() {
    cat <<-'EOF'
bridge	Ethernet Bridge device
bond	Bonding device
dummy	Dummy network interface
hsr	High-availability Seamless Redundancy device
ifb	Intermediate Functional Block device
ipoib	IP over Infiniband device
macvlan	Virtual interface base on link layer address (MAC)
macvtap	Virtual interface based on link layer address (MAC) and TAP.
vcan	Virtual Controller Area Network interface
vxcan	Virtual Controller Area Network tunnel interface
veth	Virtual ethernet interface
vlan	802.1q tagged virtual LAN interface
vxlan	Virtual eXtended LAN
ip6tnl	Virtual tunnel interface IPv4|IPv6 over IPv6
ipip	Virtual tunnel interface IPv4 over IPv4
sit	Virtual tunnel interface IPv6 over IPv4
gre	Virtual tunnel interface GRE over IPv4
gretap	Virtual L2 tunnel interface GRE over IPv4
erspan	Encapsulated Remote SPAN over GRE and IPv4
ip6gre	Virtual tunnel interface GRE over IPv6
ip6gretap	Virtual L2 tunnel interface GRE over IPv6
ip6erspan	Encapsulated Remote SPAN over GRE and IPv6
vti	Virtual tunnel interface
nlmon	Netlink monitoring device
ipvlan	Interface for L3 (IPv6/IPv4) based VLANs
ipvtap	Interface for L3 (IPv6/IPv4) based VLANs and TAP
lowpan	Interface for 6LoWPAN (IPv6) over IEEE 802.15.4 / Bluetooth
geneve	GEneric NEtwork Virtualization Encapsulation
bareudp	Bare UDP L3 encapsulation support
macsec	Interface for IEEE 802.1AE MAC Security (MACsec)
vrf	Interface for L3 VRF domains
netdevsim	Interface for netdev API tests
rmnet	Qualcomm rmnet device
xfrm	Virtual xfrm interface
EOF
}

_choice_ip_neigh_state() {
    cat <<-'EOF'
permanent;;the neighbour entry is valid forever and can be only be removed administratively.
noarp;;the neighbour entry is valid. No attempts to validate this entry will be made but it can be removed when its lifetime expires.
reachable;;the neighbour entry is valid until the reachability timeout expires.
stale;;the neighbour entry is valid but suspicious.  This option to ip neigh does not change the neighbour state if it was valid and the address is not changed by this command.
none;;this is a pseudo state used when initially creating a neighbour entry or after trying to remove it before it becomes free to do so.
incomplete;;the neighbour entry has not (yet) been validated/resolved.
delay;;neighbor entry validation is currently delayed.
probe;;neighbor is being probed.
failed;;max number of probes exceeded without success, neighbor validation has ultimately failed.
EOF
}

_choice_ip_route_type() {
    cat <<-'EOF'
unicast	the route entry describes real paths to the destinations covered by the route prefix.
unreachable	these destinations are unreachable. Packets are discarded and the ICMP message host unreachable is generated.  The local senders get an EHOSTUNREACH error.
blackhole	these destinations are unreachable. Packets are discarded silently.  The local senders get an EINVAL error.
prohibit	these destinations are unreachable. Packets are discarded and the ICMP message communication administratively prohibited is generated. The local senders get an EACCES error.
local	the destinations are assigned to this host. The packets are looped back and delivered locally.
broadcast	the destinations are broadcast addresses. The packets are sent as link broadcasts.
throw	a special control route used together with policy rules. If such a route is selected, lookup in this table is terminated pretending that no route was found. Without policy routing it is equivalent to the absence of the route in the routing table. The packets are dropped and the ICMP message net unreachable is generated. The local senders get an ENETUNREACH error.
nat	a special NAT route. Destinations covered by the prefix are considered to be dummy (or external) addresses which require translation to real (or internal) ones before forwarding. The addresses to translate to are selected with the attribute via.  Warning: Route NAT is no longer supported in Linux 2.6.
anycast	not implemented the destinations are anycast addresses assigned to this host. They are mainly equivalent to local with one difference: such addresses are invalid when used as the source address of any packet.
multicast	a special type used for multicast routing. It is not present in normal routing tables.
EOF
}

_choice_ip_scope() {
    if [[ -r /etc/iproute2/rt_scopes ]]; then
        cat /etc/iproute2/rt_scopes | sed  -n  -e '/^#/ d' -e 's/^\(\S\+\)\s*\(\S\+\)\s*$/\1\t\2/p'
    fi
}
