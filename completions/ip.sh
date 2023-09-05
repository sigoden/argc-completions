#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V -Version               Print the version of the ip utility and exit.
# @flag -h                        output statistics with human readable values followed by suffix.
# @flag -human                    output statistics with human readable values followed by suffix.
# @flag -human-readable           output statistics with human readable values followed by suffix.
# @option -b -batch <FILENAME>    Read commands from provided file or standard input and invoke them.
# @flag -force                    Don't terminate ip on errors in batch mode.
# @flag -s                        Output more information.
# @flag -stats                    Output more information.
# @flag -statistics               Output more information.
# @flag -d -details               Output more detailed information.
# @option -l -loops <COUNT>       Specify maximum number of loops the 'ip address flush' logic will attempt before giving up.
# @option -f -family              Specifies the protocol family to use.
# @flag -4                        shortcut for -family inet.
# @flag -6                        shortcut for -family inet6.
# @flag -B                        shortcut for -family bridge.
# @flag -M                        shortcut for -family mpls.
# @flag -0                        shortcut for -family link.
# @flag -o -oneline               output each record on a single line, replacing line feeds with the '\' character.
# @flag -r -resolve               use the system's name resolver to print DNS names instead of host addresses.
# @option -n -netns               switches ip to the specified network namespace NETNS.
# @flag -N -Numeric               Print the number of protocol, scope, dsfield, etc directly instead of converting it to human readable name.
# @flag -a -all                   executes specified command over all objects, it depends if command supports this option.
# @option -c <[color][= # Configure color output. # [always|auto|never]>
# @flag -t -timestamp             display current time when using monitor option.
# @flag -ts                       Like -timestamp, but use shorter format.
# @flag -tshort                   Like -timestamp, but use shorter format.
# @option -rc <SIZE>              Set the netlink socket receive buffer size, defaults to 1MB.
# @option -rcvbuf <SIZE>          Set the netlink socket receive buffer size, defaults to 1MB.
# @flag -iec                      print human readable rates in IEC units (e.g. 1Ki = 1024).
# @flag -br                       Print only basic information in a tabular format for better readability.
# @flag -brief                    Print only basic information in a tabular format for better readability.
# @flag -j -json                  Output results in JavaScript Object Notation (JSON).
# @flag -p -pretty                The default JSON format is compact and more efficient to parse but hard for most users to read.

# {{ ip address
# @cmd protocol (IP or IPv6) address on a device.
# @alias a,addr
address() {
    :;
}

# {{{ ip address add
# @cmd add new protocol address
# @alias change,replace
# @arg action*[`_choice_address_add`]
address::add() {
    :;
}
# }}} ip address add

# {{{ ip address delete
# @cmd delete protocol address
# @alias del
# @arg action*[`_choice_address_delete`]
address::delete() {
    :;
}
# }}} ip address delete

# {{{ ip address show
# @cmd look at protocol addresses
# @arg action*[`_choice_address_save`]
address::show() {
    :;
}
# }}} ip address show

# {{{ ip address save
# @cmd flush protocol addresses
# @alias flush
# @arg action*[`_choice_address_save`]
address::save() {
    :;
}
# }}} ip address save
# }} ip address

# {{ ip addrlabel
# @cmd label configuration for protocol address selection.
addrlabel() {
    :;
}

# {{{ ip addrlabel add
# @cmd add an address label
# @arg action*[`_choice_addrlabel_add`]
addrlabel::add() {
    :;
}
# }}} ip addrlabel add

# {{{ ip addrlabel del
# @cmd delete an address label
# @arg action*[`_choice_addrlabel_add`]
addrlabel::del() {
    :;
}
# }}} ip addrlabel del

# {{{ ip addrlabel list
# @cmd list address labels
addrlabel::list() {
    :;
}
# }}} ip addrlabel list

# {{{ ip addrlabel flush
# @cmd flush address labels
addrlabel::flush() {
    :;
}
# }}} ip addrlabel flush
# }} ip addrlabel

# {{ ip ioam
# @cmd manage IOAM namespaces and IOAM schemas.
ioam() {
    :;
}

# {{{ ip ioam namespace
# @cmd
ioam::namespace() {
    :;
}

# {{{{ ip ioam namespace show
# @cmd
ioam::namespace::show() {
    :;
}
# }}}} ip ioam namespace show

# {{{{ ip ioam namespace add
# @cmd
# @arg id
# @arg data32
# @arg data64
ioam::namespace::add() {
    :;
}
# }}}} ip ioam namespace add

# {{{{ ip ioam namespace del
# @cmd
# @arg id
ioam::namespace::del() {
    :;
}
# }}}} ip ioam namespace del
# }}} ip ioam namespace

# {{{ ip ioam schema
# @cmd
ioam::schema() {
    :;
}

# {{{{ ip ioam schema show
# @cmd
ioam::schema::show() {
    :;
}
# }}}} ip ioam schema show

# {{{{ ip ioam schema add
# @cmd
# @arg id
# @arg data
ioam::schema::add() {
    :;
}
# }}}} ip ioam schema add

# {{{{ ip ioam schema del
# @cmd
# @arg id
ioam::schema::del() {
    :;
}
# }}}} ip ioam schema del
# }}} ip ioam schema
# }} ip ioam

# {{ ip l2tp
# @cmd tunnel ethernet over IP (L2TPv3).
l2tp() {
    :;
}

# {{{ ip l2tp add
# @cmd
l2tp::add() {
    :;
}

# {{{{ ip l2tp add tunnel
# @cmd add a new tunnel
# @arg action*[`_choice_l2tp_add_tunnel`]
l2tp::add::tunnel() {
    :;
}
# }}}} ip l2tp add tunnel

# {{{{ ip l2tp add session
# @cmd add a new session to a tunnel
# @arg action*[`_choice_l2tp_add_session`]
l2tp::add::session() {
    :;
}
# }}}} ip l2tp add session
# }}} ip l2tp add

# {{{ ip l2tp delete
# @cmd
l2tp::delete() {
    :;
}

# {{{{ ip l2tp delete tunnel
# @cmd destroy a tunnel
# @arg action*[`_choice_l2tp_delete_tunnel`]
l2tp::delete::tunnel() {
    :;
}
# }}}} ip l2tp delete tunnel

# {{{{ ip l2tp delete session
# @cmd destroy a session
# @arg action*[`_choice_l2tp_delete_session`]
l2tp::delete::session() {
    :;
}
# }}}} ip l2tp delete session
# }}} ip l2tp delete

# {{{ ip l2tp show
# @cmd
l2tp::show() {
    :;
}

# {{{{ ip l2tp show tunnel
# @cmd show information about tunnels
# @arg action*[`_choice_l2tp_delete_tunnel`]
l2tp::show::tunnel() {
    :;
}
# }}}} ip l2tp show tunnel

# {{{{ ip l2tp show session
# @cmd show information about sessions
# @arg action*[`_choice_l2tp_delete_session`]
l2tp::show::session() {
    :;
}
# }}}} ip l2tp show session
# }}} ip l2tp show
# }} ip l2tp

# {{ ip link
# @cmd network device.
# @alias l
link() {
    :;
}

# {{{ ip link add
# @cmd add virtual link
# @arg action*[`_choice_link_add`]
link::add() {
    :;
}
# }}} ip link add

# {{{ ip link delete
# @cmd delete virtual link
# @arg action*[`_choice_link_delete`]
link::delete() {
    :;
}
# }}} ip link delete

# {{{ ip link set
# @cmd change device attributes
# @arg action*[`_choice_link_set`]
link::set() {
    :;
}
# }}} ip link set

# {{{ ip link show
# @cmd display device attributes
# @arg action*[`_choice_link_show`]
link::show() {
    :;
}
# }}} ip link show

# {{{ ip link xstats
# @cmd display extended statistics
# @arg action*[`_choice_link_xstats`]
link::xstats() {
    :;
}
# }}} ip link xstats

# {{{ ip link afstats
# @cmd display address-family specific statistics
# @arg action*[`_choice_dev_only`]
link::afstats() {
    :;
}
# }}} ip link afstats
# }} ip link

# {{ ip maddress
# @cmd multicast address.
maddress() {
    :;
}

# {{{ ip maddress show
# @cmd list multicast addresses
# @arg action*[`_choice_dev_only`]
maddress::show() {
    :;
}
# }}} ip maddress show

# {{{ ip maddress add
# @cmd add a multicast address
maddress::add() {
    :;
}
# }}} ip maddress add

# {{{ ip maddress delete
# @cmd delete a multicast address
# @arg action*[`_choice_maddress_delete`]
maddress::delete() {
    :;
}
# }}} ip maddress delete
# }} ip maddress

# {{ ip monitor
# @cmd watch for netlink messages.
# @flag -t -timestamp    Prints timestamp before the event message on the separated line in format: Timestamp: <Day> <Month> <DD> <hh:mm:ss> <YYYY> <usecs> usec <EVENT>
# @flag -ts              Prints short timestamp before the event message on the same line in format: [<YYYY>-<MM>-<DD>T<hh:mm:ss>.<ms>] <EVENT>
# @flag -tshort          Prints short timestamp before the event message on the same line in format: [<YYYY>-<MM>-<DD>T<hh:mm:ss>.<ms>] <EVENT>
monitor() {
    :;
}
# }} ip monitor

# {{ ip mptcp
# @cmd manage MPTCP path manager.
mptcp() {
    :;
}

# {{{ ip mptcp endpoint
# @cmd
mptcp::endpoint() {
    :;
}

# {{{{ ip mptcp endpoint add
# @cmd add new MPTCP endpoint
mptcp::endpoint::add() {
    :;
}
# }}}} ip mptcp endpoint add

# {{{{ ip mptcp endpoint delete
# @cmd delete existing MPTCP endpoint
mptcp::endpoint::delete() {
    :;
}
# }}}} ip mptcp endpoint delete

# {{{{ ip mptcp endpoint show
# @cmd get existing MPTCP endpoint
mptcp::endpoint::show() {
    :;
}
# }}}} ip mptcp endpoint show

# {{{{ ip mptcp endpoint flush
# @cmd flush all existing MPTCP endpoints
mptcp::endpoint::flush() {
    :;
}
# }}}} ip mptcp endpoint flush
# }}} ip mptcp endpoint

# {{{ ip mptcp limits
# @cmd
mptcp::limits() {
    :;
}

# {{{{ ip mptcp limits show
# @cmd get current MPTCP subflow creation limits
mptcp::limits::show() {
    :;
}
# }}}} ip mptcp limits show

# {{{{ ip mptcp limits set
# @cmd change the MPTCP subflow creation limits
mptcp::limits::set() {
    :;
}
# }}}} ip mptcp limits set

# {{{{ ip mptcp limits monitor
# @cmd displays creation and deletion of MPTCP connections as well as addition or removal of remote addresses and subflows.
mptcp::limits::monitor() {
    :;
}
# }}}} ip mptcp limits monitor
# }}} ip mptcp limits
# }} ip mptcp

# {{ ip mroute
# @cmd multicast routing cache entry.
mroute() {
    :;
}

# {{{ ip mroute show
# @cmd list mroute cache entries
# @arg action*[`_choice_mroute_show`]
mroute::show() {
    :;
}
# }}} ip mroute show
# }} ip mroute

# {{ ip mrule
# @cmd rule in multicast routing policy database.
mrule() {
    :;
}
# }} ip mrule

# {{ ip neighbour
# @cmd manage ARP or NDISC cache entries.
# @alias n,neigh
neighbour() {
    :;
}

# {{{ ip neighbour add
# @cmd add a new neighbour entry
# @arg action*[`_choice_neighbour_add`]
neighbour::add() {
    :;
}
# }}} ip neighbour add

# {{{ ip neighbour change
# @cmd change an existing entry
# @arg action*[`_choice_neighbour_add`]
neighbour::change() {
    :;
}
# }}} ip neighbour change

# {{{ ip neighbour replace
# @cmd add a new entry or change an existing one
# @arg action*[`_choice_neighbour_add`]
neighbour::replace() {
    :;
}
# }}} ip neighbour replace

# {{{ ip neighbour delete
# @cmd delete a neighbour entry
# @arg action*[`_choice_neighbour_add`]
neighbour::delete() {
    :;
}
# }}} ip neighbour delete

# {{{ ip neighbour show
# @cmd list neighbour entries
# @arg action*[`_choice_neighbour_show`]
neighbour::show() {
    :;
}
# }}} ip neighbour show

# {{{ ip neighbour flush
# @cmd flush neighbour entries
# @arg action*[`_choice_neighbour_show`]
neighbour::flush() {
    :;
}
# }}} ip neighbour flush

# {{{ ip neighbour get
# @cmd lookup a neighbour entry to a destination given a device
# @arg action*[`_choice_neighbour_get`]
neighbour::get() {
    :;
}
# }}} ip neighbour get
# }} ip neighbour

# {{ ip netns
# @cmd manage network namespaces.
netns() {
    :;
}

# {{{ ip netns list
# @cmd show all of the named network namespaces
netns::list() {
    :;
}
# }}} ip netns list

# {{{ ip netns add
# @cmd create a new named network namespace
# @arg name[`_choice_netns_name`]
netns::add() {
    :;
}
# }}} ip netns add

# {{{ ip netns attach
# @cmd create a new named network namespace
# @arg name[`_choice_netns_name`]
# @arg pid
netns::attach() {
    :;
}
# }}} ip netns attach

# {{{ ip netns delete
# @cmd delete the name of a network namespace(s)
# @arg name[`_choice_netns_name`]
netns::delete() {
    :;
}
# }}} ip netns delete

# {{{ ip netns set
# @cmd assign an id to a peer network namespace
# @arg name[`_choice_netns_name`]
# @arg netnsid
netns::set() {
    :;
}
# }}} ip netns set

# {{{ ip netns identify
# @cmd Report network namespaces names for process
# @arg pid
netns::identify() {
    :;
}
# }}} ip netns identify

# {{{ ip netns pids
# @cmd Report processes in the named network namespace
# @arg name[`_choice_netns_name`]
netns::pids() {
    :;
}
# }}} ip netns pids

# {{{ ip netns exec
# @cmd Run cmd in the named network namespace
# @arg name[`_choice_netns_name`]
# @arg cmd*
netns::exec() {
    :;
}
# }}} ip netns exec

# {{{ ip netns monitor
# @cmd Report as network namespace names are added and deleted
netns::monitor() {
    :;
}
# }}} ip netns monitor

# {{{ ip netns list-id
# @cmd list network namespace ids (nsid)
# @arg target-nsid-positive-int <target-nsid POSITIVE-INT>
# @arg nsid-positive-int <nsid POSITIVE-INT>
netns::list-id() {
    :;
}
# }}} ip netns list-id
# }} ip netns

# {{ ip ntable
# @cmd manage the neighbor cache's operation.
ntable() {
    :;
}

# {{{ ip ntable show
# @cmd list the ip neighbour tables
# @arg action*[`_choice_ntable_show`]
ntable::show() {
    :;
}
# }}} ip ntable show

# {{{ ip ntable change
# @cmd modify table parameter
# @arg action*[`_choice_ntable_change`]
ntable::change() {
    :;
}
# }}} ip ntable change
# }} ip ntable

# {{ ip route
# @cmd routing table entry.
# @alias ro
route() {
    :;
}

# {{{ ip route add
# @cmd add new route
# @arg action*[`_choice_route_add`]
route::add() {
    :;
}
# }}} ip route add

# {{{ ip route change
# @cmd change route
# @arg action*[`_choice_route_add`]
route::change() {
    :;
}
# }}} ip route change

# {{{ ip route replace
# @cmd change or add new one
# @arg action*[`_choice_route_add`]
route::replace() {
    :;
}
# }}} ip route replace

# {{{ ip route delete
# @cmd delete route
# @alias del
# @arg action*[`_choice_route_add`]
route::delete() {
    :;
}
# }}} ip route delete

# {{{ ip route show
# @cmd list routes
# @arg action*[`_choice_route_show`]
route::show() {
    :;
}
# }}} ip route show

# {{{ ip route flush
# @cmd flush routing tables
# @arg action*[`_choice_route_show`]
route::flush() {
    :;
}
# }}} ip route flush

# {{{ ip route get
# @cmd get a single route
# @arg action*[`_choice_route_get`]
route::get() {
    :;
}
# }}} ip route get

# {{{ ip route save
# @cmd save routing table information to stdout
# @arg action*[`_choice_route_show`]
route::save() {
    :;
}
# }}} ip route save

# {{{ ip route restore
# @cmd restore routing table information from stdin
# @arg action*[`_choice_route_show`]
route::restore() {
    :;
}
# }}} ip route restore
# }} ip route

# {{ ip rule
# @cmd rule in routing policy database.
rule() {
    :;
}

# {{{ ip rule add
# @cmd insert a new rule
# @arg action*[`_choice_rule_add`]
rule::add() {
    :;
}
# }}} ip rule add

# {{{ ip rule delete
# @cmd delete a rule
# @arg action*[`_choice_rule_add`]
rule::delete() {
    :;
}
# }}} ip rule delete

# {{{ ip rule flush
# @cmd also dumps all the deleted rules.
# @arg action*[`_choice_rule_save`]
rule::flush() {
    :;
}
# }}} ip rule flush

# {{{ ip rule show
# @cmd list rules
rule::show() {
    :;
}
# }}} ip rule show

# {{{ ip rule save
# @cmd save rules table information to stdout
# @arg action*[`_choice_rule_save`]
rule::save() {
    :;
}
# }}} ip rule save

# {{{ ip rule restore
# @cmd restore rules table information from stdin
# @arg action*[`_choice_rule_save`]
rule::restore() {
    :;
}
# }}} ip rule restore
# }} ip rule

# {{ ip tcp_metrics
# @cmd manage TCP Metrics
# @alias tcpmetrics
tcp_metrics() {
    :;
}

# {{{ ip tcp_metrics show
# @cmd show cached entries
# @arg action*[`_choice_address_only`]
tcp_metrics::show() {
    :;
}
# }}} ip tcp_metrics show

# {{{ ip tcp_metrics delete
# @cmd delete single entry
# @arg action*[`_choice_address_only`]
tcp_metrics::delete() {
    :;
}
# }}} ip tcp_metrics delete

# {{{ ip tcp_metrics flush
# @cmd flush entries
tcp_metrics::flush() {
    :;
}
# }}} ip tcp_metrics flush
# }} ip tcp_metrics

# {{ ip token
# @cmd manage tokenized interface identifiers.
token() {
    :;
}

# {{{ ip token set
# @cmd set an interface token
# @arg action*[`_choice_token_set`]
token::set() {
    :;
}
# }}} ip token set

# {{{ ip token del
# @cmd delete an interface token
# @arg action*[`_choice_dev_only`]
token::del() {
    :;
}
# }}} ip token del

# {{{ ip token get
# @cmd get the interface token from the kernel
token::get() {
    :;
}
# }}} ip token get

# {{{ ip token list
# @cmd list all interface tokens
token::list() {
    :;
}
# }}} ip token list
# }} ip token

# {{ ip tunnel
# @cmd tunnel over IP.
tunnel() {
    :;
}

# {{{ ip tunnel add
# @cmd add a new tunnel
# @arg action*[`_choice_tunnel_add`]
tunnel::add() {
    :;
}
# }}} ip tunnel add

# {{{ ip tunnel change
# @cmd change an existing tunnel
# @arg action*[`_choice_tunnel_add`]
tunnel::change() {
    :;
}
# }}} ip tunnel change

# {{{ ip tunnel delete
# @cmd destroy a tunnel
# @arg action*[`_choice_tunnel_add`]
tunnel::delete() {
    :;
}
# }}} ip tunnel delete

# {{{ ip tunnel prl
# @cmd potential router list (ISATAP only)
# @arg action*[`_choice_tunnel_prl`]
tunnel::prl() {
    :;
}
# }}} ip tunnel prl

# {{{ ip tunnel show
# @cmd list tunnels This command has no arguments.
tunnel::show() {
    :;
}
# }}} ip tunnel show
# }} ip tunnel

# {{ ip tuntap
# @cmd manage TUN, TAP devices.
tuntap() {
    :;
}
# }} ip tuntap

# {{ ip vrf
# @cmd manage virtual routing and forwarding devices.
vrf() {
    :;
}

# {{{ ip vrf show
# @cmd Show all configured VRF
# @arg name
vrf::show() {
    :;
}
# }}} ip vrf show

# {{{ ip vrf exec
# @cmd Run cmd against the named VRF
# @arg name
# @arg cmd*
vrf::exec() {
    :;
}
# }}} ip vrf exec

# {{{ ip vrf identify
# @cmd Report VRF association for process
# @arg pid
vrf::identify() {
    :;
}
# }}} ip vrf identify

# {{{ ip vrf pids
# @cmd Report processes associated with the named VRF
# @arg name
vrf::pids() {
    :;
}
# }}} ip vrf pids
# }} ip vrf

# {{ ip xfrm
# @cmd manage IPSec policies.
xfrm() {
    :;
}

# {{{ ip xfrm state
# @cmd
xfrm::state() {
    :;
}

# {{{{ ip xfrm state add
# @cmd add new state into xfrm
xfrm::state::add() {
    :;
}
# }}}} ip xfrm state add

# {{{{ ip xfrm state update
# @cmd update existing state in xfrm
xfrm::state::update() {
    :;
}
# }}}} ip xfrm state update

# {{{{ ip xfrm state allocspi
# @cmd allocate an SPI value
xfrm::state::allocspi() {
    :;
}
# }}}} ip xfrm state allocspi

# {{{{ ip xfrm state delete
# @cmd delete existing state in xfrm
xfrm::state::delete() {
    :;
}
# }}}} ip xfrm state delete

# {{{{ ip xfrm state get
# @cmd get existing state in xfrm
xfrm::state::get() {
    :;
}
# }}}} ip xfrm state get

# {{{{ ip xfrm state deleteall
# @cmd delete all existing state in xfrm
xfrm::state::deleteall() {
    :;
}
# }}}} ip xfrm state deleteall

# {{{{ ip xfrm state list
# @cmd print out the list of existing state in xfrm
xfrm::state::list() {
    :;
}
# }}}} ip xfrm state list

# {{{{ ip xfrm state flush
# @cmd flush all state in xfrm
xfrm::state::flush() {
    :;
}
# }}}} ip xfrm state flush

# {{{{ ip xfrm state count
# @cmd count all existing state in xfrm
xfrm::state::count() {
    :;
}
# }}}} ip xfrm state count
# }}} ip xfrm state

# {{{ ip xfrm policy
# @cmd
xfrm::policy() {
    :;
}

# {{{{ ip xfrm policy add
# @cmd add a new policy
xfrm::policy::add() {
    :;
}
# }}}} ip xfrm policy add

# {{{{ ip xfrm policy update
# @cmd update an existing policy
xfrm::policy::update() {
    :;
}
# }}}} ip xfrm policy update

# {{{{ ip xfrm policy delete
# @cmd delete an existing policy
xfrm::policy::delete() {
    :;
}
# }}}} ip xfrm policy delete

# {{{{ ip xfrm policy get
# @cmd get an existing policy
xfrm::policy::get() {
    :;
}
# }}}} ip xfrm policy get

# {{{{ ip xfrm policy deleteall
# @cmd delete all existing xfrm policies
xfrm::policy::deleteall() {
    :;
}
# }}}} ip xfrm policy deleteall

# {{{{ ip xfrm policy list
# @cmd print out the list of xfrm policies
xfrm::policy::list() {
    :;
}
# }}}} ip xfrm policy list

# {{{{ ip xfrm policy flush
# @cmd flush policies
xfrm::policy::flush() {
    :;
}
# }}}} ip xfrm policy flush
# }}} ip xfrm policy
# }} ip xfrm

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"