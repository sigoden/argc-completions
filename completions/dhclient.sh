#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -4                                 Use the DHCPv4 protocol to obtain an IPv4 address and configuration parameters.
# @flag -6                                 Use the DHCPv6 protocol to obtain whatever IPv6 addresses are available along with configuration parameters.
# @option -4o6 <port>                      Participate in the DHCPv4 over DHCPv6 protocol specified by RFC 7341.
# @flag -1                                 Try to get a lease once.
# @flag -d                                 Force dhclient to run as a foreground process.
# @flag -nw                                Become a daemon immediately (nowait) rather than waiting until an IP address has been acquired.
# @flag -q                                 Be quiet at startup, this is the default.
# @flag -v                                 Enable verbose log messages.
# @flag -w                                 Continue running even if no broadcast interfaces were found.
# @flag -n                                 Do not configure any interfaces.
# @option -e <VAR=value>                   Define additional environment variables for the environment where dhclient-script executes.
# @flag -r                                 Release the current lease and stop the running DHCP client as previously recorded in the PID file.
# @flag -x                                 Stop the running DHCP client without releasing the current lease.
# @option -p <port-number>                 The UDP port number on which the DHCP client should listen and transmit.
# @option -s <server-addr>                 Specify the server IP address or fully qualified domain name to use as a destination for DHCP protocol messages before dhclient has acquired an IP address.
# @option -g <relay>                       Set the giaddr field of all packets to the relay IP address simulating a relay agent.
# @flag -i                                 Use a DUID with DHCPv4 clients.
# @flag -I                                 Use the standard DDNS scheme from RFCs 4701 & 4702.
# @option --decline-wait-time <seconds>    Specify the time (in seconds) that an IPv4 client should wait after declining an address before issuing a discover.
# @flag --version                          Print version number and exit.
# @flag -S                                 Use Information-request to get only stateless configuration parameters (i.e., without address).
# @flag -T                                 Ask for IPv6 temporary addresses, one set per -T flag.
# @flag -P                                 Enable IPv6 prefix delegation.
# @flag -R                                 Require that responses include all of the items requested by any -N, -T, or -P options.
# @flag -D                                 LL or LLT Override the default when selecting the type of DUID to use.
# @flag -N                                 Restore normal address query for IPv6.
# @option --address-prefix-len <length>    Specify the length of the prefix for IPv6 addresses.
# @option --dad-wait-time <seconds>        Specify maximum time (in seconds) that the client should wait for the duplicate address detection (DAD) to complete on an interface.
# @option --prefix-len-hint <length>       When used in conjunction with -P, it directs the client to use the given length to use a prefix hint of, "::/length", when requesting new prefixes.
# @option -cf <config-file>                Path to the client configuration file.
# @option -df <duid-lease-file>            Path to a secondary lease file.
# @option -lf <lease-file>                 Path to the lease database file.
# @option -pf <pid-file>                   Path to the process ID file.
# @flag --no-pid                           Option to disable writing pid files.
# @option -sf <script-file>                Path to the network configuration script invoked by dhclient when it gets a lease.
# @arg ifaces*[`_module_os_network_interface`]

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"