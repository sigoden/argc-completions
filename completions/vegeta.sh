#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option -cpus <int>                  Number of CPUs to use (default 20)
# @option -profile[cpu|heap] <file>    Enable profiling of [cpu, heap]
# @flag -version                       Print version and exit

# {{ vegeta attack
# @cmd
# @option -body <file>                 Requests body file
# @option -cert <file>                 TLS client PEM encoded certificate file
# @flag -chunked                       Send body with chunked transfer encoding
# @option -connections <int>           Max open idle connections per target host (default 10000)
# @option -dns-ttl <value>             Cache DNS lookups for the given duration [-1 = disabled, 0 = forever] (default 0s)
# @option -duration <duration>         Duration of the test [0 = forever]
# @option -format <string>             Targets format [http, json] (default "http")
# @flag -h2c                           Send HTTP/2 requests without TLS encryption
# @option -header <value>              Request header
# @flag -http2                         Send HTTP/2 requests when supported by the server (default true)
# @flag -insecure                      Ignore invalid server TLS certificates
# @flag -keepalive                     Use persistent connections (default true)
# @option -key <file>                  TLS client PEM encoded private key file
# @option -laddr <value>               Local IP address (default 0.0.0.0)
# @flag -lazy                          Read targets lazily
# @option -max-body <value>            Maximum number of bytes to capture from response bodies.
# @option -max-connections <int>       Max connections per target host
# @option -max-workers <uint>          Maximum number of workers (default 18446744073709551615)
# @option -name <string>               Attack name
# @option -output <file>               Output file (default "stdout")
# @option -prometheus-addr <string>    Prometheus exporter listen address [empty = disabled].
# @option -proxy-header <value>        Proxy CONNECT header
# @option -rate <value>                Number of requests per time unit [0 = infinity] (default 50/1s)
# @option -redirects <int>             Number of redirects to follow.
# @option -resolvers <value>           List of addresses (ip:port) to use for DNS resolution.
# @option -root-certs <file>           TLS root certificate files (comma separated list)
# @flag -session-tickets               Enable TLS session resumption using session tickets
# @option -targets <file>              Targets file (default "stdin")
# @option -timeout <duration>          Requests timeout (default 30s)
# @option -unix-socket <string>        Connect over a unix socket.
# @option -workers <uint>              Initial number of workers (default 10)
attack() {
    :;
}
# }} vegeta attack

# {{ vegeta encode
# @cmd
# @option -output <file>                Output file (default "stdout")
# @option -to[csv|gob|json] <string>    Output encoding (default "json")
encode() {
    :;
}
# }} vegeta encode

# {{ vegeta plot
# @cmd
# @option -output <file>      Output file (default "stdout")
# @option -threshold <int>    Threshold of data points above which series are downsampled.
# @option -title <string>     Title and header of the resulting HTML page (default "Vegeta Plot")
plot() {
    :;
}
# }} vegeta plot

# {{ vegeta report
# @cmd
# @option -buckets <string>    Histogram buckets
# @option -every <duration>    Report interval
# @option -output <file>       Output file (default "stdout")
# @option -type <string>       Report type to generate [text, json, hist[buckets], hdrplot] (default "text")
report() {
    :;
}
# }} vegeta report

command eval "$(argc --argc-eval "$0" "$@")"