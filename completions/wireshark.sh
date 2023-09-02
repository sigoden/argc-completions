#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i --interface[`_module_os_network_interface`] <interface>  name or idx of interface (def: first non-loopback)
# @option -f <capture filter>                      packet filter in libpcap filter syntax
# @option -s --snapshot-length <snaplen>           packet snapshot length (def: appropriate maximum)
# @flag -p --no-promiscuous-mode                   don't capture in promiscuous mode
# @flag -k                                         start capturing immediately (def: do nothing)
# @flag -S                                         update packet display when new packets are captured
# @flag -l                                         turn on automatic scrolling while -S is in use
# @flag -I --monitor-mode                          capture in monitor mode, if available
# @option -B --buffer-size <buffer size>           size of kernel buffer (def: 2MB)
# @option -y --linktype <link type>                link layer type (def: first appropriate)
# @option --time-stamp-type <type>                 timestamp method for interface
# @flag -D --list-interfaces                       print list of interfaces and exit
# @flag -L --list-data-link-types                  print list of link-layer types of iface and exit
# @flag --list-time-stamp-types                    print list of timestamp types for iface and exit
# @option -c <packet count>                        stop after n packets (def: infinite)
# @option -a --autostop*[`_choice_autostop`] <autostop cond.>  duration:NUM - stop after NUM seconds
# @option -b --ring-buffer*[`_choice_ring_buffer`] <ringbuffer opt.>  duration:NUM - switch to next file after NUM secs
# @option -r --read-file <infile>                  set the filename to read from (no pipes or stdin!)
# @option -R --read-filter <read filter>           packet filter in Wireshark display filter syntax
# @flag -n                                         disable all name resolutions (def: all enabled)
# @option -N <name resolve flags>                  enable specific name resolution(s): "mnNtdv"
# @option -d*[`_choice_decode`] <<layer_type>==<selector>,<decode_as_protocol>>  "Decode As", see the man page for details Example: tcp.port==8888,http
# @option --enable-protocol[`_choice_protocol`] <proto_name>  enable dissection of proto_name
# @option --disable-protocol[`_choice_protocol`] <proto_name>  disable dissection of proto_name
# @option --enable-heuristic <short_name>          enable dissection of heuristic protocol
# @option --disable-heuristic <short_name>         disable dissection of heuristic protocol
# @option -C <config profile>                      start with specified configuration profile
# @flag -H                                         hide the capture info dialog during packet capture
# @option -Y --display-filter <display filter>     start with the given display filter
# @option -g <packet number>                       go to specified packet number after "-r"
# @option -J <jump filter>                         jump to the first packet matching the (display) filter
# @flag -j                                         search backwards for a matching packet after "-J"
# @option -t[a|ad|adoy|d|dd|e|r|u|ud|udoy] <value>  format of time stamps (def: r: rel.
# @option -u[s|hms] <value>                        output format of seconds (def: s: seconds)
# @option -X <<key>:<value>>                       eXtension options, see man page for details
# @option -z*,[`_choice_statistic`] <statistics>   show various statistics, see man page for details
# @option -w <outfile|->                           set the output filename (or '-' for stdout)
# @option --capture-comment <comment>              add a capture file comment, if supported
# @option --log-level <level>                      sets the active log level ("critical", "warning", etc.)
# @option --log-fatal <level>                      sets level to abort the program ("critical" or "warning")
# @option --log-domains <[!]list>                  comma separated list of the active log domains
# @option --log-debug <[!]list>                    comma separated list of domains with "debug" level
# @option --log-noisy <[!]list>                    comma separated list of domains with "noisy" level
# @option --log-file <path>                        file to output messages to (in addition to stderr)
# @flag -h --help                                  display this help and exit
# @flag -v --version                               display version info and exit
# @option -P[`_choice_persconf`] <<key>:<path>>    persconf:path - personal configuration files persdata:path - personal data files
# @option -o* <<name>:<value>>                     override preference or recent setting
# @option -K <keytab-file>                         keytab file to use for kerberos decryption
# @option --display <X display>                    X display to use
# @flag --fullscreen                               start Wireshark in full screen
# @arg infile

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_autostop() {
    _argc_util_comp_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        cat <<-'EOF' | _argc_util_transform suffix=: nospace
duration	stop after NUM seconds
filesize	stop this file after NUM KB
files	stop after NUM files
packets	stop after NUM packets
EOF
        return
    fi
}

_choice_ring_buffer() {
    _argc_util_comp_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        cat <<-'EOF' | _argc_util_transform suffix=: nospace
duration	switch to next file after NUM secs
filesize	switch to next file after NUM KB
files	ringbuffer: replace after NUM files
packets	switch to next file after NUM packets
interval	switch to next file when the time is an exact multiple of NUM secs
EOF
        return
    fi
}

_choice_decode() {
    _argc_util_mode_kv ==
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_selector | _argc_util_transform suffix=== nospace
        return
    else
        _argc_util_mode_parts , "$argc__kv_filter" "$argc__kv_prefix"
        if [[ "$argc__parts_len" -lt 2 ]]; then
            return
        else
            _choice_protocol
        fi
    fi
}

_choice_protocol() {
    tshark -G protocols | gawk -F'\t' '{if (NF>2) {value=$3} else {value=$2}; print value "\t" $1}'
}

_choice_statistic() {
    tshark -z help 2>&1 | tail -n +2 
}

_choice_persconf() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s:\0\n" persconf persdata
        return
    fi
    _argc_util_comp_path
}

_choice_selector() {
    tshark -d . 2>&1 | sed -n 's/\t\(\S\+\) \(.*\)/\1\t\2/p'
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"