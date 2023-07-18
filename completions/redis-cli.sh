#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -h <hostname>                         Server hostname (default: 127.0.0.1).
# @option -p <port>                             Server port (default: 6379).
# @option -s <socket>                           Server socket (overrides hostname and port).
# @option -a <password>                         Password to use when connecting to the server.
# @option --user <username>                     Used to send ACL style 'AUTH username pass'.
# @option --pass <password>                     Alias of -a for consistency with the new --user option.
# @flag --askpass                               Force user to input password with mask from STDIN.
# @option -u <uri>                              Server URI.
# @option -r <repeat>                           Execute specified command N times.
# @option -i <interval>                         When -r is used, waits <interval> seconds per command.
# @option -n <db>                               Database number.
# @flag -3                                      Start session in RESP3 protocol mode.
# @flag -x                                      Read last argument from STDIN.
# @option -d <delimiter>                        Delimiter between response bulks for raw formatting (default: \n).
# @option -D <delimiter>                        Delimiter between responses for raw formatting (default: \n).
# @flag -c                                      Enable cluster mode (follow -ASK and -MOVED redirections).
# @flag --tls                                   Establish a secure TLS connection.
# @option --sni <host>                          Server name indication for TLS.
# @option --cacert <file>                       CA Certificate file to verify with.
# @option --cacertdir <dir>                     Directory where trusted CA certificates are stored.
# @option --cert <file>                         Client certificate to authenticate with.
# @option --key <file>                          Private key file to authenticate with.
# @flag --raw                                   Use raw formatting for replies (default when STDOUT is not a tty).
# @flag --no-raw                                Force formatted output even when STDOUT is not a tty.
# @flag --csv                                   Output in CSV format.
# @flag --stat                                  Print rolling stats about server: mem, clients, ...
# @flag --latency                               Enter a special mode continuously sampling latency.
# @flag --latency-history                       Like --latency but tracking latency changes over time.
# @flag --latency-dist                          Shows latency as a spectrum, requires xterm 256 colors.
# @option --lru-test <keys>                     Simulate a cache workload with an 80-20 distribution.
# @flag --replica                               Simulate a replica showing commands received from the master.
# @option --rdb <filename>                      Transfer an RDB dump from remote server to local file.
# @flag --pipe                                  Transfer raw Redis protocol from stdin to server.
# @option --pipe-timeout <n>                    In --pipe mode, abort with error if after sending all data.
# @flag --bigkeys                               Sample Redis keys looking for keys with many elements (complexity).
# @flag --memkeys                               Sample Redis keys looking for keys consuming a lot of memory.
# @option --memkeys-samples <n>                 Sample Redis keys looking for keys consuming a lot of memory.
# @flag --hotkeys                               Sample Redis keys looking for hot keys.
# @flag --scan                                  List all keys using the SCAN command.
# @option --pattern <pat>                       Keys pattern when using the --scan, --bigkeys or --hotkeys options (default: *).
# @option --intrinsic-latency <sec>             Run a test to measure intrinsic system latency.
# @option --eval <file>                         Send an EVAL command using the Lua script at <file>.
# @flag --ldb                                   Used with --eval enable the Redis Lua debugger.
# @flag --ldb-sync-mode                         Like --ldb but uses the synchronous Lua debugger, in this mode the server is blocked and script changes are not rolled back from the server memory.
# @option --cluster* <command> <args> <opts>    Cluster Manager command and arguments (see below).
# @flag --verbose                               Verbose mode.
# @flag --no-auth-warning                       Don't show warning message when using password on command line interface.
# @flag --help                                  Output this help and exit.
# @flag --version                               Output version and exit.
# @arg cmd[`_choice_cmd`]
# @arg args*

_choice_cmd() {
    redis-cli command | \
    gawk '
    BEGIN {
        cmd = 1
    }
    {
        if (cmd == 1 && match($0, /^[a-z]/)) {
            print $0
            cmd = 0
        } else if (cmd == 0 && match($0, /^@/)) {
            cmd = 1
        }
    }'
}

command eval "$(argc --argc-eval "$0" "$@")"