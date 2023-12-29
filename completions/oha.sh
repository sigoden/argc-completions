#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n <N_REQUESTS>                   Number of requests to run.
# @option -c <N_CONNECTIONS>                Number of connections to run concurrently.
# @option -p <N_HTTP2_PARALLEL>             Number of parallel requests to send on HTTP/2.
# @option -z <DURATION>                     Duration of application to send requests.
# @option -q <QUERY_PER_SECOND>             Rate limit for all, in queries per second (QPS)
# @option --burst-delay <BURST_DURATION>    Introduce delay between a predefined number of requests.
# @option --burst-rate <BURST_REQUESTS>     Rates of requests for burst.
# @flag --rand-regex-url                    Generate URL by rand_regex crate but dot is disabled for each query e.g. http://127.0.0.1/[a-z][a-z][0-9].
# @option --max-repeat <MAX_REPEAT>         A parameter for the '--rand-regex-url'.
# @flag --latency-correction                Correct latency to avoid coordinated omission problem.
# @flag --no-tui                            No realtime tui
# @flag -j --json                           Print results as JSON
# @option --fps                             Frame per second for tui.
# @option -m --method                       HTTP method [default: GET]
# @option -H <HEADERS>                      Custom HTTP header.
# @option -t <TIMEOUT>                      Timeout for each request.
# @option -A <ACCEPT_HEADER>                HTTP Accept Header.
# @option -d <BODY_STRING>                  HTTP request body.
# @option -D <BODY_PATH>                    HTTP request body from file.
# @option -T <CONTENT_TYPE>                 Content-Type.
# @option -a <BASIC_AUTH>                   Basic authentication, username:password
# @option --http-version <HTTP_VERSION>     HTTP version.
# @flag --http2                             Use HTTP/2.
# @option --host                            HTTP Host header
# @flag --disable-compression               Disable compression.
# @option -r --redirect                     Limit for number of Redirect.
# @flag --disable-keepalive                 Disable keep-alive, prevents re-use of TCP connections between different HTTP requests.
# @flag --ipv6                              Lookup only ipv6.
# @flag --ipv4                              Lookup only ipv4.
# @flag --insecure                          Accept invalid certs.
# @option --connect-to <CONNECT_TO>         Override DNS resolution and default port numbers with strings like 'example.org:443:localhost:8443'
# @flag --disable-color                     Disable the color scheme.
# @option --unix-socket <UNIX_SOCKET>       Connect to a unix socket instead of the domain in the URL.
# @flag --stats-success-breakdown           Include a response status code successful or not successful breakdown for the time histogram and distribution statistics
# @flag -h --help                           Print help
# @flag -V --version                        Print version
# @arg url!                                 Target URL.

command eval "$(argc --argc-eval "$0" "$@")"