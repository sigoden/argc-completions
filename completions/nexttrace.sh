#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Print help information
# @flag -4 --ipv4                                  Use IPv4 only
# @flag -6 --ipv6                                  Use IPv6 only
# @flag -T --tcp                                   Use TCP SYN for tracerouting (default port is 80)
# @flag -U --udp                                   Use UDP SYN for tracerouting (default port is 53)
# @flag -F --fast-trace                            One-Key Fast Trace to China ISPs
# @option -p --port <integer>                      Set the destination port to use.
# @option -q --queries <integer>                   Set the number of probes per each hop.
# @option --parallel-requests <integer>            Set ParallelRequests number.
# @option -m --max-hops <integer>                  Set the max number of hops (max TTL to be reached).
# @option -d --data-provider[`_choice_data_provider`]  Choose IP Geograph Data Provider [IP.SB, IPInfo, IPInsight, IP-API.com, Ip2region, IPInfoLocal, CHUNZHEN, disable-geoip].
# @option --pow-provider[api.leo.moe|sakura]       Choose PoW Provider [api.nxtrace.org, sakura] For China mainland users, please use sakura.
# @flag -n --no-rdns                               Do not resolve IP addresses to their domain names
# @flag -a --always-rdns                           Always resolve IP addresses to their domain names
# @flag -P --route-path                            Print traceroute hop path by ASN and location
# @flag -r --report                                output using report mode
# @flag --dn42                                     DN42 Mode
# @flag -o --output                                Write trace result to file (RealTimePrinter ONLY)
# @flag -t --table                                 Output trace results as table
# @flag --raw                                      An Output Easy to Parse
# @flag -j --json                                  Output trace results as JSON
# @flag -c --classic                               Classic Output trace results like BestTrace
# @option -f --first <integer>                     Start from the first_ttl hop (instead from 1).
# @flag -M --map                                   Disable Print Trace Map
# @flag -e --disable-mpls                          Disable MPLS
# @flag -v --version                               Print version info and exit
# @option -s --source <value>                      Use source src_addr for outgoing packets
# @option -D --dev[`_module_os_network_interface`]  Use the following Network Devices as the source address in outgoing packets
# @option -z --send-time <integer>                 Set how many [milliseconds] between sending each packet.. Useful when some routers use rate-limit for ICMP messages.
# @option -i --ttl-time <integer>                  Set how many [milliseconds] between sending packets groups by TTL.
# @option --timeout <integer>                      The number of [milliseconds] to keep probe sockets open before giving up on the connection.. Default: 1000
# @option --psize <integer>                        Set the packet size (payload size).
# @option --_positionalArg_nexttrace_32 <value>    IP Address or domain name
# @option --dot-server[dnssb|aliyun|dnspod|google|cloudflare]  Use DoT Server for DNS Parse
# @option -g --language[en|cn]                     Choose the language for displaying [en, cn].
# @flag --file                                     Read IP Address or domain name from file
# @flag -C --nocolor                               Disable Colorful Output

_choice_data_provider() {
    printf "%s\n" Ip2region ip2region IP.SB ip.sb IPInfo ipinfo IPInsight ipinsight \
        IPAPI.com ip-api.com IPInfoLocal ipinfolocal chunzhen LeoMoeAPI leomoeapi disable-geoip
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"