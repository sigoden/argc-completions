#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -h                              display this message
# @flag -n                              don't do hostname lookups
# @flag -N                              don't convert port numbers to services
# @flag -p                              run in promiscuous mode (show traffic between other hosts on the same network segment)
# @flag -b                              don't display a bar graph of traffic
# @flag -B                              Display bandwidth in bytes
# @option -i[`_module_os_network_interface`] <interface>  listen on named interface
# @option -f <filter-code>              use filter code to select packets to count (default: none, but only IP packets are counted)
# @option -F <net/mask>                 show traffic flows in/out of IPv4 network
# @option -G <net6/mask6>               show traffic flows in/out of IPv6 network
# @flag -l                              display and count link-local IPv6 traffic (default: off)
# @flag -P                              show ports as well as hosts
# @option -m <limit>                    sets the upper limit for the bandwidth scale
# @option -c <config-file>              specifies an alternative configuration file
# @flag -t                              use text interface without ncurses
# @option -o[`_choice_order`] <type>    Sort order
# @option -s <num>                      print one single text output afer num seconds, then quit
# @option -L <num>                      number of lines to print

_choice_order() {
    cat <<-'EOF'
2s	Sort by first column (2s traffic average)
10s	Sort by second column (10s traffic average) [default]
40s	Sort by third column (40s traffic average)
source	Sort by source address
destination	Sort by destination address
EOF
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"