#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help               Show summary of options.
# @flag -V --version            Output version information.
# @flag -H --no-header          Suppress header line.
# @flag -O --oneline            Print each socket's data on a single line.
# @flag -n --numeric            Do not try to resolve service names.
# @flag -r --resolve            Try to resolve numeric address/ports.
# @flag -a --all                Display both listening and non-listening (for TCP this means established connections) sockets.
# @flag -l --listening          Display only listening sockets (these are omitted by default).
# @flag -o --options            Show timer information.
# @flag -e --extended           Show detailed socket information.
# @flag -m --memory             Show socket memory usage.
# @flag -p --processes          Show process using socket.
# @flag -i --info               Show internal TCP information.
# @flag --tos                   Show ToS and priority information.
# @flag --cgroup                Show cgroup information.
# @flag -K --kill               Attempts to forcibly close sockets.
# @flag -s --summary            Print summary statistics.
# @flag -E --events             Continually display sockets as they are destroyed
# @flag -Z --context            As the -p option but also shows process security context.
# @flag -z --contexts           As the -Z option but also shows the socket context.
# @option -N --net <NSNAME>     Switch to the specified network namespace name.
# @flag -b --bpf                Show socket classic BPF filters (only administrators are allowed to get these information).
# @flag -4 --ipv4               Display only IP version 4 sockets (alias for -f inet).
# @flag -6 --ipv6               Display only IP version 6 sockets (alias for -f inet6).
# @flag -0 --packet             Display PACKET sockets (alias for -f link).
# @flag -t --tcp                Display TCP sockets.
# @flag -u --udp                Display UDP sockets.
# @flag -d --dccp               Display DCCP sockets.
# @flag -w --raw                Display RAW sockets.
# @flag -x --unix               Display Unix domain sockets (alias for -f unix).
# @flag -S --sctp               Display SCTP sockets.
# @flag --vsock                 Display vsock sockets (alias for -f vsock).
# @flag --xdp                   Display XDP sockets (alias for -f xdp).
# @flag --inet-sockopt          Display inet socket options.
# @option -f --family[unix|inet|inet6|link|netlink|vsock|xdp]  Display sockets of type FAMILY.
# @option -A <QUERY>            List of socket tables to dump, separated by commas.
# @option --query <QUERY>       List of socket tables to dump, separated by commas.
# @option --socket <QUERY>      List of socket tables to dump, separated by commas.
# @option -D --diag <FILE>      Do not display anything, just dump raw information about TCP sockets to FILE after applying filters.
# @option -F --filter <FILE>    Read filter information from FILE.
# @arg filter

command eval "$(argc --argc-eval "$0" "$@")"