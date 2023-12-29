#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -host* <string>                       hosts to scan ports for (comma-separated)
# @option -l -list <file>                       list of hosts to scan ports (file)
# @option -exclude-hosts <string>               hosts to exclude from the scan (comma-separated)
# @option -eh <string>                          hosts to exclude from the scan (comma-separated)
# @option -exclude-file <file>                  list of hosts to exclude from scan (file)
# @option -ef <file>                            list of hosts to exclude from scan (file)
# @option -p -port <string>                     ports to scan (80,443, 100-200)
# @option -top-ports[full|100|1000] <string>    top ports to scan (default 100)
# @option -tp[full|100|1000] <string>           top ports to scan (default 100)
# @option -exclude-ports <string>               ports to exclude from scan (comma-separated)
# @option -ep <string>                          ports to exclude from scan (comma-separated)
# @option -ports-file <file>                    list of ports to scan (file)
# @option -pf <file>                            list of ports to scan (file)
# @option -port-threshold <int>                 port threshold to skip port scan for the host
# @option -pts <int>                            port threshold to skip port scan for the host
# @flag -exclude-cdn                            skip full port scans for CDN/WAF (only scan for port 80,443)
# @flag -ec                                     skip full port scans for CDN/WAF (only scan for port 80,443)
# @flag -display-cdn                            display cdn in use
# @flag -cdn                                    display cdn in use
# @option -c <int>                              general internal worker threads (default 25)
# @option -rate <int>                           packets to send per second (default 1000)
# @flag -up                                     update naabu to latest version
# @flag -update                                 update naabu to latest version
# @flag -duc                                    disable automatic naabu update check
# @flag -disable-update-check                   disable automatic naabu update check
# @option -o -output <file>                     file to write output to (optional)
# @flag -j -json                                write output in JSON lines format
# @flag -csv                                    write output in csv format
# @flag -scan-all-ips                           scan all the IP's associated with DNS record
# @flag -sa                                     scan all the IP's associated with DNS record
# @option -ip-version*[4|6] <string>            ip version to scan of hostname - (default 4)
# @option -iv*[4|6] <string>                    ip version to scan of hostname - (default 4)
# @option -s -scan-type <string>                type of port scan (SYN/CONNECT) (default "s")
# @option -source-ip <string>                   source ip and port (x.x.x.x:yyy)
# @flag -interface-list                         list available interfaces and public ip
# @flag -il                                     list available interfaces and public ip
# @option -i -interface <string>                network Interface to use for port scan
# @flag -nmap                                   invoke nmap scan on targets (nmap must be installed) - Deprecated
# @option -nmap-cli <string>                    nmap command to run on found results (example: -nmap-cli 'nmap -sV')
# @option -r <file>                             list of custom resolver dns resolution (comma separated or from file)
# @option -proxy <string>                       socks5 proxy (ip[:port] / fqdn[:port]
# @option -proxy-auth <string>                  socks5 proxy authentication (username:password)
# @flag -resume                                 resume scan using resume.cfg
# @flag -stream                                 stream mode (disables resume, nmap, verify, retries, shuffling, etc)
# @flag -passive                                display passive open ports using shodan internetdb api
# @option -irt <value>                          timeout on input read (default 3m0s)
# @option -input-read-timeout <value>           timeout on input read (default 3m0s)
# @flag -no-stdin                               Disable Stdin processing
# @flag -sn                                     Perform Only Host Discovery
# @flag -host-discovery                         Perform Only Host Discovery
# @flag -Pn                                     Skip Host discovery
# @flag -skip-host-discovery                    Skip Host discovery
# @option -ps* <string>                         TCP SYN Ping (host discovery needs to be enabled)
# @option -probe-tcp-syn* <string>              TCP SYN Ping (host discovery needs to be enabled)
# @option -pa* <string>                         TCP ACK Ping (host discovery needs to be enabled)
# @option -probe-tcp-ack* <string>              TCP ACK Ping (host discovery needs to be enabled)
# @flag -pe                                     ICMP echo request Ping (host discovery needs to be enabled)
# @flag -probe-icmp-echo                        ICMP echo request Ping (host discovery needs to be enabled)
# @flag -pp                                     ICMP timestamp request Ping (host discovery needs to be enabled)
# @flag -probe-icmp-timestamp                   ICMP timestamp request Ping (host discovery needs to be enabled)
# @flag -pm                                     ICMP address mask request Ping (host discovery needs to be enabled)
# @flag -probe-icmp-address-mask                ICMP address mask request Ping (host discovery needs to be enabled)
# @flag -arp                                    ARP ping (host discovery needs to be enabled)
# @flag -arp-ping                               ARP ping (host discovery needs to be enabled)
# @flag -nd                                     IPv6 Neighbor Discovery (host discovery needs to be enabled)
# @flag -nd-ping                                IPv6 Neighbor Discovery (host discovery needs to be enabled)
# @flag -rev-ptr                                Reverse PTR lookup for input ips
# @flag -sD                                     Service Discovery
# @flag -service-discovery                      Service Discovery
# @flag -sV                                     Service Version
# @flag -service-version                        Service Version
# @option -retries <int>                        number of retries for the port scan (default 3)
# @option -timeout <int>                        millisecond to wait before timing out (default 1000)
# @option -warm-up-time <int>                   time in seconds between scan phases (default 2)
# @flag -ping                                   ping probes for verification of host
# @flag -verify                                 validate the ports again with TCP verification
# @flag -health-check                           run diagnostic check up
# @flag -hc                                     run diagnostic check up
# @flag -debug                                  display debugging information
# @flag -v -verbose                             display verbose output
# @flag -no-color                               disable colors in CLI output
# @flag -nc                                     disable colors in CLI output
# @flag -silent                                 display only results in output
# @flag -version                                display version of naabu
# @flag -stats                                  display stats of the running scan (deprecated)
# @option -si <int>                             number of seconds to wait between showing a statistics update (deprecated) (default 5)
# @option -stats-interval <int>                 number of seconds to wait between showing a statistics update (deprecated) (default 5)
# @option -mp <int>                             port to expose nuclei metrics on (default 63636)
# @option -metrics-port <int>                   port to expose nuclei metrics on (default 63636)

command eval "$(argc --argc-eval "$0" "$@")"