#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            show help
# @flag -v --version                         show version
# @flag -d --daemon                          run as a unix daemon
# @flag -u --udp                             force enable udp forward
# @flag -t --ntcp                            force disable tcp forward
# @flag -6 --ipv6                            force disable ipv6 mapped ipv4
# @flag -f --tfo                             force enable tcp fast open -- deprecated
# @flag -z --splice                          force enable tcp zero copy -- deprecated
# @option -c --config <path>                 use config file
# @option -l --listen <address>              listen address
# @option -r --remote <address>              remote address
# @option -x --through <address>             send through ip or address
# @option -i --interface <device>            bind to interface
# @option -a --listen-transport <options>    listen transport
# @option -b --remote-transport <options>    remote transport
# @option -n --nofile <limit>                set nofile limit
# @option -p --pipe-page <number>            set pipe capacity
# @option -j --pre-conn-hook <path>          set pre-connect hook
# @option --log-level <level>                override log level
# @option --log-output <path>                override log output
# @option --dns-mode <mode>                  override dns mode
# @option --dns-min-ttl <second>             override dns min ttl
# @option --dns-max-ttl <second>             override dns max ttl
# @option --dns-cache-size <number>          override dns cache size
# @option --dns-protocol <protocol>          override dns protocol
# @option --dns-servers <servers>            override dns servers
# @option --send-proxy <send_proxy>          send proxy protocol header
# @option --send-proxy-version <version>     send proxy protocol version
# @option --accept-proxy <accept_proxy>      accept proxy protocol header
# @option --accept-proxy-timeout <second>    accept proxy protocol timeout
# @option --tcp-timeout <second>             override tcp timeout(5s)
# @option --udp-timeout <second>             override udp timeout(30s)
# @option --tcp-keepalive <second>           override default tcp keepalive interval(15s)
# @option --tcp-keepalive-probe <count>      override default tcp keepalive count(3)

# {{ realm convert
# @cmd convert your legacy configuration into an advanced one
convert() {
    :;
}
# }} realm convert

command eval "$(argc --argc-eval "$0" "$@")"