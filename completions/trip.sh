#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config-file <CONFIG_FILE>           Config file
# @option -m --mode                                Output mode [default: tui]
# @flag -u --unprivileged                          Trace without requiring elevated privileges on supported platforms [default: false]
# @option -p --protocol                            Tracing protocol [default: icmp]
# @flag --udp                                      Trace using the UDP protocol
# @flag --tcp                                      Trace using the TCP protocol
# @flag --icmp                                     Trace using the ICMP protocol
# @flag -4 --ipv4                                  Use IPv4 only
# @flag -6 --ipv6                                  Use IPv6 only
# @option -P --target-port <TARGET_PORT>           The target port (TCP & UDP only) [default: 80]
# @option -S --source-port <SOURCE_PORT>           The source port (TCP & UDP only) [default: auto]
# @option -A --source-address <SOURCE_ADDRESS>     The source IP address [default: auto]
# @option -I --interface                           The network interface [default: auto]
# @option -i --min-round-duration <MIN_ROUND_DURATION>  The minimum duration of every round [default: 1s]
# @option -T --max-round-duration <MAX_ROUND_DURATION>  The maximum duration of every round [default: 1s]
# @option -g --grace-duration <GRACE_DURATION>     The period of time to wait for additional ICMP responses after the target has responded [default: 100ms]
# @option --initial-sequence <INITIAL_SEQUENCE>    The initial sequence number [default: 33000]
# @option -R --multipath-strategy <MULTIPATH_STRATEGY>  The Equal-cost Multi-Path routing strategy (UDP only) [default: classic]
# @option -U --max-inflight <MAX_INFLIGHT>         The maximum number of in-flight ICMP echo requests [default: 24]
# @option -f --first-ttl <FIRST_TTL>               The TTL to start from [default: 1]
# @option -t --max-ttl <MAX_TTL>                   The maximum number of TTL hops [default: 64]
# @option --packet-size <PACKET_SIZE>              The size of IP packet to send (IP header + ICMP header + payload) [default: 84]
# @option --payload-pattern <PAYLOAD_PATTERN>      The repeating pattern in the payload of the ICMP packet [default: 0]
# @option -Q --tos                                 The TOS (i.e.
# @flag -e --icmp-extensions                       Parse ICMP extensions
# @option --read-timeout <READ_TIMEOUT>            The socket read timeout [default: 10ms]
# @option -r --dns-resolve-method <DNS_RESOLVE_METHOD>  How to perform DNS queries [default: system]
# @flag -y --dns-resolve-all                       Trace to all IPs resolved from DNS lookup [default: false]
# @option --dns-timeout <DNS_TIMEOUT>              The maximum time to wait to perform DNS queries [default: 5s]
# @flag -z --dns-lookup-as-info                    Lookup autonomous system (AS) information during DNS queries [default: false]
# @option -a --tui-address-mode <TUI_ADDRESS_MODE>  How to render addresses [default: host]
# @option --tui-as-mode <TUI_AS_MODE>              How to render AS information [default: asn]
# @option --tui-icmp-extension-mode <TUI_ICMP_EXTENSION_MODE>  How to render ICMP extensions [default: off]
# @option --tui-geoip-mode <TUI_GEOIP_MODE>        How to render GeoIp information [default: short]
# @option -M --tui-max-addrs <TUI_MAX_ADDRS>       The maximum number of addresses to show per hop [default: auto]
# @option -s --tui-max-samples <TUI_MAX_SAMPLES>   The maximum number of samples to record per hop [default: 256]
# @option --tui-max-flows <TUI_MAX_FLOWS>          The maximum number of flows to show [default: 64]
# @flag --tui-preserve-screen                      Preserve the screen on exit [default: false]
# @option --tui-refresh-rate <TUI_REFRESH_RATE>    The Tui refresh rate [default: 100ms]
# @option --tui-privacy-max-ttl <TUI_PRIVACY_MAX_TTL>  The maximum ttl of hops which will be masked for privacy [default: 0]
# @option --tui-theme-colors <TUI_THEME_COLORS>    The TUI theme colors [item=color,item=color,..]
# @flag --print-tui-theme-items                    Print all TUI theme items and exit
# @option --tui-key-bindings <TUI_KEY_BINDINGS>    The TUI key bindings [command=key,command=key,..]
# @flag --print-tui-binding-commands               Print all TUI commands that can be bound and exit
# @option -C --report-cycles <REPORT_CYCLES>       The number of report cycles to run [default: 10]
# @option -G --geoip-mmdb-file <GEOIP_MMDB_FILE>   The MaxMind City GeoLite2 mmdb file
# @option --generate[bash|elvish|fish|powershell|zsh]  Generate shell completion
# @flag --print-config-template                    Print a template toml config file and exit
# @option --log-format <LOG_FORMAT>                The debug log format [default: pretty]
# @option --log-filter <LOG_FILTER>                The debug log filter [default: trippy=debug]
# @option --log-span-events <LOG_SPAN_EVENTS>      The debug log format [default: off]
# @flag -v --verbose                               Enable verbose debug logging
# @flag -h --help                                  Print help (see a summary with '-h')
# @flag -V --version                               Print version
# @arg targets*                                    A space delimited list of hostnames and IPs to trace

command eval "$(argc --argc-eval "$0" "$@")"