#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -p --ports          Ports to be scanned e.g. 22,80-443,top100
# @option -t --timeout        Maximum time in milliseconds to scan
# @option -c --concurrency    Number of concurrent port scanning
# @flag -h --help             Print help
# @flag -V --version          Print version
# @arg addresses*             CIDRs, IPs, or hosts to scan ports

command eval "$(argc --argc-eval "$0" "$@")"