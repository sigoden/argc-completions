#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -4                                        Use IPv4
# @flag -6                                        Use IPv6
# @flag -d --debug                                Enable socket level debugging
# @flag -F --dont-fragment                        Do not fragment packets
# @option -f --first <first_ttl>                  Start from the first_ttl hop (instead from 1)
# @option -g --gateway* <gate,>                   Route packets through the specified gateway (maximum 8 for IPv4 and 127 for IPv6)
# @flag -I --icmp                                 Use ICMP ECHO for tracerouting
# @flag -T --tcp                                  Use TCP SYN for tracerouting (default port is 80)
# @option -i --interface[`_module_os_network_interface`] <device>  Specify a network interface to operate with
# @option -m --max-hops <max_ttl>                 Set the max number of hops (max TTL to be reached).
# @option -N --sim-queries <squeries>             Set the number of probes to be tried simultaneously (default is 16)
# @flag -n                                        Do not resolve IP addresses to their domain names
# @option -p --port <port>                        Set the destination port to use.
# @option -t --tos <tos>                          Set the TOS (IPv4 type of service) or TC (IPv6 traffic class) value for outgoing packets
# @option -l --flowlabel <flow_label>             Use specified flow_label for IPv6 packets
# @option -w --wait <MAX,HERE,NEAR>               Wait for a probe no more than HERE (default 3) times longer than a response from the same hop, or no more than NEAR (default 10) times than some next hop, or MAX (default 5.0) seconds (float point values allowed too)
# @option -q --queries <nqueries>                 Set the number of probes per each hop.
# @flag -r                                        Bypass the normal routing and send directly to a host on an attached network
# @option -s --source <src_addr>                  Use source src_addr for outgoing packets
# @option -z --sendwait <sendwait>                Minimal time interval between probes (default 0).
# @flag -e --extensions                           Show ICMP extensions (if present), including MPLS
# @flag -A --as-path-lookups                      Perform AS path lookups in routing registries and print results directly after the corresponding addresses
# @option -M --module[`_choice_method`] <name>    Use specified module (either builtin or external) for traceroute operations.
# @option -O --options*,[`_choice_option`] <OPTS,>  Use module-specific option OPTS for the traceroute module.
# @option --sport <num>                           Use source port num for outgoing packets.
# @option --fwmark <num>                          Set firewall mark for outgoing packets
# @flag -U --udp                                  Use UDP to particular port for tracerouting (instead of increasing the port per each probe), default port is 53
# @flag -UL                                       Use UDPLITE for tracerouting (default dest port is 53)
# @flag -D --dccp                                 Use DCCP Request for tracerouting (default port is 33434)
# @option -P --protocol <prot>                    Use raw packet of protocol prot for tracerouting
# @flag --mtu                                     Discover MTU along the path being traced.
# @flag --back                                    Guess the number of hops in the backward path and print if it differs
# @flag -V --version                              Print version info and exit
# @flag --help                                    Read this help and exit
# @arg host                                       The host to traceroute to
# @arg packetlen                                  The full packet length (default is the length of an IP header plus 40).

_choice_method() {
    printf "%s\n" default icmp tcp tcpconn udp udplite dccp raw
}

_choice_option() {
    if [[ "$argc_module" == "icmp" ]] || [[ -n "$argc_icmp" ]]; then
        cat <<-'EOF'
raw	Use only raw sockets (the traditional way).
dgram	Use only dgram icmp sockets.
EOF

    elif [[ "$argc_module" == "tcp" ]] || [[ -n "$argc_tcp" ]]; then
        cat <<-'EOF'
syn	Set flag
ack	Set flag
fin	Set flag
rst	Set flag
psh	Set flag
urg	Set flag
ece	Set flag
cwr	Set flag
flags=	Sets the flags field in the tcp header exactly to num.
ecn	Send syn packet with tcp flags ECE and CWR (for Explicit Congestion Notification, rfc3168).
sack	Use the corresponding tcp header option in the outgoing probe packet.
timestamps	Use the corresponding tcp header option in the outgoing probe packet.
window_scaling	Use the corresponding tcp header option in the outgoing probe packet.
sysctl	Use current sysctl (/proc/sys/net/*) setting for the tcp header options above and ecn.
mss=	Use value of num for maxseg tcp header option (when syn).
info	Print tcp flags of final tcp replies when the target host is reached.
EOF

    elif [[ "$argc_module" == "udplite" ]] || [[ -n "$argc_udplite" ]]; then
        cat <<-'EOF'
coverage=	Set udplite send coverage to num.
EOF
    elif [[ "$argc_module" == "dccp" ]] || [[ -n "$argc_dccp" ]]; then
        cat <<-'EOF'
service=	Set DCCP service code to num (default is 1885957735).
EOF
    elif [[ "$argc_module" == "raw" ]] || [[ -n "$argc_protocol" ]]; then
        cat <<-'EOF'
protocol=	Sse IP protocol proto
EOF
    fi
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"