#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --aws-sigv4 <PROVIDER1[:PROVIDER2[:REGION[:SERVICE]]]>  Use AWS V4 signature authentication in the transfer
# @option --cacert <FILE>                          CA certificate to verify peer against (PEM format)
# @option -E --cert <CERTIFICATE[:PASSWORD]>       Client certificate file and password
# @option --key                                    Private key file name
# @flag --color                                    Colorize output
# @flag --compressed                               Request compressed response (using deflate or gzip)
# @option --connect-timeout <SECONDS>              Maximum time allowed for connection [default: 300]
# @option --connect-to <HOST1:PORT1:HOST2:PORT2>   For a request to the given HOST1:PORT1 pair, connect to HOST2:PORT2 instead
# @flag --continue-on-error                        Continue executing requests even if an error occurs
# @option -b --cookie <FILE>                       Read cookies from FILE
# @option -c --cookie-jar <FILE>                   Write cookies to FILE after running the session (only for one session)
# @option --delay <MILLISECONDS>                   Sets delay before each request.
# @option --error-format[short|long] <FORMAT>      Control the format of error messages [default: short]
# @option --file-root <DIR>                        Set root directory to import files [default: input file directory]
# @flag -L --location                              Follow redirects
# @flag --location-trusted                         Follow redirects but allows sending the name + password to all hosts that the site may redirect to.
# @option --from-entry <ENTRY_NUMBER>              Execute Hurl file from ENTRY_NUMBER (starting at 1)
# @option --glob                                   Specify input files that match the given GLOB.
# @flag -0 --http1.0                               Tell Hurl to use HTTP version 1.0
# @flag --http1.1                                  Tell Hurl to use HTTP version 1.1
# @flag --http2                                    Tell Hurl to use HTTP version 2
# @flag --http3                                    Tell Hurl to use HTTP version 3
# @flag --ignore-asserts                           Ignore asserts defined in the Hurl file
# @flag -i --include                               Include the HTTP headers in the output
# @flag -k --insecure                              Allow insecure SSL connections
# @flag --interactive                              Turn on interactive mode
# @flag -4 --ipv4                                  Tell Hurl to use IPv4 addresses only when resolving host names, and not for example try IPv6
# @flag -6 --ipv6                                  Tell Hurl to use IPv6 addresses only when resolving host names, and not for example try IPv4
# @option --jobs <NUM>                             (Experimental) Maximum number of parallel jobs
# @flag --json                                     Output each Hurl file result to JSON
# @option --max-filesize <BYTES>                   Specify the maximum size (in bytes) of a file to download
# @option --max-redirs <NUM>                       Maximum number of redirects allowed, -1 for unlimited redirects [default: 50]
# @option -m --max-time <SECONDS>                  Maximum time allowed for the transfer [default: 300]
# @flag -n --netrc                                 Must read .netrc for username and password
# @option --netrc-file <FILE>                      Specify FILE for .netrc
# @flag --netrc-optional                           Use either .netrc or the URL
# @flag --no-color                                 Do not colorize output
# @flag --no-output                                Suppress output.
# @option --noproxy <HOST(S)>                      List of hosts which do not use proxy
# @option -o --output <FILE>                       Write to FILE instead of stdout
# @flag --parallel                                 (Experimental) Run files in parallel
# @flag --path-as-is                               Tell Hurl to not handle sequences of /../ or /./ in the given URL path
# @option -x --proxy <[PROTOCOL://]HOST[:PORT]>    Use proxy on given PROTOCOL/HOST/PORT
# @option --report-html <DIR>                      Generate HTML report to DIR
# @option --report-junit <FILE>                    Write a JUnit XML report to FILE
# @option --report-tap <FILE>                      Write a TAP report to FILE
# @option --resolve <HOST:PORT:ADDR>               Provide a custom address for a specific HOST and PORT pair
# @option --retry <NUM>                            Maximum number of retries, 0 for no retries, -1 for unlimited retries [default: 0]
# @option --retry-interval <MILLISECONDS>          Interval in milliseconds before a retry [default: 1000]
# @flag --ssl-no-revoke                            (Windows) Tell Hurl to disable certificate revocation checks.
# @flag --test                                     Activate test mode
# @option --to-entry <ENTRY_NUMBER>                Execute Hurl file to ENTRY_NUMBER (starting at 1)
# @option --unix-socket <PATH>                     (HTTP) Connect through this Unix domain socket, instead of using the network
# @option -A --user-agent <NAME>                   Specify the User-Agent string to send to the HTTP server
# @option -u --user <USER:PASSWORD>                Add basic Authentication header to each request
# @option --variable <NAME=VALUE>                  Define a variable
# @option --variables-file <FILE>                  Define a properties file in which you define your variables
# @flag -v --verbose                               Turn on verbose
# @flag --very-verbose                             Turn on verbose output, including HTTP response and libcurl logs
# @flag -h --help                                  Print help
# @flag -V --version                               Print version
# @arg files*                                      Set the input file to use

command eval "$(argc --argc-eval "$0" "$@")"