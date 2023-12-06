#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -iL <inputfilename>                  Input from list of hosts/networks
# @option -iR <num hosts>                      Choose random targets
# @option --exclude*,[`_module_os_hostname`] <host1[,host2][,host3],>  Exclude hosts/networks
# @option --excludefile <exclude_file>         Exclude list from file
# @flag -n                                     Never do DNS resolution/Always resolve [default: sometimes]
# @flag -R                                     Never do DNS resolution/Always resolve [default: sometimes]
# @option --dns-servers*,[`_module_os_hostname`] <serv1[,serv2],>  Specify custom DNS servers
# @flag --system-dns                           Use OS's DNS resolver
# @flag --traceroute                           Trace hop path to each host
# @option --scanflags <flags>                  Customize TCP scan flags
# @option -b <FTP relay host>                  FTP bounce scan
# @option -p <port ranges>                     Only scan specified ports
# @option --exclude-ports <port ranges>        Exclude the specified ports from scanning
# @flag -F                                     Fast mode - Scan fewer ports than the default scan
# @flag -r                                     Scan ports sequentially - don't randomize
# @option --top-ports <number>                 Scan <number> most common ports
# @option --port-ratio <ratio>                 Scan ports more common than <ratio>
# @option --version-intensity <level>          Set from 0 (light) to 9 (try all probes)
# @flag --version-light                        Limit to most likely probes (intensity 2)
# @flag --version-all                          Try every single probe (intensity 9)
# @flag --version-trace                        Show detailed version scan activity (for debugging)
# @option --script*[`_choice_script`] <Lua scripts>  <Lua scripts> is a comma separated list of directories, script-files or script-categories
# @option --script-args <n1=v1,[n2=v2,...]>    provide arguments to scripts
# @option --script-args-file <filename>        provide NSE script args in a file
# @flag --script-trace                         Show all data sent and received
# @flag --script-updatedb                      Update the script database.
# @option --script-help[`_choice_script`] <Lua scripts>  Show help about scripts.
# @flag -O                                     Enable OS detection
# @flag --osscan-limit                         Limit OS detection to promising targets
# @flag --osscan-guess                         Guess OS more aggressively
# @option -T[`_choice_template`] <0-5>         Set timing template (higher is faster)
# @option --min-hostgroup <size>               Parallel host scan group sizes
# @option --max-hostgroup <size>               Parallel host scan group sizes
# @option --min-parallelism <numprobes>        Probe parallelization
# @option --max-parallelism <numprobes>        Probe parallelization
# @option --min-rtt-timeout <time>             Specifies
# @option --max-rtt-timeout <time>             Specifies
# @option --initial-rtt-timeout <time>         Specifies
# @option --max-retries <tries>                Caps number of port scan probe retransmissions.
# @option --host-timeout <time>                Give up on target after this long
# @option --scan-delay <time>                  Adjust delay between probes
# @option --max-scan-delay <time>              Adjust delay between probes
# @option --min-rate <number>                  Send packets no slower than <number> per second
# @option --max-rate <number>                  Send packets no faster than <number> per second
# @option -f --mtu <val>                       fragment packets (optionally w/given MTU)
# @option -D* <decoy1,decoy2[,ME],>            Cloak a scan with decoys
# @option -S <IP_Address>                      Spoof source address
# @option -e[`_module_os_network_interface`] <iface>  Use specified interface
# @option -g --source-port <portnum>           Use given port number
# @option --proxies* <url1,[url2],>            Relay connections through HTTP/SOCKS4 proxies
# @option --data <hex string>                  Append a custom payload to sent packets
# @option --data-string <string>               Append a custom ASCII string to sent packets
# @option --data-length <num>                  Append random data to sent packets
# @option --ip-options <options>               Send packets with specified ip options
# @option --ttl <val>                          Set IP time-to-live field
# @option --spoof-mac <mac address/prefix/vendor name>  Spoof your MAC address
# @flag --badsum                               Send packets with a bogus TCP/UDP/SCTP checksum
# @flag -v                                     Increase verbosity level (use -vv or more for greater effect)
# @flag -d                                     Increase debugging level (use -dd or more for greater effect)
# @flag --reason                               Display the reason a port is in a particular state
# @flag --open                                 Only show open (or possibly open) ports
# @flag --packet-trace                         Show all packets sent and received
# @flag --iflist                               Print host interfaces and routes (for debugging)
# @flag --append-output                        Append to rather than clobber specified output files
# @option --resume <filename>                  Resume an aborted scan
# @flag --noninteractive                       Disable runtime interactions via keyboard
# @option --stylesheet <path/URL>              XSL stylesheet to transform XML output to HTML
# @flag --webxml                               Reference stylesheet from Nmap.Org for more portable XML
# @flag --no-stylesheet                        Prevent associating of XSL stylesheet w/XML output
# @flag -6                                     Enable IPv6 scanning
# @flag -A                                     Enable OS detection, version detection, script scanning, and traceroute
# @option --datadir <dirname>                  Specify custom Nmap data file location
# @flag --send-eth                             Send using raw ethernet frames or IP packets
# @flag --send-ip                              Send using raw ethernet frames or IP packets
# @flag --privileged                           Assume that the user is fully privileged
# @flag --unprivileged                         Assume the user lacks raw socket privileges
# @flag -V                                     Print version number
# @flag -h                                     Print this help summary page.
# @option -o-[`_choice_output_format`]         Scan output format
# @option -s-[`_choice_scan`]                  Scan options
# @option -P-[`_choice_protocol`]              Protocol options
# @arg hosts*[`_module_os_hostname`]

_choice_script() {
    printf "%s\tCategory\n" all auth broadcast brute default discovery dos exploit external fuzzer intrusive malware safe version vuln
    nmap --script-help all 2> /dev/null | gawk '
    BEGIN { NUM = 0 split("", LINES) }
    { NUM += 1; LINES[NUM] = $0 }
    END {
        for (i = 1; i <= NUM; i++) {
            line = LINES[i]
            if (match(line, /^Categories:/)) {
                matchLine = i
                name = LINES[i-1]
                desc = ""
            } else if (i == matchLine + 1) {
            } else if (desc == "" && match(line, /  \S/)) {
                desc = line
                gsub(/(^\s+|\s+$)/, "", desc)
                print name "\t" desc
            }
        }
    }'
}

_choice_template() {
    values=( paranoid sneaky polite normal aggressive insane )
    length=${#values[@]}
    for (( i=0; i<$length; i++)); do
        echo -e "$i\t${values[$i]} timing"
    done
}

_choice_output_format() {
    cat <<-'EOF'
N	normal format
X	xml format
S	Script kiddie format
G	Grepable format
EOF
}

_choice_scan() {
    cat <<-'EOF'
L	List Scan - simply list targets to scan
n	Ping Scan - disable port scan
S	TCY SYNC scans
T	Connect scans
A	ACK scans
W	Window scans
M	Maimon scans
I	Idle scan
Y	SCTP INIT scans
Z	COOKIE-ECHO scans
O	IP protocol scan
V	Probe open ports to determine service/version info
C	equivalent to --script=default
EOF
}

_choice_protocol() {
  cat <<-'EOF'  
n	Treat all hosts as online -- skip host discovery
S	TCP SYNC discovery to given ports
A	ACK discovery to given ports
U	UDP discovery to given ports
Y	SCTP discovery to given ports
E	ICMP echo request discovery probes
P	timestamp request discovery probes
M	netmask request discovery probes
O	IP Protocol Ping
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