#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            show this help message and exit
# @flag --version                            show version number and exit
# @flag --options                            Show all options and their default values
# @flag --commands                           Show all commands and their signatures
# @option --set*[`_choice_option`] <option[=value]>  Set an option.
# @flag -q --quiet                           Quiet.
# @flag -v --verbose                         Increase log verbosity.
# @option -m --mode[`_choice_mode`]          The proxy server type(s) to spawn.
# @flag --no-anticache
# @flag --anticache                          Strip out request headers that might cause the server to return 304-not-modified.
# @flag --no-showhost
# @flag --showhost                           Use the Host header to construct URLs for display.
# @option -r --rfile <PATH>                  Read flows from file.
# @option -s --scripts <SCRIPT>              Execute a script.
# @option --stickycookie <FILTER>            Set sticky cookie filter.
# @option --stickyauth <FILTER>              Set sticky auth filter.
# @option -w --save-stream-file[`_choice_appendable_file`] <PATH>  Stream flows to file as they arrive.
# @flag --no-anticomp
# @flag --anticomp                           Try to convince servers to send us un-compressed data.
# @option --flow-detail <LEVEL>              The display detail level for flows in mitmdump: 0 (quiet) to 4 (very verbose).
# @option --listen-host <HOST>               Address to bind proxy server(s) to (may be overridden for individual modes, see `mode`).
# @option -p --listen-port <PORT>            Port to bind proxy server(s) to (may be overridden for individual modes, see `mode`).
# @flag -n --no-server
# @flag --server                             Start a proxy server.
# @option --ignore-hosts <HOST>              Ignore host and forward all traffic without processing it.
# @option --allow-hosts <HOST>               Opposite of --ignore-hosts.
# @option --tcp-hosts <HOST>                 Generic TCP SSL proxy mode for all hosts that match the pattern.
# @option --upstream-auth <USER:PASS>        Add HTTP Basic authentication to upstream proxy and reverse proxy requests.
# @option --proxyauth <SPEC>                 Require proxy authentication.
# @flag --no-rawtcp
# @flag --rawtcp                             Enable/disable raw TCP connections.
# @flag --no-http2
# @flag --http2                              Enable/disable HTTP/2 support.
# @option --certs*[`_choice_cert`] <SPEC>    SSL certificates of the form "[domain=]path".
# @option --cert-passphrase <PASS>           Passphrase for decrypting the private key provided in the --cert option.
# @flag --no-ssl-insecure
# @flag -k --ssl-insecure                    Do not verify upstream server SSL/TLS certificates.
# @option -C --client-replay <PATH>          Replay client requests from a saved file.
# @option -S --server-replay <PATH>          Replay server responses from a saved file.
# @flag --no-server-replay-kill-extra
# @flag --server-replay-kill-extra           Kill extra requests during replay (for which no replayable response was found).[Deprecated, prefer to use server_replay_extra='kill']
# @option --server-replay-extra[forward|kill|204|400|404|500]  Behaviour for extra requests during replay for which no replayable response was found.
# @flag --no-server-replay-reuse
# @flag --server-replay-reuse                Don't remove flows from server replay state after use.
# @flag --no-server-replay-refresh
# @flag --server-replay-refresh              Refresh server replay responses by adjusting date, expires and last-modified headers, as well as adjusting cookie expiration.
# @option -M --map-remote <PATTERN>          Map remote resources to another remote URL using a pattern of the form "[/flow-filter]/url-regex/replacement", where the separator can be any character.
# @option --map-local <PATTERN>              Map remote resources to a local file using a pattern of the form "[/flow-filter]/url-regex/file-or-directory-path", where the separator can be any character.
# @option -B --modify-body*[`_choice_modify_body`] <PATTERN>  Replacement pattern of the form "[/flow-filter]/regex/[@]replacement", where the separator can be any character.
# @option -H --modify-headers*[`_choice_modify_headers`] <PATTERN>  Header modify pattern of the form "[/flow-filter]/header-name/[@]header-value", where the separator can be any character.
# @arg filter_args*                          Filter expression, equivalent to setting both the view_filter and save_stream_filter options.

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_option() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        mitmproxy --options | \
        yq 'to_entries | .[] | .type = (.value | type) | .key + ";" + .type' | \
        sed -e 's/;!!bool//' -e 's/;!!.*$/=\x00/'
    else
        case "$argc__kv_key" in
            confdir)
                echo __argc_value=dir
                ;;
            connection_strategy)
                printf "%s\n" eager lazy
               ;;
            console_default_contentview)
                printf "%s\n" 'auto' 'raw' 'hex' 'graphql' 'json' 'xml/html' 'wbxml' 'javascript' \
                    'css' 'url-encoded' 'multipart form' 'image' 'query' 'protocol buffer' \
                    'msgpack' 'grpc/protocol buffer' 'mqtt'
                ;;
            console_eventlog_verbosity)
                printf "%s\n" 'error' 'warn' 'info' 'alert' 'debug'
                ;;
            console_flowlist_layout)
                printf "%s\n" 'default' 'list' 'table'
                ;;
            console_layout)
                printf "%s\n" 'horizontal' 'single' 'vertical'
                ;;
            console_palette)
                printf "%s\n" 'dark' 'light' 'lowdark' 'lowlight' 'solarized_dark' 'solarized_light'
                ;;
            tls_version_client_max|tls_version_client_min|tls_version_server_max|tls_version_server_min)
                printf "%s\n" 'UNBOUNDED' 'SSL3' 'TLS1' 'TLS1_1' 'TLS1_2' 'TLS1_3'
                ;;
            view_order)
                printf "%s\n" 'time' 'method', 'url', 'size'
                ;;
        esac
    fi
}

_choice_mode() {
    printf "%s\n" regular transparent socks5 
    echo -e "reverse:\0"
    echo -e "upstream:\0"
}

_choice_appendable_file() {
    if [[ "$ARGC_CWORD" == '+'* ]]; then
        _argc_util_comp_path prefix=+ filter="${ARGC_CWORD:1}"
    else
        _argc_util_comp_path
    fi
}

_choice_cert() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path
    else
        _argc_util_comp_path prefix="$argc__kv_prefix" filter="$argc__kv_filter"
    fi
}

_choice_modify_body() {
    _helper_three_parts_mode
    if [[ -z "$argc__3p_count" ]]; then
        return
    fi
    if [[ "$argc__3p_count" -eq 1 ]]; then
        if [[ "${argc__3p_parts[0]}" == '~'* ]]; then
            echo __argc_prefix="${argc__3p_prefix}~"
            echo __argc_filter="${argc__3p_filter:1}"
            _choice_flow_filter | _argc_util_transform nospace
        fi
    elif [[ "${argc__3p_filter:0:1}" == "@" ]]; then
        _argc_util_comp_path prefix="${argc__3p_prefix}@" filter="${argc__3p_filter:1}"
    fi
}

_choice_modify_headers() {
    _helper_three_parts_mode
    if [[ -z "$argc__3p_count" ]]; then
        return
    fi
    if [[ "$argc__3p_count" -eq 1 ]]; then
        if [[ "${argc__3p_parts[0]}" == '~'* ]]; then
            echo __argc_prefix="${argc__3p_prefix}~"
            echo __argc_filter="${argc__3p_filter:1}"
            _choice_flow_filter | _argc_util_transform nospace
        fi
    elif [[ "$argc__3p_count" -eq 2 ]]; then
        ARGC_CWORD="$argc__3p_filter" SEP="$argc__3p_sep" _module_http_header 
        echo __argc_prefix="${argc__3p_prefix}"
    else
        if [[ "${argc__3p_filter:0:1}" == "@" ]]; then
            _argc_util_comp_path prefix="${argc__3p_prefix}@" filter="${argc__3p_filter:1}"
        else
            ARGC_CWORD="${argc__3p_parts[1]}$argc__3p_sep$argc__3p_filter" SEP="$argc__3p_sep" _module_http_header 
            echo __argc_prefix="${argc__3p_prefix}"
        fi
    fi
}

_choice_flow_filter() {
    cat <<-'EOF'
a	Match asset in response: CSS, JavaScript, images, fonts
all	Match all flows
b	Body
bq	Request body
bs	Response body
c	HTTP response code
comment	Flow comment
d	Domain
dns	Match DNS flows
dst	Match destination address
e	Match error
h	Header
hq	Request header
hs	Response header
http	Match HTTP flows
m	Method
marked	Match marked flows
marker	Match marked flows with specified marker
meta	Flow metadata
q	Match request with no response
replay	Match replayed flows
replayq	Match replayed client request
replays	Match replayed server response
s	Match response
src	Match source address
t	Content-type header
tcp	Match TCP flows
tq	Request Content-Type header
ts	Response Content-Type header
u	URL
websocket	Match WebSocket flows
EOF
}

_helper_three_parts_mode() {
    local values IFS
    IFS=$'\n'
    if [[ -z "$ARGC_CWORD" ]]; then
        return
    fi
    values=( $(gawk -v VALUE="$ARGC_CWORD" 'BEGIN {
        if (VALUE != "") {
            sep = substr(VALUE, 1, 1)
            split(VALUE, arr, sep)
            arrLen = length(arr)
            if (arrLen > 4) {
                count = 3
            } else {
                count = arrLen - 1
            }
            print count
            print sep
            for (i = 1; i <= count; i++) {
                out = out arr[i] sep
            }
            print out
            for (i = 2; i <= arrLen; i++) {
                if (i <= count) {
                    print arr[i]
                } else {
                    if (last == "") {
                        last = arr[i]
                    } else {
                        last = last sep arr[i]
                    }
                }
            }
            if (last != "") {
                print last
            }
        }
    }') )
    argc__3p_count="${values[0]}"
    argc__3p_sep="${values[1]}"
    argc__3p_prefix="${values[2]}"
    argc__3p_parts=( ${values[@]:3} )
    if [[ ${#argc__3p_parts[@]} -ne $argc__3p_count ]]; then
        argc__3p_parts+=( "" )
    fi
    argc__3p_filter="${argc__3p_parts[-1]}"
}

_module_http_accept_encoding() {
    command cat <<-'EOF'
br	Brotli
compress	UNIX 'compress' program method
deflate	 compression based on the deflate algorithm
exi	W3C Efficient XML Interchange
gzip	GNU zip format
identity	No transformation is used.
pack200-gzip	Network Transfer Format for Java Archives
zstd	Zstandard compression
EOF
}

_module_http_cache_control() {
    command cat <<-'EOF' | sed 's/=\t/=\0\t/'
max-age=	The maximum amount of time a resource is considered fresh.
max-stale	Indicates the client will accept a stale response.
min-fresh=	Indicates the client wants a response that will still be fresh for at least the specified number of seconds.
no-cache	The response may be stored by any cache, even if the response is normally non-cacheable.
no-store	The response may not be stored in any cache.
no-transform	An intermediate cache or proxy cannot edit the response body.
only-if-cached	Set by the client to indicate \"do not use the network\" for the response.
EOF
}

_module_http_header() {
    command cat <<-'EOF' | _argc_util_comp_kv ${SEP:-:}
Accept=;;Media type(s) that is/are acceptable for the response. See Content negotiation.
Accept-Encoding=`_module_http_accept_encoding`;;List of acceptable encodings. See HTTP compression.
Accept-Language=;;List of acceptable human languages for response. See Content negotiation.
Access-Control-Request-Method=;;Initiates a request for cross-origin resource sharing with Origin
Access-Control-Request-Headers=;;Initiates a request for cross-origin resource sharing with Origin
Authorization=;;Authentication credentials for HTTP authentication.
Cache-Control=`_module_http_cache_control`;;Used to specify directives that must be obeyed by all caching mechanisms along the request-response chain.
Content-Type=`_module_http_media_type`;;The Media type of the body of the request (used with POST and PUT requests).
Cookie=;;An HTTP cookie previously sent by the server with Set-Cookie (below).
Date=;;The date and time at which the message was originated (in "HTTP-date" format as defined by RFC 7231 Date/Time Formats).
Expect=;;Indicates that particular server behaviors are required by the client.
Forwarded=;;Disclose original information of a client connecting to a web server through an HTTP proxy.[15]
Host=;;The domain name of the server (for virtual hosting), and the TCP port number on which the server is listening.
Max-Forwards=;;Limit the number of times the message can be forwarded through proxies or gateways.
Origin=;;Initiates a request for cross-origin resource sharing (asks server for Access-Control-* response fields).
Pragma=;;Implementation-specific fields that may have various effects anywhere along the request-response chain.
Referer=;;This is the address of the previous web page from which a link to the currently requested page was followed.
Proxy-Authorization=;;Authorization credentials for connecting to a proxy.
Range=;;Request only part of an entity.  Bytes are numbered from 0.  See Byte serving.
Referer=;;This is the address of the previous web page from which a link to the currently requested page was followed.
Upgrade=;;Ask the server to upgrade to another protocol. Must not be used in HTTP/2.[13]
User-Agent=;;The user agent string of the user agent.
Via=;;Informs the server of proxies through which the request was sent.
EOF
}

_module_http_media_type() {
    command cat <<-'EOF'
application/graphql
application/javascript
application/json
application/msword
application/pdf
application/sql
application/x-www-form-urlencoded
application/xml
application/zip
audio/mpeg
audio/ogg
image/gif
image/webp
image/jpeg
image/png
multipart/form-data
text/css
text/csv
text/html
text/plain
text/xml
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"