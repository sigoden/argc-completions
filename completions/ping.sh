#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a                                use audible ping
# @flag -A                                use adaptive ping
# @flag -B                                sticky source address
# @option -c <count>                      stop after <count> replies
# @flag -D                                print timestamps
# @flag -d                                use SO_DEBUG socket option
# @flag -f                                flood ping
# @flag -h                                print help and exit
# @option -I <interface>                  either interface name or address
# @option -i <interval>                   seconds between sending each packet
# @flag -L                                suppress loopback of multicast packets
# @option -l <preload>                    send <preload> number of packages while waiting replies
# @option -m <mark>                       tag the packets going out
# @option -M[do|dont|want] <pmtud opt>    define mtu discovery, can be one of <do|dont|want>
# @flag -n                                no dns name resolution
# @flag -O                                report outstanding replies
# @option -p <pattern>                    contents of padding byte
# @flag -q                                quiet output
# @option -Q <tclass>                     use quality of service <tclass> bits
# @option -s <size>                       use <size> as number of data bytes to be sent
# @option -S <size>                       use <size> as SO_SNDBUF socket option value
# @option -t <ttl>                        define time to live
# @flag -U                                print user-to-user latency
# @flag -v                                verbose output
# @flag -V                                print version and exit
# @option -w <deadline>                   reply wait <deadline> in seconds
# @option -W <timeout>                    time to wait for response
# @flag -4                                use IPv4
# @flag -b                                allow pinging broadcast
# @flag -R                                record route
# @option -T <timestamp>                  define timestamp, can be one of <tsonly|tsandaddr|tsprespec>
# @flag -6                                use IPv6
# @option -F <flowlabel>                  define flow label, default is random
# @option -N <nodeinfo opt>               use icmp6 node info query, try <help> as argument
# @arg destination!

command eval "$(argc --argc-eval "$0" "$@")"