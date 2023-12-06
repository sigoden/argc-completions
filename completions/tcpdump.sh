#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A                                      Print each packet (minus its link level header) in ASCII.
# @flag -b                                      Print the AS number in BGP packets in ASDOT notation rather than ASPLAIN notation.
# @option -B --buffer-size <buffer_size>        Set the operating system capture buffer size to buffer_size, in units of KiB (1024 bytes).
# @option -c <count>                            Exit after receiving count packets.
# @flag --count                                 Print only on stdout the packet count when reading capture file(s) instead of parsing/printing the packets.
# @option -C <file_size>                        Before writing a raw packet to a savefile, check whether the file is currently larger than file_size and, if so, close the current savefile and open a new one.
# @flag -d                                      Dump the compiled packet-matching code in a human readable form to standard output and stop.
# @flag -dd                                     Dump packet-matching code as a C program fragment.
# @flag -ddd                                    Dump packet-matching code as decimal numbers (preceded with a count).
# @flag -D --list-interfaces                    Print the list of the network interfaces available on the system and on which tcpdump can capture packets.
# @flag -e                                      Print the link-level header on each dump line.
# @flag -E                                      Use spi@ipaddr algo:secret for decrypting IPsec ESP packets that are addressed to addr and contain Security Parameter Index value spi.
# @flag -f                                      Print `foreign' IPv4 addresses numerically rather than symbolically (this option is intended to get around serious brain damage in Sun's NIS server — usually it hangs forever translating non-local internet numbers).
# @option -F <file>                             Use file as input for the filter expression.
# @option -G <rotate_seconds>                   If specified, rotates the dump file specified with the -w option every rotate_seconds seconds.
# @flag -h --help                               Print the tcpdump and libpcap version strings, print a usage message, and exit.
# @flag --version                               Print the tcpdump and libpcap version strings and exit.
# @flag -H                                      Attempt to detect 802.11s draft mesh headers.
# @option -i --interface[`_choice_tcp_interface`] <interface>  Listen, report the list of link-layer types, report the list of time stamp types, or report the results of compiling a filter expression on interface.
# @flag -I --monitor-mode                       Put the interface in "monitor mode"; this is supported only on IEEE 802.11 Wi-Fi interfaces, and supported only on some operating systems.
# @flag --immediate-mode                        Capture in "immediate mode".
# @option -j --time-stamp-type <tstamp_type>    Set the time stamp type for the capture to tstamp_type.
# @flag -J --list-time-stamp-types              List the supported time stamp types for the interface and exit.
# @option --time-stamp-precision <tstamp_precision>  When capturing, set the time stamp precision for the capture to tstamp_precision.
# @flag --micro                                 Shorthands for --time-stamp-precision=micro or --time-stamp-precision=nano, adjusting the time stamp precision accordingly.
# @flag --nano                                  Shorthands for --time-stamp-precision=micro or --time-stamp-precision=nano, adjusting the time stamp precision accordingly.
# @flag -K --dont-verify-checksums              Don't attempt to verify IP, TCP, or UDP checksums.
# @flag -l                                      Make stdout line buffered.
# @flag -L --list-data-link-types               List the known data link types for the interface, in the specified mode, and exit.
# @option -m <module>                           Load SMI MIB module definitions from file module.
# @option -M <secret>                           Use secret as a shared secret for validating the digests found in TCP segments with the TCP-MD5 option (RFC 2385), if present.
# @flag -n                                      Don't convert addresses (i.e., host addresses, port numbers, etc.) to names.
# @flag -N                                      Don't print domain name qualification of host names.
# @flag -# --number                             Print an optional packet number at the beginning of the line.
# @flag -O --no-optimize                        Do not run the packet-matching code optimizer.
# @flag -p --no-promiscuous-mode                Don't put the interface into promiscuous mode.
# @flag --print                                 Print parsed packet output, even if the raw packets are being saved to a file with the -w flag.
# @option -Q --direction <direction>            Choose send/receive direction direction for which packets should be captured.
# @flag -q                                      Quick (quiet?) output.
# @option -r <file>                             Read packets from file (which was created with the -w option or by other tools that write pcap or pcapng files).
# @flag -S --absolute-tcp-sequence-numbers      Print absolute, rather than relative, TCP sequence numbers.
# @option -s --snapshot-length <snaplen>        Snarf snaplen bytes of data from each packet rather than the default of 262144 bytes.
# @option -T <type>                             Force packets selected by "expression" to be interpreted the specified type.
# @flag -t                                      Don't print a timestamp on each dump line.
# @flag -tt                                     Print the timestamp, as seconds since January 1, 1970, 00:00:00, UTC, and fractions of a second since that time, on each dump line.
# @flag -ttt                                    Print a delta (microsecond or nanosecond resolution depending on the --time-stamp-precision option) between current and previous line on each dump line.
# @flag -tttt                                   Print a timestamp, as hours, minutes, seconds, and fractions of a second since midnight, preceded by the date, on each dump line.
# @flag -ttttt                                  Print a delta (microsecond or nanosecond resolution depending on the --time-stamp-precision option) between current and first line on each dump line.
# @flag -u                                      Print undecoded NFS handles.
# @flag -U --packet-buffered                    If the -w option is not specified, or if it is specified but the --print flag is also specified, make the printed packet output ``packet-buffered''; i.e., as the description of the contents of each packet is printed, it will be written to the standard output, rather than, when not writing to a terminal, being written only when the output buffer fills.
# @flag -v                                      When parsing and printing, produce (slightly more) verbose output.
# @flag -vv                                     Even more verbose output.
# @flag -vvv                                    Even more verbose output.
# @option -V <file>                             Read a list of filenames from file.
# @option -w <file>                             Write the raw packets to file rather than parsing and printing them out.
# @option -W <filecount>                        Used in conjunction with the -C option, this will limit the number of files created to the specified number, and begin overwriting files from the beginning, thus creating a 'rotating' buffer.
# @flag -x                                      When parsing and printing, in addition to printing the headers of each packet, print the data of each packet (minus its link level header) in hex.
# @flag -xx                                     When parsing and printing, in addition to printing the headers of each packet, print the data of each packet, including its link level header, in hex.
# @flag -X                                      When parsing and printing, in addition to printing the headers of each packet, print the data of each packet (minus its link level header) in hex and ASCII.
# @flag -XX                                     When parsing and printing, in addition to printing the headers of each packet, print the data of each packet, including its link level header, in hex and ASCII.
# @option -y --linktype <datalinktype>          Set the data link type to use while capturing packets (see -L) or just compiling and dumping packet-matching code (see -d) to datalinktype.
# @option -z <postrotate-command>               Used in conjunction with the -C or -G options, this will make tcpdump run " postrotate-command file " where file is the savefile being closed after each rotation.
# @option -Z --relinquish-privileges <user>     If tcpdump is running as root, after opening the capture device or input savefile, but before opening any savefiles for output, change the user ID to user and the group ID to the primary group of user.
# @arg expression

_choice_tcp_interface() {
    tcpdump --list-interfaces | sed -n 's/\.\(\S\+\)\s*\((\(.*\))\)\?.*$/\1\t\3/p'
}

command eval "$(argc --argc-eval "$0" "$@")"