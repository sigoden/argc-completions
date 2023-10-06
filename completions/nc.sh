#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -4                             Use IPv4 addresses only.
# @flag -6                             Use IPv6 addresses only.
# @flag -b                             Allow broadcast.
# @flag -C                             Send CRLF as line-ending.
# @flag -D                             Enable debugging on the socket.
# @flag -d                             Do not attempt to read from stdin.
# @flag -F                             Pass the first connected socket using sendmsg(2) to stdout and exit.
# @flag -h                             Print out the nc help text and exit.
# @option -I <length>                  Specify the size of the TCP receive buffer.
# @option -i <interval>                Sleep for interval seconds between lines of text sent and received.
# @flag -k                             When a connection is completed, listen for another one.
# @flag -l                             Listen for an incoming connection rather than initiating a connection to a remote host.
# @option -M <ttl>                     Set the TTL / hop limit of outgoing packets.
# @option -m <minttl>                  Ask the kernel to drop incoming packets whose TTL / hop limit is under minttl.
# @flag -N                             shutdown(2) the network socket after EOF on the input.
# @flag -n                             Do not perform domain name resolution.
# @option -O <length>                  Specify the size of the TCP send buffer.
# @option -P <proxy_username>          Specifies a username to present to a proxy server that requires authentication.
# @option -p <source_port>             Specify the source port nc should use, subject to privilege restrictions and availability.
# @option -q <seconds>                 after EOF on stdin, wait the specified number of seconds and then quit.
# @flag -r                             Choose source and/or destination ports randomly instead of sequentially within a range or in the order that the system assigns them.
# @flag -S                             Enable the RFC 2385 TCP MD5 signature option.
# @option -s <sourceaddr>              Set the source address to send packets from, which is useful on machines with multiple interfaces.
# @option -T <keyword>                 Change the IPv4 TOS/IPv6 traffic class value.
# @flag -t                             Send RFC 854 DON'T and WON'T responses to RFC 854 DO and WILL requests.
# @flag -U                             Use UNIX-domain sockets.
# @flag -u                             Use UDP instead of TCP.
# @option -V <rtable>                  Set the routing table to be used.
# @flag -v                             Produce more verbose output.
# @option -W <recvlimit>               Terminate after receiving recvlimit packets from the network.
# @option -w <timeout>                 Connections which cannot be established or are idle timeout after timeout seconds.
# @option -X <proxy_protocol>          Use proxy_protocol when talking to the proxy server.
# @option -x <proxy_address[:port]>    Connect to destination using a proxy at proxy_address and port.
# @flag -Z                             DCCP mode.
# @flag -z                             Only scan for listening daemons, without sending any data to them.
# @arg destination
# @arg port

command eval "$(argc --argc-eval "$0" "$@")"