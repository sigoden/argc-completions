#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -P <string>                              Proxy address as protocol://username:password@host:port.
# @option -T <int>                                 Request timeout in seconds (default 5)
# @option -a <string>                              Basic authentication, username:password
# @option -b <string>                              Payload of the network packet (body)
# @option -cert_key_path <file>                    A path to a certificate key file (usually called 'key.pem')
# @option -cert_path <file>                        A path to a certificate file (usually called 'cert.pem')
# @option -config <file>                           Json config file path.
# @option -d <int>                                 Test duration in seconds (default 10)
# @flag -debug                                     Iterates the scenario once and prints curl-like verbose result
# @option -h <value>                               Request Headers.
# @option -l[linear|incremental|waved] <string>    Type of the load test (default "linear")
# @option -m[GET|POST|PUT|DELETE|UPDATE|PATCH] <string>  Request Method Type.
# @option -n <int>                                 Total iteration count (default 100)
# @option -o <path>                                Output destination (default "stdout")
# @option -t <string>                              Target URL
# @flag -version                                   Prints version, git commit, built date (utc), go information and quit

command eval "$(argc --argc-eval "$0" "$@")"