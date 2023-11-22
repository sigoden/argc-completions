#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Print help
# @flag -V --version    Print version

# {{ bore local
# @cmd Starts a local proxy to the remote server
# @option -l --local-host <HOST>    The local host to expose [default: localhost]
# @option -t --to                   Address of the remote server to expose local ports to [env: BORE_SERVER=]
# @option -p --port                 Optional port on the remote server to select [default: 0]
# @option -s --secret               Optional secret for authentication [env: BORE_SECRET]
# @flag -h --help                   Print help
# @arg local_port!                  The local port to expose
local() {
    :;
}
# }} bore local

# {{ bore server
# @cmd Runs the remote proxy server
# @option --min-port <MIN_PORT>    Minimum accepted TCP port number [default: 1024]
# @option --max-port <MAX_PORT>    Maximum accepted TCP port number [default: 65535]
# @option -s --secret              Optional secret for authentication [env: BORE_SECRET]
# @flag -h --help                  Print help
server() {
    :;
}
# }} bore server

command eval "$(argc --argc-eval "$0" "$@")"