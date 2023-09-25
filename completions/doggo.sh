#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -q --query <HOSTNAME>           Hostname to query the DNS records for (eg mrkaran.dev).
# @option -t --type[`_choice_type`]       Type of the DNS Record (A, MX, NS etc).
# @option -n --nameserver[`_choice_nameserver`] <ADDR>  Address of a specific nameserver to send queries to (9.9.9.9, 8.8.8.8 etc).
# @option -c --class[IN|CH|HS]            Network class of the DNS record (IN, CH, HS etc).
# @flag -x --reverse                      Performs a DNS Lookup for an IPv4 or IPv6 address.
# @option --strategy[all|random|first]    Specify strategy to query nameserver listed in etc/resolv.conf..
# @flag --search                          Use the search list defined in resolv.conf.
# @flag --timeout                         Specify timeout (in seconds) for the resolver to return a response.
# @flag -4 --ipv4                         Use IPv4 only.
# @flag -6 --ipv6                         Use IPv6 only.
# @option --ndots <INT>                   Specify ndots parameter.
# @option --tls-hostname <HOSTNAME>       Provide a hostname for doing verification of the certificate if the provided DoT nameserver is an IP.
# @flag --skip-hostname-verification      Skip TLS Hostname Verification in case of DOT Lookups.
# @flag -J --json                         Format the output as JSON.
# @flag --short                           Short output format.
# @flag --color                           Defaults to true.
# @flag --debug                           Enable debug logging.
# @flag --time                            Shows how long the response took from the server.
# @arg hostname
# @arg type[`_choice_type`]

_choice_type() {
    printf "%s\n" A AAAA CAA CNAME HINFO MX NS PTR SOA SRV TXT
}

_choice_nameserver() {
    cat <<-'EOF'
1.1.1.1
8.8.8.8
9.9.9.9
114.114.114.144
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"