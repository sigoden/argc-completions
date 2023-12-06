#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -j --json                                (default) Serialize data items from the command line as a JSON object
# @flag -f --form                                Serialize data items from the command line as form fields
# @flag --multipart                              Like --form, but force a multipart/form-data request even without files
# @option --raw                                  Pass raw request data without extra processing
# @option --pretty[all|colors|format|none] <STYLE>  Controls output processing
# @option --format-options <FORMAT_OPTIONS>      Set output formatting options
# @option -s --style[auto|solarized|monokai|fruity] <THEME>  Output coloring style
# @option --response-charset <ENCODING>          Override the response encoding for terminal display purposes
# @option --response-mime <MIME_TYPE>            Override the response mime type for coloring and formatting for the terminal
# @option -p --print <FORMAT>                    String specifying what the output should contain
# @flag -h --headers                             Print only the response headers.
# @flag -b --body                                Print only the response body.
# @flag -m --meta                                Print only the response metadata.
# @flag -v --verbose*                            Print the whole request as well as the response
# @flag --all                                    Show any intermediary requests/responses while following redirects with --follow
# @option -P --history-print <FORMAT>            The same as --print but applies only to intermediary requests/responses
# @flag -q --quiet                               Do not print to stdout or stderr
# @flag -S --stream                              Always stream the response body
# @option -o --output <FILE>                     Save output to FILE instead of stdout
# @flag -d --download                            Download the body to a file instead of printing it
# @flag -c --continue                            Resume an interrupted download.
# @option --session <FILE>                       Create, or reuse and update a session
# @option --session-read-only <FILE>             Create or read a session without updating it form the request/response exchange
# @option -A --auth-type[basic|bearer|digest] <AUTH_TYPE>  Specify the auth mechanism
# @option -a --auth <USER[:PASS] | TOKEN>        Authenticate as USER with PASS (-A basic|digest) or with TOKEN (-A bearer)
# @flag --ignore-netrc                           Do not use credentials from .netrc
# @flag --offline                                Construct HTTP requests without sending them anywhere
# @flag --check-status                           (default) Exit with an error status code if the server replies with an error
# @flag -F --follow                              Do follow redirects
# @option --max-redirects <NUM>                  Number of redirects to follow.
# @option --timeout <SEC>                        Connection timeout of the request
# @option --proxy <PROTOCOL:URL>                 Use a proxy for a protocol.
# @option --verify                               If "no", skip SSL verification.
# @option --cert <FILE>                          Use a client side certificate for SSL
# @option --cert-key <FILE>                      A private key file to use with --cert
# @option --ssl[auto|tls1|tls1.1|tls1.2|tls1.3] <VERSION>  Force a particular TLS version
# @flag --https                                  Make HTTPS requests if not specified in the URL
# @option --http-version[1.0|1.1|2] <VERSION>    HTTP version to use
# @option --resolve <HOST:ADDRESS>               Override DNS resolution for specific domain to a custom IP
# @option --interface <NAME>                     Bind to a network interface or local IP address
# @flag -4 --ipv4                                Resolve hostname to ipv4 addresses only
# @flag -6 --ipv6                                Resolve hostname to ipv6 addresses only
# @flag -I --ignore-stdin                        Do not attempt to read stdin
# @flag --curl                                   Print a translation to a curl command
# @flag --curl-long                              Use the long versions of curl's flags
# @flag --help                                   Print help
# @flag -V --version                             Print version
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ $len -eq 1 ]]; then
        _module_http_method
    elif [[ $len -eq 2 ]]; then
        if _module_http_method | grep -q "${argc__positionals[0]}"; then
            return
        else
            _choice_request_item
        fi
    else
        _choice_request_item
    fi
}

_choice_request_item() {
    local IFS=$'\n'
    local sep sep_used
    for sep in $(_choice_seperator); do
        sep="${sep%%	*}"
        if [[ "$ARGC_CWORD" == *"$sep"*  ]]; then
            sep_used="$sep"
            break
        fi
    done
    if [[ -z "$sep_used" ]]; then
        _choice_seperator | sed 's/^\(.*\)$/'$ARGC_CWORD'\1/'
        _module_http_header
    else
        if [[ "$sep_used" == "=@" ]] || [[ "$sep_used" == ":=@" ]]; then
            _argc_util_mode_kv $sep_used
            _argc_util_comp_path filter=$argc__kv_filter
        elif [[ "$sep_used" == ":" ]]; then
            _module_http_header
        fi
    fi
}

_choice_seperator() {
    cat <<-'EOF'
:=@	A raw JSON field like ':=', but takes a file path and embeds its content
==	URL parameters to be appended to the request URI
:=	Non-string JSON data fields (only with --json, -j)
=@	A data field like '=', but takes a file path and embeds its content
@	Form file fields (only with --form or --multipart)
:	HTTP headers
=	Data fields to be serialized into a JSON object
EOF
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

_module_http_method() {
    command cat <<-'EOF'
CONNECT	Establish a tunnel to the server identified by the target resource
DELETE	Delete the specified resource
GET	Request a representation of the specified resource
HEAD	Identical to a GET request, but without the response body
OPTIONS	Describe the communication options for the target resource
PATCH	Apply partial modifications to a resource
POST	Submit an entity to the specified resource
PUT	Replace all current representations of the target resource
TRACE	Perform a message loop-back test along the path to the target resource
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"