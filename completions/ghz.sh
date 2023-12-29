#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            Show context-sensitive help (also try --help-long and --help-man).
# @option --config <file>                    Path to the JSON or TOML config file that specifies all the test run settings.
# @option --proto <file>                     The Protocol Buffer .proto file.
# @option --protoset <file>                  The compiled protoset file.
# @option --call <value>                     A fully-qualified method name in 'package.Service/method' or 'package.Service.Method' format.
# @option -i --import-paths <path>           Comma separated list of proto import paths.
# @option --cacert <file>                    File containing trusted root certificates for verifying the server.
# @option --cert <file>                      File containing client certificate (public key), to present to the server.
# @option --key <file>                       File containing client private key, to present to the server.
# @option --cname <value>                    Server name override when validating TLS certificate - useful for self signed certs.
# @flag --skipTLS                            Skip TLS client verification of the server's certificate chain and host name.
# @flag --insecure                           Use plaintext and insecure connection.
# @option --authority <value>                Value to be used as the :authority pseudo-header.
# @flag --async                              Make requests asynchronous as soon as possible.
# @option -r --rps <0>                       Requests per second (RPS) rate limit for constant load schedule.
# @option --load-schedule <const>            Specifies the load schedule.
# @option --load-start <0>                   Specifies the RPS load start value for step or line schedules.
# @option --load-step <0>                    Specifies the load step value or slope value.
# @option --load-end <0>                     Specifies the load end value for step or line load schedules.
# @option --load-step-duration <0>           Specifies the load step duration value for step load schedule.
# @option --load-max-duration <0>            Specifies the max load duration value for step or line load schedule.
# @option -c --concurrency <50>              Number of request workers to run concurrently for const concurrency schedule.
# @option --concurrency-schedule <const>     Concurrency change schedule.
# @option --concurrency-start <0>            Concurrency start value for step and line concurrency schedules.
# @option --concurrency-end <0>              Concurrency end value for step and line concurrency schedules.
# @option --concurrency-step <1>             Concurrency step / slope value for step and line concurrency schedules.
# @option --concurrency-step-duration <0>    Specifies the concurrency step duration value for step concurrency schedule.
# @option --concurrency-max-duration <0>     Specifies the max concurrency adjustment duration value for step or line concurrency schedule.
# @option -n --total <200>                   Number of requests to run.
# @option -t --timeout <20s>                 Timeout for each request.
# @option -z --duration <0>                  Duration of application to send requests.
# @option -x --max-duration <0>              Maximum duration of application to send requests with n setting respected.
# @option --duration-stop <close>            Specifies how duration stop is reported.
# @option -d --data <value>                  The call data as stringified JSON.
# @option -D --data-file <file>              File path for call data JSON file.
# @flag -b --binary                          The call data comes as serialized binary message or multiple count-prefixed messages read from stdin.
# @option -B --binary-file <file>            File path for the call data as serialized binary message or multiple count-prefixed messages.
# @option -m --metadata <value>              Request metadata as stringified JSON.
# @option -M --metadata-file <file>          File path for call metadata JSON file.
# @option --stream-interval <0>              Interval for stream requests between message sends.
# @option --stream-call-duration <0>         Duration after which client will close the stream in each streaming call.
# @option --stream-call-count <0>            Count of messages sent, after which client will close the stream in each streaming call.
# @flag --stream-dynamic-messages            In streaming calls, regenerate and apply call template data on every message send.
# @option --reflect-metadata <value>         Reflect metadata as stringified JSON used only for reflection request.
# @option -o --output <path>                 Output path.
# @option -O --format[summary|csv|json|pretty|html|influx-summary|influx-details] <value>  Output format.
# @option --skipFirst <0>                    Skip the first X requests when doing the results tally.
# @flag --count-errors                       Count erroneous (non-OK) resoponses in stats calculations.
# @option --connections <1>                  Number of connections to use.
# @option --connect-timeout <10s>            Connection timeout for the initial connection dial.
# @option --keepalive <0>                    Keepalive time duration.
# @option --name <value>                     User specified name for the test.
# @option --tags <value>                     JSON representation of user-defined string tags.
# @option --cpus <20>                        Number of cpu cores to use.
# @option --debug <file>                     The path to debug log file.
# @flag -e --enable-compression              Enable Gzip compression on requests.
# @option --lb-strategy <value>              Client load balancing strategy.
# @option --max-recv-message-size <value>    Maximum message size the client can receive.
# @option --max-send-message-size <value>    Maximum message size the client can send.
# @flag --disable-template-functions         Do not use and execute any template functions in call template data.
# @flag --disable-template-data              Do not use and execute any call template data.
# @flag -v --version                         Show application version.
# @arg host                                  Host and port to test.

command eval "$(argc --argc-eval "$0" "$@")"