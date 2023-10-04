#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --gateway <ip/hostname>                 IP/name of your IPSec gateway
# @option --id <ASCII string>                     your group name
# @option --secret <ASCII string>                 your group password (cleartext)
# @option --username <ASCII string>               your username
# @option --password <ASCII string>               your password (cleartext)
# @option --domain <ASCII string>                 (NT-) Domain name for authentication
# @flag --xauth-inter                             enable interactive extended authentication (for challenge response auth)
# @option --vendor[cisco|netscreen|fortigate]     vendor of your IPSec gateway Default: cisco
# @option --natt-mode[natt|none|force-natt|cisco-udp]  Which NAT-Traversal Method to use: •  natt -- NAT-T as defined in RFC3947 •  none -- disable use of any NAT-T method •  force-natt -- always use NAT-T encapsulation even without presence of a NAT device (useful if the OS captures all ESP traffic) •  cisco-udp -- Cisco proprietary UDP encapsulation, commonly over Port 10000
# @option --script <command>                      command is executed using system() to configure the interface, routing and so on.
# @option --dh[dh1|dh2|dh5]                       name of the IKE DH Group Default: dh2
# @option --pfs[nopfs|dh1|dh2|dh5|server]         Diffie-Hellman group to use for PFS Default: server
# @flag --enable-1des                             enables weak single DES encryption
# @flag --enable-no-encryption                    enables using no encryption for data traffic (key exchanged must be encrypted)
# @option --application-version <ASCII string>    Application Version to report.
# @option --ifname <ASCII string>                 visible name of the TUN/TAP interface
# @option --ifmode[tun|tap]                       mode of TUN/TAP interface: •  tun: virtual point to point interface (default) •  tap: virtual ethernet interface Default: tun
# @option --ifmtu <0-65535>                       Set MTU for TUN/TAP interface (default 0 == automatic detect)
# @option --debug[0|1|2|3|99]                     Show verbose debug messages •
# @flag --no-detach                               Don't detach from the console after login
# @option --pid-file <filename>                   store the pid of background process in <filename> Default: /run/vpnc.pid
# @option --local-addr <ip/hostname>              local IP to use for ISAKMP / ESP / ... (0.0.0.0 == automatically assign) Default: 0.0.0.0
# @option --local-port <0-65535>                  local ISAKMP port number to use (0 == use random port) Default: 500
# @option --udp-port <0-65535>                    Local UDP port number to use (0 == use random port).
# @option --dpd-idle <0,10-86400>                 Send DPD packet after not receiving anything for <idle> seconds.
# @flag --non-inter                               Don't ask anything, exit on missing options
# @option --auth-mode[psk|cert|hybrid]            Authentication mode: •  psk:  pre-shared key (default) •  cert:  server + client certificate (not implemented yet) •  hybrid: server certificate + xauth (if built with openssl support) Default: psk
# @option --ca-file <filename>                    filename and path to the CA-PEM-File
# @option --ca-dir <directory>                    path of the trusted CA-Directory Default: /etc/ssl/certs
# @option --target-network <target network/netmask>  Target network in dotted decimal or CIDR notation Default: 0.0.0.0/0.0.0.0
# @option --password-helper <executable>          path to password program or helper name
# @flag --print-config                            Prints your configuration; output can be used as vpnc.conf
# @arg config-files* <config files>

command eval "$(argc --argc-eval "$0" "$@")"