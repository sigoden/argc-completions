#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                    Show this help
# @flag -V --version                 Show version
# @option -n --name[`_module_os_hostname`] <hostname+>  Resolve host name
# @option -a --address <address+>    Resolve address
# @flag -v --verbose                 Enable verbose mode
# @flag -6                           Lookup IPv6 address
# @flag -4                           Lookup IPv4 address

_module_os_hostname() {
    _etc_hosts() {
        if [[ -f "/etc/hosts" ]]; then
            cat /etc/hosts | sed -e '/^\s*#/ d' -e '/^\s*$/ d'
        elif command -v getent >/dev/null; then
            getent hosts 
        fi
    }
    _etc_hosts | sed -e '/^\s*\(127\.0\.\|ff0\|fe0\|::1\)/ d' -e 's/^\s*\S\+\s*\(\S\+\)$/\1/'

    if [[ -r ~/.ssh/config ]]; then
        cat ~/.ssh/config | sed -n 's/^\s*Host\s\+\(\S.*\?\)\s*$/\1/Ip'
    fi
    if [[ -r ~/.ssh/known_hosts ]]; then
        cat ~/.ssh/known_hosts | \
        sed \
            -e '/^\s*[!*|@#]/ d' \
            -e 's/^\s*\(\S\+\).*/\1/' \
            -e 's/,/\n/' \
            -e 's/\[\(\S\+\)\].*/\1/' \

    fi
}

command eval "$(argc --argc-eval "$0" "$@")"