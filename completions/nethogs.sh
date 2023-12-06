#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V                                       prints version.
# @flag -h                                       prints this help.
# @flag -x                                       bughunt mode - implies tracemode.
# @option -d <secs>                              delay for update refresh rate in seconds.
# @option -v[`_choice_view_mode`] <view-mode>    view mode (0 = KB/s, 1 = total KB, 2 = total B, 3 = total MB, 4 = MB/s, 5 = GB/s).
# @option -c <num>                               number of updates.
# @flag -t                                       tracemode.
# @flag -p                                       sniff in promiscious mode (not recommended).
# @flag -s                                       sort output by sent column.
# @flag -l                                       display command line.
# @flag -a                                       monitor all devices, even loopback/stopped ones.
# @flag -C                                       capture TCP and UDP.
# @flag -g                                       garbage collection period in number of refresh.
# @flag -b                                       Short program name.
# @option -f <filter>                            EXPERIMENTAL: specify string pcap filter (like tcpdump).
# @flag -P                                       Show only processes.
# @arg device[`_module_os_network_interface`]

_choice_view_mode() {
    cat <<-'EOF'
0	KB/s
1	total KB
2	total B
3	total MB
4	MB/s
5	GB/s
EOF
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"