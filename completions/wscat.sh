#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version                            output the version number
# @option --auth <username:password>            add basic HTTP authentication header (--connect only)
# @option --ca <ca>                             specify a Certificate Authority (--connect only)
# @option --cert <cert>                         specify a Client SSL Certificate (--connect only)
# @option --host <host>                         optional host
# @option --key <key>                           specify a Client SSL Certificate's key (--connect only)
# @option --max-redirects <num>                 maximum number of redirects allowed (--connect only) (default: 10)
# @flag --no-color                              run without color
# @option --passphrase <passphrase>             specify a Client SSL Certificate Key's passphrase (--connect only).
# @option --proxy <[protocol://]host[:port]>    connect via a proxy.
# @flag --slash                                 enable slash commands for control frames (/ping [data], /pong [data], /close [code [, reason]])
# @option -c --connect <url>                    connect to a WebSocket server
# @option -H --header <header:value>            set an HTTP header.
# @flag -L --location                           follow redirects (--connect only)
# @option -l --listen <port>                    listen on port
# @flag -n --no-check                           do not check for unauthorized certificates
# @option -o --origin <origin>                  optional origin
# @option -p --protocol <version>               optional protocol version
# @flag -P --show-ping-pong                     print a notification when a ping or pong is received
# @option -s --subprotocol <protocol>           optional subprotocol (default: [])
# @option -w --wait <seconds>                   wait given seconds after executing command
# @option -x --execute <command>                execute command after connecting
# @flag -h --help                               display help for command

command eval "$(argc --argc-eval "$0" "$@")"