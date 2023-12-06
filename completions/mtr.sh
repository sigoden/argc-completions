#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -F --filename <FILE>          read hostname(s) from a file
# @flag -4                              use IPv4 only
# @flag -6                              use IPv6 only
# @flag -u --udp                        use UDP instead of ICMP echo
# @flag -T --tcp                        use TCP instead of ICMP echo
# @option -I --interface[`_module_os_network_interface`] <NAME>  use named network interface
# @option -a --address                  bind the outgoing socket to ADDRESS
# @option -f --first-ttl <NUMBER>       set what TTL to start
# @option -m --max-ttl <NUMBER>         maximum number of hops
# @option -U --max-unknown <NUMBER>     maximum unknown host
# @option -P --port                     target port number for TCP, SCTP, or UDP
# @option -L --localport                source port number for UDP
# @option -s --psize <PACKETSIZE>       set the packet size used for probing
# @option -B --bitpattern <NUMBER>      set bit pattern to use in payload
# @option -i --interval <SECONDS>       ICMP echo request interval
# @option -G --gracetime <SECONDS>      number of seconds to wait for responses
# @option -Q --tos <NUMBER>             type of service field in IP header
# @flag -e --mpls                       display information from ICMP extensions
# @option -Z --timeout <SECONDS>        seconds to keep probe sockets open
# @option -M --mark                     mark each sent packet
# @flag -r --report                     output using report mode
# @flag -w --report-wide                output wide report
# @option -c --report-cycles <COUNT>    set the number of pings sent
# @flag -j --json                       output json
# @flag -x --xml                        output xml
# @flag -C --csv                        output comma separated values
# @flag -l --raw                        output raw format
# @flag -p --split                      split output
# @flag -t --curses                     use curses terminal interface
# @option --displaymode[`_choice_displaymode`] <MODE>  select initial display mode
# @flag -g --gtk                        use GTK+ xwindow interface
# @flag -n --no-dns                     do not resolve host names
# @flag -b --show-ips                   show IP numbers and host names
# @option -o --order <FIELDS>           select output fields
# @option -y --ipinfo[`_choice_ipinfo`] <NUMBER>  select IP information in output
# @flag -z --aslookup                   display AS number
# @flag -h --help                       display this help and exit
# @flag -v --version                    output version information and exit
# @arg hostname[`_module_os_hostname`]

_choice_displaymode() {
    cat <<-'EOF'
0	selects statistics
1	selects the stripchart without latency information
2	selects the stripchart with latency information
EOF
}

_choice_ipinfo() {
    cat <<-'EOF'
0	Display AS number (equivalent to -z)
1	Display IP prefix
2	Display country code of the origin AS
3	Display RIR (ripencc, arin, ...)
4	Display the allocation date of the IP prefix
EOF
}

_module_os_hostname() {
    _etc_hosts() {
        if [[ -f "/etc/hosts" ]]; then
            cat /etc/hosts | sed -e '/^\s*#/ d' -e '/^\s*$/ d'
        elif command -v getent >/dev/null; then
            getent hosts 
        fi
    }
    _etc_hosts | sed -e '/^\s*\(127\.0\.\|ff0\|fe0\|::1\)/ d' -e 's/^\s*\S\+\s*\(\S\+\)$/\1/'

    if [[ -r ~/.ssh/config ]]; then
        cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
    fi
    if [[ -r ~/.ssh/known_hosts ]]; then
        cat ~/.ssh/known_hosts | \
        sed \
            -e '/^\s*[!*|@#]/ d' \
            -e 's/^\s*\(\S\+\).*/\1/' \
            -e 's/,/\n/' \
            -e 's/\[\(\S\+\)\].*/\1/' \

    fi
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"