#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                                  Show this help
# @flag --version                                  Show package version
# @flag --no-pager                                 Do not pipe output into a pager
# @flag -4                                         Resolve IPv4 addresses
# @flag -6                                         Resolve IPv6 addresses
# @option -i --interface[`_choice_interface`]      Look on interface
# @option -p --protocol[`_choice_protocol`] <PROTO|help>  Look via protocol
# @option -t --type[`_choice_type`] <TYPE|help>    Query RR with DNS type
# @option -c --class[`_choice_class`] <CLASS|help>  Query RR with DNS class
# @option --service-address <BOOL>                 Resolve address for services (default: yes)
# @option --service-txt <BOOL>                     Resolve TXT records for services (default: yes)
# @option --cname <BOOL>                           Follow CNAME redirects (default: yes)
# @option --validate <BOOL>                        Allow DNSSEC validation (default: yes)
# @option --synthesize <BOOL>                      Allow synthetic response (default: yes)
# @option --cache <BOOL>                           Allow response from cache (default: yes)
# @option --zone <BOOL>                            Allow response from locally registered mDNS/LLMNR records (default: yes)
# @option --trust-anchor <BOOL>                    Allow response from local trust anchor (default: yes)
# @option --network <BOOL>                         Allow response from network (default: yes)
# @option --search <BOOL>                          Use search domains for single-label names (default: yes)
# @option --raw <payload|packet>                   Dump the answer as binary data
# @option --legend <BOOL>                          Print headers and additional info (default: yes)

# {{ resolvectl query
# @cmd Resolve domain names, IPv4 and IPv6 addresses
query() {
    :;
}
# }} resolvectl query

# {{ resolvectl service
# @cmd DOMAIN Resolve service (SRV)
service() {
    :;
}
# }} resolvectl service

# {{ resolvectl openpgp
# @cmd Query OpenPGP public key
openpgp() {
    :;
}
# }} resolvectl openpgp

# {{ resolvectl tlsa
# @cmd Query TLS public key
tlsa() {
    :;
}
# }} resolvectl tlsa

# {{ resolvectl status
# @cmd Show link and server status
status() {
    :;
}
# }} resolvectl status

# {{ resolvectl statistics
# @cmd Show resolver statistics
statistics() {
    :;
}
# }} resolvectl statistics

# {{ resolvectl reset-statistics
# @cmd Reset resolver statistics
reset-statistics() {
    :;
}
# }} resolvectl reset-statistics

# {{ resolvectl flush-caches
# @cmd Flush all local DNS caches
flush-caches() {
    :;
}
# }} resolvectl flush-caches

# {{ resolvectl reset-server-features
# @cmd Forget learnt DNS server feature levels
reset-server-features() {
    :;
}
# }} resolvectl reset-server-features

# {{ resolvectl dns
# @cmd Get/set per-interface DNS server address
dns() {
    :;
}
# }} resolvectl dns

# {{ resolvectl domain
# @cmd Get/set per-interface search domain
domain() {
    :;
}
# }} resolvectl domain

# {{ resolvectl default-route
# @cmd Get/set per-interface default route flag
default-route() {
    :;
}
# }} resolvectl default-route

# {{ resolvectl llmnr
# @cmd Get/set per-interface LLMNR mode
llmnr() {
    :;
}
# }} resolvectl llmnr

# {{ resolvectl mdns
# @cmd Get/set per-interface MulticastDNS mode
mdns() {
    :;
}
# }} resolvectl mdns

# {{ resolvectl dnsovertls
# @cmd Get/set per-interface DNS-over-TLS mode
dnsovertls() {
    :;
}
# }} resolvectl dnsovertls

# {{ resolvectl dnssec
# @cmd Get/set per-interface DNSSEC mode
dnssec() {
    :;
}
# }} resolvectl dnssec

# {{ resolvectl nta
# @cmd Get/set per-interface DNSSEC NTA
nta() {
    :;
}
# }} resolvectl nta

# {{ resolvectl revert
# @cmd Revert per-interface configuration
revert() {
    :;
}
# }} resolvectl revert

# {{ resolvectl log-level
# @cmd Get/set logging threshold for systemd-resolved
log-level() {
    :;
}
# }} resolvectl log-level

_choice_interface() {
    resolvectl status | sed -n 's/^Link\s\+[0-9]\+\s\+(\(.*\))$/\1/p'
}

_choice_protocol() {
    resolvectl --protocol help | tail -n +2
}

_choice_type() {
    resolvectl --type help | tail -n +2
}

_choice_class() {
    resolvectl --class help | tail -n +2
}

command eval "$(argc --argc-eval "$0" "$@")"