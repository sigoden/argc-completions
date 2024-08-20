#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -r --random              generate random-based uuid
# @flag -t --time                generate time-based uuid
# @option -n --namespace <ns>    generate hash-based uuid in this namespace available namespaces: @dns @url @oid @x500
# @option -N --name <name>       generate hash-based uuid from this name
# @flag -m --md5                 generate md5 hash
# @flag -s --sha1                generate sha1 hash
# @flag -x --hex                 interpret name as hex string
# @flag -h --help                display this help
# @flag -V --version             display version

command eval "$(argc --argc-eval "$0" "$@")"