#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i --interface[`_module_os_network_interface`] <interface>  name or idx of interface (def: first non-loopback)
# @option -f <capture filter>                     packet filter in libpcap filter syntax
# @option -s --snapshot-length <snaplen>          packet snapshot length (def: appropriate maximum)
# @flag -p --no-promiscuous-mode                  don't capture in promiscuous mode
# @flag -I --monitor-mode                         capture in monitor mode, if available
# @option -B --buffer-size <buffer size>          size of kernel buffer (def: 2MB)
# @option -y --linktype[`_choice_linktype`] <link type>  link layer type (def: first appropriate)
# @option --time-stamp-type <type>                timestamp method for interface
# @flag -D --list-interfaces                      print list of interfaces and exit
# @flag -L --list-data-link-types                 print list of link-layer types of iface and exit
# @flag --list-time-stamp-types                   print list of timestamp types for iface and exit
# @flag --update-interval                         interval between updates with new packets (def: 100ms)
# @option -c <packet count>                       stop after n packets (def: infinite)
# @option -a --autostop*[`_choice_autostop`] <autostop cond.>  duration:NUM - stop after NUM seconds
# @option -b --ring-buffer*[`_choice_ring_buffer`] <ringbuffer opt.>  duration:NUM - switch to next file after NUM secs
# @option -r --read-file <file>                   set the filename to read from (or '-' for stdin)
# @flag -2                                        perform a two-pass analysis
# @option -M <packet count>                       perform session auto reset
# @option -R --read-filter <read filter>          packet Read filter in Wireshark display filter syntax (requires -2)
# @option -Y --display-filter <display filter>    packet displaY filter in Wireshark display filter syntax
# @flag -n                                        disable all name resolutions (def: "mNd" enabled, or as set in preferences)
# @option -N <name resolve flags>                 enable specific name resolution(s): "mnNtdv"
# @option -d*[`_choice_decode`] <<layer_type>==<selector>,<decode_as_protocol>>  "Decode As", see the man page for details Example: tcp.port==8888,http
# @option -H <hosts file>                         read a list of entries from a hosts file, which will then be written to a capture file.
# @option --enable-protocol[`_choice_protocol`] <proto_name>  enable dissection of proto_name
# @option --disable-protocol[`_choice_protocol`] <proto_name>  disable dissection of proto_name
# @option --only-protocols <protocols>            Only enable dissection of these protocols, comma separated.
# @flag --disable-all-protocols                   Disable dissection of all protocols
# @option --enable-heuristic <short_name>         enable dissection of heuristic protocol
# @option --disable-heuristic <short_name>        disable dissection of heuristic protocol
# @option -w <outfile|->                          write packets to a pcapng-format file named "outfile" (or '-' for stdout)
# @option --capture-comment <comment>             add a capture file comment, if supported
# @option -C <config profile>                     start with specified configuration profile
# @option -F[`_choice_file_type`] <output file type>  set the output file type, default is pcapng an empty "-F" option will list the file types
# @flag -V                                        add output of packet tree  (Packet Details)
# @option -O <protocols>                          Only show packet details of these protocols, comma separated
# @flag -P --print                                print packet summary even when writing to a file
# @option -S <separator>                          the line separator to print between packets
# @flag -x                                        add output of hex and ASCII dump (Packet Bytes)
# @option --hexdump <hexoption>                   add hexdump, set options for data source and ASCII dump
# @option -T <pdml|ps|psml|json|jsonraw|ek|tabs|text|fields|?>  format of text output (def: text)
# @option -j <protocolfilter>                     protocols layers filter if -T ek|pdml|json selected (e.g. "ip ip.flags text", filter does not expand child nodes, unless child is specified also in the filter)
# @option -J <protocolfilter>                     top level protocol filter if -T ek|pdml|json selected (e.g. "http tcp", filter which expands all child nodes)
# @option -e <field>                              field to print if -Tfields selected (e.g. tcp.port, _ws.col.info) this option can be repeated to print multiple fields
# @option -E[`_choice_output_option`] <<fieldsoption>=<value>>  set options for output when -Tfields selected: aggregator
# @option -t <(a|ad|adoy|d|dd|e|r|u|ud|udoy)[.[N]]|.[N]>  output format of time stamps (def: r: rel.
# @option -u <s|hms>                              output format of seconds (def: s: seconds)
# @flag -l                                        flush standard output after each packet
# @flag -q                                        be more quiet on stdout (e.g. when using statistics)
# @flag -Q                                        only log true errors to stderr (quieter than -q)
# @flag -g                                        enable group read access on the output file(s)
# @option -W <n>                                  Save extra information in the file, if supported.
# @option -X[`_choice_extension_option`] <<key>:<value>>  eXtension options, see the man page for details
# @option -U <tap_name>                           PDUs export mode, see the man page for details
# @option -z*,[`_choice_statistic`] <statistics>  various statistics, see the man page for details
# @option --export-objects[`_choice_export_objects`] <<protocol>,<destdir>>  save exported objects for a protocol to a directory named "destdir"
# @option --export-tls-session-keys <keyfile>     export TLS Session Keys to a file named "keyfile"
# @flag --color                                   color output text similarly to the Wireshark GUI, requires a terminal with 24-bit color support Also supplies color attributes to pdml and psml formats (Note that attributes are nonstandard)
# @flag --no-duplicate-keys                       If -T json is specified, merge duplicate keys in an object into a single key with as value a json array containing all values
# @option --elastic-mapping-filter*,[`_choice_protocol`] <protocols>  If -G elastic-mapping is specified, put only the specified protocols within the mapping file
# @option --temp-dir <directory>                  write temporary files to this directory (default: /tmp)
# @option --log-level <level>                     sets the active log level ("critical", "warning", etc.)
# @option --log-fatal <level>                     sets level to abort the program ("critical" or "warning")
# @option --log-domains <[!]list>                 comma-separated list of the active log domains
# @option --log-fatal-domains <list>              list of domains that cause the program to abort
# @option --log-debug <[!]list>                   list of domains with "debug" level
# @option --log-noisy <[!]list>                   list of domains with "noisy" level
# @option --log-file <path>                       file to output messages to (in addition to stderr)
# @flag -h --help                                 display this help and exit
# @flag -v --version                              display version info and exit
# @option -o* <<name>:<value>>                    override preference setting
# @option -K <file>                               keytab file to use for kerberos decryption
# @option -G[`_choice_report`] <report>           dump one of several available reports and exit default report="fields" use "-G help" for more help

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_linktype() {
    tshark $(_argc_util_param_select_options --network) -L 2>/dev/null | \
    sed -n 's/^  \(\S\+\) (\(.*\))$/\1 \t\2/p'
}

_choice_autostop() {
    cat <<-'EOF' | sed 's/:/:\x00\t/'
duration:stop after NUM seconds
filesize:stop this file after NUM KB
files:stop after NUM files
packets:stop after NUM packets
EOF
}

_choice_ring_buffer() {
    cat <<-'EOF' | sed 's/:/:\x00\t/'
duration:switch to next file after NUM secs
filesize:switch to next file after NUM KB
files:ringbuffer: replace after NUM files
packets:switch to next file after NUM packets
interval:switch to next file when the time is an exact multiple of NUM secs
EOF
}

_choice_decode() {
    _argc_util_comp_kv ==
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_selector | _argc_util_transform suffix=== nospace
    else
        _argc_util_mode_parts , "$argc__kv_filter"  "$argc__kv_prefix"
        if [[ -n "$argc__parts_local_prefix" ]]; then
            _choice_protocol
        fi
    fi
}

_choice_protocol() {
    tshark -G protocols | gawk -F'\t' '{if (NF>2) {value=$3} else {value=$2}; print value "\t" $1}'
}

_choice_file_type() {
    tshark -F 2>&1  | sed -e 's/    \(\S\+\) - /\1\t/p'
}

_choice_output_option() {
    cat <<-'EOF' | _argc_util_comp_kv =
bom=y,n;;print a UTF-8 BOM
header=y,n;;switch headers on and off
separator=/t,/s;;select tab, space, printable character as separator
occurrence=f,l,a;;print first, last or all occurrences of each field
aggregator=/s;;select comma, space, printable character as aggregator
quote=d,s,n;;select double, single, no quotes for values
EOF
}

_choice_extension_option() {
    cat <<-'EOF' | _argc_util_comp_kv :
lua_script=__argc_value=file;;tells TShark to load the given script in addition to the default
read_format=`_choice_read_format`;;tells TShark to use the given file format to read in the file
EOF
}

_choice_statistic() {
    tshark -z help 2>&1 | tail -n +2 
}

_choice_export_objects() {
    printf "%s,\x00\n" dicom http imf smb tftp
}

_choice_report() {
    tshark -G help | sed -n '/^\s*-G/ s/^\s*-G \(\S\+\)\s*\(.*\)/\1\t\2/p'
}

_choice_read_format() {
    tshark -X read_format: 2>&1 | tail -n +3 | sed -e 's/ - /\t/' -e 's/^\s*//'
}

_choice_selector() {
    tshark -d . 2>&1 | sed -n 's/\t\(\S\+\) \(.*\)/\1\t\2/p'
}

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"