#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --set-environment                       Set WEBSOCAT_* environment variables when doing exec:/cmd:/sh-c: Currently it's WEBSOCAT_URI and WEBSOCAT_CLIENT for request URI and client address (if TCP) Beware of ShellShock or similar security problems.
# @flag -E --exit-on-eof                           Close a data transfer direction if the other one reached EOF
# @flag --jsonrpc                                  Format messages you type as JSON RPC 2.0 method calls.
# @flag -0 --null-terminated                       Use \0 instead of \n for linemode
# @flag -1 --one-message                           Send and/or receive only one message.
# @flag --oneshot                                  Serve only once.
# @flag --print-ping-rtts                          Print measured round-trip-time to stderr after each received WebSocket pong.
# @flag -q                                         Suppress all diagnostic messages, except of startup errors
# @flag -s --server-mode                           Simple server mode: specify TCP port or addr:port as single argument
# @flag -S --strict                                strict line/message mode: drop too long messages instead of splitting them, drop incomplete lines.
# @flag -k --insecure                              Accept invalid certificates and hostnames while connecting to TLS
# @flag -u --unidirectional                        Inhibit copying data in one direction
# @flag -U --unidirectional-reverse                Inhibit copying data in the other direction (or maybe in both directions if combined with -u)
# @flag -v                                         Increase verbosity level to info or further
# @flag -b --binary                                Send message to WebSockets as binary messages
# @flag -n --no-close                              Don't send Close message to websocket on EOF
# @flag -t --text                                  Send message to WebSockets as text messages
# @flag --base64                                   Encode incoming binary WebSocket messages in one-line Base64 If `--binary-prefix` (see `--help=full`) is set, outgoing WebSocket messages that start with the prefix are decoded from base64 prior to sending.
# @option --socks5 <auto_socks5>                   Use specified address:port as a SOCKS5 proxy.
# @option --basic-auth <basic_auth>                Add `Authorization: Basic` HTTP request header with this base64-encoded parameter
# @option -B --buffer-size <buffer_size>           Maximum message size, in bytes [default: 65536]
# @option --close-reason <close_reason>            Close connection with a reason message.
# @option --close-status-code <close_status_code>  Close connection with a status code.
# @option -H --header* <custom_headers>            Add custom HTTP header to websocket client request.
# @option --server-header* <custom_reply_headers>  Add custom HTTP header to websocket upgrade reply.
# @option --header-to-env* <headers_to_env>        Forward specified incoming request header to H_* environment variable for `exec:`-like specifiers.
# @option -h --help <help>                         See the help.
# @option --max-messages <max_messages>            Maximum number of messages to copy in one direction.
# @option --max-messages-rev <max_messages_rev>    Maximum number of messages to copy in the other direction.
# @option --conncap <max_parallel_conns>           Maximum number of simultaneous connections for listening mode
# @option --origin <origin>                        Add Origin HTTP header to websocket client request
# @option --pkcs12-der <pkcs12_der>                Pkcs12 archive needed to accept SSL connections, certificate and key.
# @option --pkcs12-passwd <pkcs12_passwd>          Password for --pkcs12-der pkcs12 archive.
# @option -p --preamble* <preamble>                Prepend copied data with a specified string.
# @option -P --preamble-reverse* <preamble_reverse>  Prepend copied data with a specified string (reverse direction).
# @option --restrict-uri <restrict_uri>            When serving a websocket, only accept the given URI, like `/ws` This liberates other URIs for things like serving static files or proxying.
# @option -F --static-file* <serve_static_files>   Serve a named static file for non-websocket connections.
# @option --protocol <websocket_protocol>          Specify this Sec-WebSocket-Protocol: header when connecting
# @option --server-protocol <websocket_reply_protocol>  Force this Sec-WebSocket-Protocol: header when accepting a connection
# @option --websocket-version <websocket_version>  Override the Sec-WebSocket-Version value
# @option --ping-interval <ws_ping_interval>       Send WebSocket pings each this number of seconds
# @option --ping-timeout <ws_ping_timeout>         Drop WebSocket connection if Pong message not received for this number of seconds
# @arg addr1!                                      In simple mode, WebSocket URL to connect.
# @arg addr2!                                      In advanced mode, second address to connect.

command eval "$(argc --argc-eval "$0" "$@")"