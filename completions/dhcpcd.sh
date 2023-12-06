#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -b --background                         Background immediately.
# @option -c --script <script>                  Use this script instead of the default /nix/store/n4c23v4n4q4y94dscc9zj9bl0zjyc926-dhcpcd-9.4.1/libexec/dhcpcd-run-hooks.
# @option -D --duid <ll | lt | uuid | value>    Use a DHCP Unique Identifier.
# @flag -d --debug                              Echo debug messages to the stderr and syslog.
# @flag -E --lastlease                          If dhcpcd cannot obtain a lease, then try to use the last lease acquired for the interface.
# @flag --lastleaseextend                       Same as the above, but the lease will be retained even if it expires.
# @option -e --env <value>                      Push value to the environment for use in dhcpcd-run-hooks(8).
# @flag -g --reconfigure                        dhcpcd will re-apply IP address, routing and run dhcpcd-run-hooks(8) for each interface.
# @option -F --fqdn <fqdn>                      Requests that the DHCP server updates DNS using FQDN instead of just a hostname.
# @option -f --config <file>                    Specify a config to load instead of /etc/dhcpcd.conf.
# @option -h --hostname <hostname>              Sends hostname to the DHCP server so it can be registered in DNS.
# @option -I --clientid <clientid>              Send the clientid.
# @option -i --vendorclassid <vendorclassid>    Override the DHCPv4 vendorclassid field sent.
# @option -j --logfile <logfile>                Writes to the specified logfile.
# @option -k --release <interface>              This causes an existing dhcpcd process running on the interface to release its lease and de-configure the interface regardless of the -p, --persistent option.
# @option -l --leasetime <seconds>              Request a lease time of seconds.
# @flag -M --manager                            Start dhcpcd in Manager mode even if only one interface specified on the command line.
# @option -m --metric <metric>                  Metrics are used to prefer an interface over another one, lowest wins.
# @option -n --rebind <interface>               Notifies dhcpcd to reload its configuration and rebind the specified interface.
# @option -N --renew <interface>                Notifies dhcpcd to renew existing addresses on the specified interface.
# @option -o --option <option>                  Request the DHCP option variable for use in /nix/store/n4c23v4n4q4y94dscc9zj9bl0zjyc926-dhcpcd-9.4.1/libexec/dhcpcd-run-hooks.
# @flag -p --persistent                         dhcpcd normally de-configures the interface and configuration when it exits.
# @option -r --request <address>                Request the address in the DHCP DISCOVER message.
# @option -s --inform <address[/cidr[/broadcast_address]]>  Behaves like -r, --request as above, but sends a DHCP INFORM instead of DISCOVER/REQUEST.
# @flag --inform6                               Performs a DHCPv6 Information Request.
# @option -S --static <value>                   Configures a static DHCP value.
# @option -t --timeout <seconds>                Timeout after seconds, instead of the default 30.
# @option -u --userclass <class>                Tags the DHCPv4 message with the userclass class.
# @option -v --vendor <code,value>              Add an encapsulated vendor option.
# @flag --version                               Display both program version and copyright information.
# @flag -w                                      Wait for an address to be assigned before forking to the background.
# @option --waitip <4 | 6>                      Wait for an address to be assigned before forking to the background.
# @option -x --exit <interface>                 This will signal an existing dhcpcd process running on the interface to exit.
# @option -y --reboot <seconds>                 Allow reboot seconds before moving to the discover phase if we have an old lease to use.
# @flag -1 --oneshot                            Exit after configuring an interface.
# @flag -4 --ipv4only                           Configure IPv4 only.
# @flag -6 --ipv6only                           Configure IPv6 only.
# @flag -A --noarp                              Don't request or claim the address by ARP.
# @flag -B --nobackground                       Don't run in the background when we acquire a lease.
# @option -C --nohook <script>                  Don't run this hook script.
# @flag -G --nogateway                          Don't set any default routes.
# @flag -H --xidhwaddr                          Use the last four bytes of the hardware address as the DHCP xid instead of a randomly generated number.
# @flag -J --broadcast                          Instructs the DHCP server to broadcast replies back to the client.
# @flag -K --nolink                             Don't receive link messages for carrier status.
# @flag -L --noipv4ll                           Don't use IPv4LL (aka APIPA, aka Bonjour, aka ZeroConf).
# @option -O --nooption <option>                Removes the option from the DHCP message before processing.
# @flag -P --printpidfile                       Print the pidfile dhcpcd will use based on commmand-line arguments to stdout.
# @option -Q --require <option>                 Requires the option to be present in all DHCP messages, otherwise the message is ignored.
# @flag -q --quiet                              Quiet dhcpcd on the command line, only warnings and errors will be displayed.
# @flag -T --test                               On receipt of DHCP messages just call /nix/store/n4c23v4n4q4y94dscc9zj9bl0zjyc926-dhcpcd-9.4.1/libexec/dhcpcd-run-hooks with the reason of TEST which echos the DHCP variables found in the message to the console.
# @option -U --dumplease <interface>            Dumps the current lease for the interface to stdout.
# @flag -V --variables                          Display a list of option codes, the associated variable and encoding for use in dhcpcd-run-hooks(8).
# @option -W --whitelist <address[/cidr]>       Only accept packets from address[/cidr].
# @option -X --blacklist <address[/cidr]>       Ignore all packets from address[/cidr].
# @option -Z --denyinterfaces <pattern>         When discovering interfaces, the interface name must not match pattern which is a space or comma separated list of patterns passed to fnmatch(3).
# @option -z --allowinterfaces <pattern>        When discovering interfaces, the interface name must match pattern which is a space or comma separated list of patterns passed to fnmatch(3).
# @flag --inactive                              Don't start any interfaces other than those specified on the command line.
# @flag --configure                             Allows dhcpcd to configure the system.
# @flag --noconfigure                           dhcpcd will not configure the system at all.
# @flag --nodev                                 Don't load any /dev management modules.
# @arg ifaces*[`_module_os_network_interface`]

_module_os_network_interface() {
    ifconfig -a | sed -n 's/^\(\S\+\): .*/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"