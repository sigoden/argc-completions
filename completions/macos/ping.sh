#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A                       Audible.
# @flag -a                       Audible.
# @option -b <boundif>           Bind the socket to interface boundif for sending.
# @flag -C                       Prohibit the socket from using the cellular network interface.
# @option -c <count>             Stop after sending (and receiving) count ECHO_RESPONSE packets.
# @flag -D                       Set the Don't Fragment bit.
# @flag -d                       Set the SO_DEBUG option on the socket being used.
# @flag -f                       Flood ping.
# @option -G <sweepmaxsize>      Specify the maximum size of ICMP payload when sending sweeping pings.
# @option -g <sweepminsize>      Specify the size of ICMP payload to start with when sending sweeping pings.
# @option -h <sweepincrsize>     Specify the number of bytes to increment the size of ICMP payload after each sweep when sending sweeping pings.
# @option -I <iface>             Source multicast packets with the given interface address.
# @option -i <wait>              Wait wait seconds between sending each packet.
# @option -k <trafficclass>      Specifies the traffic class to use for sending ICMP packets.
# @option -K <netservicetype>    Specifies the network service type to use for sending ICMP packets.
# @flag -L                       Suppress loopback of multicast packets.
# @option -l <preload>           If preload is specified, ping sends that many packets as fast as possible before falling into its normal mode of behavior.
# @flag -M                       mask | time Use ICMP_MASKREQ or ICMP_TSTAMP instead of ICMP_ECHO.
# @option -m <ttl>               Set the IP Time To Live for outgoing packets.
# @flag -n                       Numeric output only.
# @flag -o                       Exit successfully after receiving one reply packet.
# @option -P <policy>            policy specifies IPsec policy for the ping session.
# @option -p <pattern>           You may specify up to 16 “pad” bytes to fill out the packet you send.
# @flag -Q                       Somewhat quiet output.
# @flag -q                       Quiet output.
# @flag -R                       Record route.
# @flag -r                       Bypass the normal routing tables and send directly to a host on an attached network.
# @option -S <src_addr>          Use the following IP address as the source address in outgoing packets.
# @option -s <packetsize>        Specify the number of data bytes to be sent.
# @option -T <ttl>               Set the IP Time To Live for multicasted packets.
# @option -t <timeout>           Specify a timeout, in seconds, before ping exits regardless of how many packets have been received.
# @flag -v                       Verbose output.
# @option -W <waittime>          Time in milliseconds to wait for a reply for each packet sent.
# @option -z <tos>               Use the specified type of service.
# @flag --apple-connect          Connects the socket to the destination address.
# @flag --apple-time             Prints the time a packet was received.
# @arg host

command eval "$(argc --argc-eval "$0" "$@")"