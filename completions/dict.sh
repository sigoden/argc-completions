#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -h --host <server>          specify server
# @option -p --port <service>         specify port
# @option -d --database <dbname>      select a database to search
# @flag -m --match                    match instead of define
# @option -s --strategy <strategy>    strategy for matching or defining
# @option -c --config <file>          specify configuration file
# @flag -C --nocorrect                disable attempted spelling correction
# @flag -D --dbs                      show available databases
# @flag -S --strats                   show available search strategies
# @flag -H --serverhelp               show server help
# @option -i --info <dbname>          show information about a database
# @flag -I --serverinfo               show information about the server
# @flag -a --noauth                   disable authentication
# @option -u --user <username>        username for authentication
# @option -k --key <key>              shared secret for authentication
# @flag -V --version                  display version information
# @flag -L --license                  display copyright and license information
# @flag -4                            forces dict to use IPv4 addresses only.
# @flag -6                            forces dict to use IPv6 addresses only.
# @flag --help                        display this help
# @flag -v --verbose                  be verbose
# @flag -r --raw                      trace raw transaction
# @option --debug <flag>              set debugging flag
# @option --pipesize <size>           specify buffer size for pipelining (256)
# @option --client <text>             additional text for client command
# @flag -M --mime                     send OPTION MIME command if server supports it
# @flag -f --formatted                use strict tabbed format of output
# @arg word

command eval "$(argc --argc-eval "$0" "$@")"