#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --listen-address <ipaddr>             Specify local address(es) to listen on.
# @option -A --address </<domain>/<ipaddr>>        Return ipaddr for all hosts in specified domains.
# @flag -b --bogus-priv                            Fake reverse lookups for RFC1918 private address ranges.
# @option -B --bogus-nxdomain <ipaddr>             Treat ipaddr as NXDOMAIN (defeats Verisign wildcard).
# @option -c --cache-size <integer>                Specify the size of the cache in entries (defaults to 150).
# @option -C --conf-file <path>                    Specify configuration file (defaults to /etc/dnsmasq.conf).
# @flag -d --no-daemon                             Do NOT fork into the background: run in debug mode.
# @flag -D --domain-needed                         Do NOT forward queries with no domain part.
# @flag -e --selfmx                                Return self-pointing MX records for local hosts.
# @flag -E --expand-hosts                          Expand simple names in /etc/hosts with domain-suffix.
# @flag -f --filterwin2k                           Don't forward spurious DNS requests from Windows hosts.
# @option -F --dhcp-range* <<ipaddr>,>             Enable DHCP in the range given with lease duration.
# @option -g --group[`_module_os_group`] <groupname>  Change to this group after startup (defaults to dip).
# @option -G --dhcp-host <hostspec>                Set address or hostname for a specified machine.
# @option --dhcp-hostsfile <path>                  Read DHCP host specs from file.
# @option --dhcp-optsfile <path>                   Read DHCP option specs from file.
# @option --dhcp-hostsdir <path>                   Read DHCP host specs from a directory.
# @option --dhcp-optsdir <path>                    Read DHCP options from a directory.
# @option --tag-if <tag-expression>                Evaluate conditional tag expression.
# @flag -h --no-hosts                              Do NOT load /etc/hosts file.
# @option -H --addn-hosts <path>                   Specify a hosts file to be read in addition to /etc/hosts.
# @option --hostsdir <path>                        Read hosts files from a directory.
# @option -i --interface[`_choice_net_device`] <interface>  Specify interface(s) to listen on.
# @option -I --except-interface[`_choice_net_device`] <interface>  Specify interface(s) NOT to listen on.
# @option -j --dhcp-userclass <set:<tag>,<class>>  Map DHCP user class to tag.
# @option --dhcp-circuitid <set:<tag>,<circuit>>   Map RFC3046 circuit-id to tag.
# @option --dhcp-remoteid <set:<tag>,<remote>>     Map RFC3046 remote-id to tag.
# @option --dhcp-subscrid <set:<tag>,<remote>>     Map RFC3993 subscriber-id to tag.
# @option --dhcp-pxe-vendor <<vendor>[,...]>       Specify vendor class to match for PXE requests.
# @option -J --dhcp-ignore* <tag:<tag>>            Don't do DHCP for hosts with tag set.
# @option --dhcp-broadcast <tag:<tag>...>          Force broadcast replies for hosts with tag set.
# @flag -k --keep-in-foreground                    Do NOT fork into the background, do NOT run in debug mode.
# @flag -K --dhcp-authoritative                    Assume we are the only DHCP server on the local network.
# @option -l --dhcp-leasefile <path>               Specify where to store DHCP leases (defaults to /var/lib/misc/dnsmasq.leases).
# @flag -L --localmx                               Return MX records for local hosts.
# @option -m --mx-host <<host_name>,<target>,<pref>>  Specify an MX record.
# @option -M --dhcp-boot <bootp opts>              Specify BOOTP options to DHCP server.
# @flag -n --no-poll                               Do NOT poll /etc/resolv.conf file, reload only on SIGHUP.
# @flag -N --no-negcache                           Do NOT cache failed search results.
# @flag -o --strict-order                          Use nameservers strictly in the order given in /etc/resolv.conf.
# @option -O --dhcp-option <optspec>               Specify options to be sent to DHCP clients.
# @option --dhcp-option-force <optspec>            DHCP option sent even if the client does not request it.
# @option -p --port <integer>                      Specify port to listen for DNS requests on (defaults to 53).
# @option -P --edns-packet-max <integer>           Maximum supported UDP packet size for EDNS.0 (defaults to 1232).
# @flag -q --log-queries                           Log DNS queries.
# @option -Q --query-port <integer>                Force the originating port for upstream DNS queries.
# @flag -R --no-resolv                             Do NOT read resolv.conf.
# @option -r --resolv-file <path>                  Specify path to resolv.conf (defaults to /etc/resolv.conf).
# @option --servers-file <path>                    Specify path to file with server= options
# @option -S --server </<domain>/<ipaddr>>         Specify address(es) of upstream servers with optional domains.
# @option --rev-server <<addr>/<prefix>,<ipaddr>>  Specify address of upstream servers for reverse address queries
# @option --local </<domain>/>                     Never forward queries to specified domains.
# @option -s --domain <<domain>[,<range>]>         Specify the domain to be assigned in DHCP leases.
# @option -t --mx-target <host_name>               Specify default target in an MX record.
# @option -T --local-ttl <integer>                 Specify time-to-live in seconds for replies from /etc/hosts.
# @option --neg-ttl <integer>                      Specify time-to-live in seconds for negative caching.
# @option --max-ttl <integer>                      Specify time-to-live in seconds for maximum TTL to send to clients.
# @option --max-cache-ttl <integer>                Specify time-to-live ceiling for cache.
# @option --min-cache-ttl <integer>                Specify time-to-live floor for cache.
# @option -u --user[`_module_os_user`] <username>  Change to this user after startup.
# @option -U --dhcp-vendorclass <set:<tag>,<class>>  Map DHCP vendor class to tag.
# @flag -v --version                               Display dnsmasq version and copyright information.
# @option -V --alias <<ipaddr>,<ipaddr>,<netmask>>  Translate IPv4 addresses from upstream servers.
# @option -W --srv-host* <<name>,<target>,>        Specify a SRV record.
# @flag -w --help                                  Display this message.
# @option -x --pid-file <path>                     Specify path of PID file (defaults to /var/run/dnsmasq.pid).
# @option -X --dhcp-lease-max <integer>            Specify maximum number of DHCP leases (defaults to 1000).
# @flag -y --localise-queries                      Answer DNS queries based on the interface a query was sent to.
# @option -Y --txt-record <<name>,<txt>[,<txt]                   Specify TXT DNS record. #>
# @option --ptr-record <<name>,<target>>           Specify PTR DNS record.
# @option --interface-name <<name>,<interface>>    Give DNS name to IPv4 address of interface.
# @flag -z --bind-interfaces                       Bind only to interfaces in use.
# @flag -Z --read-ethers                           Read DHCP static host information from /etc/ethers.
# @option -1 --enable-dbus <busname>               Enable the DBus interface for setting upstream servers, etc.
# @option --enable-ubus <busname>                  Enable the UBus interface.
# @option -2 --no-dhcp-interface <interface>       Do not provide DHCP on this interface, only provide DNS.
# @option -3 --bootp-dynamic* <tag:<tag>>          Enable dynamic address allocation for bootp.
# @option -4 --dhcp-mac <set:<tag>,<mac address>>  Map MAC address (with wildcards) to option set.
# @option --bridge-interface* <<iface>,<alias>>    Treat DHCP requests on aliases as arriving from interface.
# @option --shared-network <<iface>|<addr>,<addr>>  Specify extra networks sharing a broadcast domain for DHCP
# @flag -5 --no-ping                               Disable ICMP echo address checking in the DHCP server.
# @option -6 --dhcp-script <path>                  Shell script to run on DHCP lease creation and destruction.
# @option --dhcp-luascript <path>                  Lua script to run on DHCP lease creation and destruction.
# @option --dhcp-scriptuser[`_module_os_user`] <username>  Run lease-change scripts as this user.
# @flag --script-arp                               Call dhcp-script with changes to local ARP table.
# @option -7 --conf-dir <path>                     Read configuration from all the files in this directory.
# @option -8 --log-facility <<facility>|<file>>    Log to this syslog facility or file.
# @flag -9 --leasefile-ro                          Do not use leasefile.
# @option -0 --dns-forward-max <integer>           Maximum number of concurrent DNS queries.
# @flag --clear-on-reload                          Clear DNS cache when reloading /etc/resolv.conf.
# @option --dhcp-ignore-names* <tag:<tag>>         Ignore hostnames provided by DHCP clients.
# @flag --dhcp-no-override                         Do NOT reuse filename and server fields for extra DHCP options.
# @option --enable-tftp <<intr>[,<intr>]>          Enable integrated read-only TFTP server.
# @option --tftp-root <<dir>[,<iface>]>            Export files by TFTP only from the specified subtree.
# @option --tftp-unique-root <ip|mac>              Add client IP or hardware address to tftp-root.
# @flag --tftp-secure                              Allow access only to files owned by the user running dnsmasq.
# @flag --tftp-no-fail                             Do not terminate the service if TFTP directories are inaccessible.
# @option --tftp-max <integer>                     Maximum number of concurrent TFTP transfers (defaults to 50).
# @option --tftp-mtu <integer>                     Maximum MTU to use for TFTP transfers.
# @flag --tftp-no-blocksize                        Disable the TFTP blocksize extension.
# @flag --tftp-lowercase                           Convert TFTP filenames to lowercase
# @option --tftp-port-range <<start>,<end>>        Ephemeral port range for use by TFTP transfers.
# @flag --tftp-single-port                         Use only one port for TFTP server.
# @flag --log-dhcp                                 Extra logging for DHCP.
# @option --log-async <integer>                    Enable async.
# @flag --stop-dns-rebind                          Stop DNS rebinding.
# @flag --rebind-localhost-ok                      Allow rebinding of 127.0.0.0/8, for RBL servers.
# @option --rebind-domain-ok </<domain>/>          Inhibit DNS-rebind protection on this domain.
# @flag --all-servers                              Always perform DNS queries to all servers.
# @option --dhcp-match <set:<tag>,<optspec>>       Set tag if client includes matching option in request.
# @option --dhcp-name-match <set:<tag>,<string>[*]>  Set tag if client provides given name.
# @option --dhcp-alternate-port <ports>            Use alternative ports for DHCP.
# @option --naptr-record <<name>,<naptr>>          Specify NAPTR DNS record.
# @option --min-port <port>                        Specify lowest port available for DNS query transmission.
# @option --max-port <port>                        Specify highest port available for DNS query transmission.
# @flag --dhcp-fqdn                                Use only fully qualified domain names for DHCP clients.
# @option --dhcp-generate-names <tag:<tag>>        Generate hostnames based on MAC address for nameless clients.
# @option --dhcp-proxy* <ipaddr>                   Use these DHCP relays as full proxies.
# @option --dhcp-relay <<local-addr>,<server>[,<iface>]>  Relay DHCP requests to a remote server
# @option --cname <<alias>,<target>[,<ttl>]>       Specify alias name for LOCAL DNS name.
# @option --pxe-prompt <<prompt>,[<timeout>]>      Prompt to send to PXE clients.
# @option --pxe-service <service>                  Boot service for PXE menu.
# @flag --test                                     Check configuration syntax.
# @option --add-mac <base64|text>                  Add requestor's MAC address to forwarded DNS queries.
# @option --add-subnet <<v4 pref>[,<v6 pref>]>     Add specified IP subnet to forwarded DNS queries.
# @option --add-cpe-id <text>                      Add client identification to forwarded DNS queries.
# @flag --proxy-dnssec                             Proxy DNSSEC validation results from upstream nameservers.
# @flag --dhcp-sequential-ip                       Attempt to allocate sequential IP addresses to DHCP clients.
# @flag --dhcp-ignore-clid                         Ignore client identifier option sent by DHCP clients.
# @flag --conntrack                                Copy connection-track mark from queries to upstream connections.
# @flag --dhcp-client-update                       Allow DHCP clients to do their own DDNS updates.
# @flag --enable-ra                                Send router-advertisements for interfaces doing DHCPv6
# @option --dhcp-duid <<enterprise>,<duid>>        Specify DUID_EN-type DHCPv6 server DUID
# @option --host-record <<name>,<address>[,<ttl>]>  Specify host (A/AAAA and PTR) records
# @option --dynamic-host <<name>,[<IPv4>][,<IPv6>],<interface-Specify host record in interface subnet #>
# @option --caa-record <<name>,<flags>,<tag>,<value>>  Specify certification authority authorization record
# @option --dns-rr <<name>,<RR-number>,[<data>]>   Specify arbitrary DNS resource record
# @flag --bind-dynamic                             Bind to interfaces in use - check for new interfaces
# @option --auth-server <<NS>,<interface>>         Export local names to global DNS
# @option --auth-zone <<domain>,[<subnet>...]>     Domain to export to global DNS
# @option --auth-ttl <integer>                     Set TTL for authoritative replies
# @option --auth-soa <<serial>[,...]>              Set authoritative zone information
# @option --auth-sec-servers <<NS>[,<NS>...]>      Secondary authoritative nameservers for forward domains
# @option --auth-peer <<ipaddr>[,<ipaddr>...]>     Peers which are allowed to do zone transfer
# @option --ipset* </<domain>[/<domain>...]/<ipset>>  Specify ipsets to which matching domains should be added
# @option --connmark-allowlist-enable <mask>       Enable filtering of DNS queries with connection-track marks.
# @option --connmark-allowlist <<connmark>[/<mask>][,<pattern>Set allowed DNS patterns for a connection-track mark. #>
# @option --synth-domain <<domain>,<range>,[<prefix>]>  Specify a domain and address range for synthesised names
# @flag --dnssec                                   Activate DNSSEC validation
# @option --trust-anchor* <<domain>,[<class>],>    Specify trust anchor key digest.
# @flag --dnssec-debug                             Disable upstream checking for DNSSEC debugging.
# @flag --dnssec-check-unsigned                    Ensure answers without DNSSEC are in unsigned zones.
# @flag --dnssec-no-timecheck                      Don't check DNSSEC signature timestamps until first cache-reload
# @option --dnssec-timestamp <path>                Timestamp file to verify system clock for DNSSEC
# @option --ra-param <<iface>,[mtu:<value>|<interface>|off,][<Set MTU priority resend-interval and router-lifetime #>
# @flag --quiet-dhcp                               Do not log routine DHCP.
# @flag --quiet-dhcp6                              Do not log routine DHCPv6.
# @flag --quiet-ra                                 Do not log RA.
# @flag --log-debug                                Log debugging information.
# @flag --local-service                            Accept queries only from directly-connected networks.
# @flag --dns-loop-detect                          Detect and remove DNS forwarding loops.
# @option --ignore-address <ipaddr>                Ignore DNS responses containing ipaddr.
# @option --dhcp-ttl <ttl>                         Set TTL in DNS responses with DHCP-derived addresses.
# @option --dhcp-reply-delay <integer>             Delay DHCP replies for at least number of seconds.
# @flag --dhcp-rapid-commit                        Enables DHCPv4 Rapid Commit option.
# @option --dumpfile <path>                        Path to debug packet dump file
# @option --dumpmask <hex>                         Mask which packets to dump
# @flag --script-on-renewal                        Call dhcp-script when lease expiry changes.
# @option --umbrella <optspec>                     Send Cisco Umbrella identifiers including remote IP.
# @flag --quiet-tftp                               Do not log routine TFTP.

_choice_net_device() {
    ifconfig | gawk '/^[0-9a-zA-Z]/ { split($0, arr, ":"); print arr[1] }'
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"