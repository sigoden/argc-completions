#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -h            Display help/usage information.
# @flag -N            Show sub-protocol number along with single-character identifier (useful when observing raw or unknown protocols).
# @flag -X            Treat the match expression as a hexadecimal string.
# @flag -V            Display version information.
# @flag -i            Ignore case for the regex expression.
# @flag -w            Match the regex expression as a word.
# @flag -q            Be quiet; don't output any information other than packet headers and their payloads (if relevant).
# @flag -p            Don't put the interface into promiscuous mode.
# @flag -e            Show empty packets.
# @flag -v            Invert the match; only display packets that don't match.
# @flag -x            Dump packet contents as hexadecimal as well as ASCII.
# @flag -l            Make stdout line buffered.
# @flag -D            When reading pcap_dump files, replay them at their recorded time intervals (mimic realtime).
# @flag -t            Print a timestamp in the form of YYYY/MM/DD HH:MM:SS.UUUUUU everytime a packet is matched.
# @flag -T            Print a timestamp in the form of +S.UUUUUU, indicating the delta between packet matches.
# @flag -R            Do not try to drop privileges to the DROPPRIVS_USER.
# @flag -c            cols Explicitly set the console width to ``cols''.
# @flag -F            file Read in the bpf filter from the specified filename.
# @flag -P            char Specify an alternate character to signify non-printable characters when displayed.
# @option -K <num>    Kill matching TCP connections (like tcpkill).
# @flag -W            normal|byline|single|none Specify an alternate manner for displaying packets, when not in hexadecimal mode.
# @flag -s            snaplen Set the bpf caplen to snaplen (default 65536).
# @flag -S            limitlen Set the upper limit on the size of packets that ngrep will look at.
# @flag -I            pcap_dump Input file pcap_dump into ngrep.
# @flag -O            pcap_dump Output matched packets to a pcap-compatible dump file.
# @option -n <num>    Match only num packets total, then exit.
# @option -d[`_module_os_network_interface`] <dev>  By default ngrep will select a default interface to listen on.
# @option -A <num>    Dump num packets of trailing context after matching a packet.
# @arg match-expression! <match expression>
# @arg bpf-filter! <bpf filter>

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"