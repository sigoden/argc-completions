#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -j --json                              (default) Data items from the command line are serialized as a JSON object.
# @flag -f --form                              Data items from the command line are serialized as form fields.
# @flag --multipart                            Similar to --form, but always sends a multipart/form-data request (i.e., even without files).
# @option --boundary                           Specify a custom boundary string for multipart/form-data requests.
# @option --raw                                This option allows you to pass raw request data without extra processing (as opposed to the structured request items syntax):
# @flag -x --compress                          Content compressed (encoded) with Deflate algorithm.
# @option --pretty[all|colors|format|none]     Controls output processing.
# @option -s --style[`_choice_style`]          Output coloring style (default is "auto").
# @flag --unsorted                             Disables all sorting while formatting output.
# @flag --sorted                               Re-enables all sorting options while formatting output.
# @option --response-charset <ENCODING>        Override the response encoding for terminal display purposes, e.g.:
# @option --response-mime <MIME_TYPE>          Override the response mime type for coloring and formatting for the terminal, e.g.:
# @option --format-options[`_choice_format_options`] <FORMAT_OPTIONS>  Controls output formatting.
# @option -p --print[`_choice_print_options`] <WHAT>  String specifying what the output should contain:
# @flag -h --headers                           Print only the response headers.
# @flag -m --meta                              Print only the response metadata.
# @flag -b --body                              Print only the response body.
# @flag -v --verbose                           Verbose output.
# @flag --all                                  By default, only the final request/response is shown.
# @flag -S --stream                            Always stream the response body by line, i.e., behave like `tail -f'.
# @option -o --output <FILE>                   Save output to FILE instead of stdout.
# @flag -d --download                          Do not print the response body to stdout.
# @flag -c --continue                          Resume an interrupted download.
# @flag -q --quiet                             Do not print to stdout or stderr, except for errors and warnings when provided once.
# @option --session <SESSION_NAME_OR_PATH>     Create, or reuse and update a session.
# @option --session-read-only <SESSION_NAME_OR_PATH>  Create or read a session without updating it form the request/response exchange.
# @flag --auth                                 USER[:PASS] | TOKEN, -a USER[:PASS] | TOKEN For username/password based authentication mechanisms (e.g basic auth or digest auth) if only the username is provided (-a username), HTTPie will prompt for the password.
# @option -A --auth-type[basic|bearer|digest] <basic|bearer|digest>  The authentication mechanism to be used.
# @flag --ignore-netrc                         Ignore credentials from .netrc.
# @flag --offline                              Build the request and print it but don’t actually send it.
# @option --proxy <PROTOCOL:PROXY_URL>         String mapping protocol to the URL of the proxy (e.g. http:http://foo.bar:3128).
# @flag -F --follow                            Follow 30x Location redirects.
# @option --max-redirects <MAX_REDIRECTS>      By default, requests have a limit of 30 redirects (works with --follow).
# @option --max-headers <MAX_HEADERS>          The maximum number of response headers to be read before giving up (default 0, i.e., no limit).
# @option --timeout <SECONDS>                  The connection timeout of the request in seconds.
# @flag --check-status                         By default, HTTPie exits with 0 when no network or other fatal errors occur.
# @flag --path-as-is                           Bypass dot segment (/../ or /./) URL squashing.
# @flag --chunked                              Enable streaming via chunked transfer encoding.
# @option --verify[yes|no]                     Set to "no" (or "false") to skip checking the host's SSL certificate.
# @option --ssl <ssl2.3|tls1|tls1.1|tls1.2>    The desired protocol version to use.
# @option --ciphers[`_choice_cipher`]          A string in the OpenSSL cipher list format.
# @option --cert <CERT_FILE>                   You can specify a local cert to use as client side SSL certificate.
# @option --cert-key <CERT_KEY_FILE>           The private key to use with SSL.
# @option --cert-key-pass <CERT_KEY_PASS>      The passphrase to be used to with the given private key.
# @flag -I --ignore-stdin                      Do not attempt to read stdin
# @flag --help                                 Show this help message and exit.
# @flag --manual                               Show the full manual.
# @flag --version                              Show version and exit.
# @flag --traceback                            Prints the exception traceback should one occur.
# @option --default-scheme[http://|http://] <DEFAULT_SCHEME>  The default scheme to use if not specified in the URL.
# @flag --debug                                Prints the exception traceback should one occur, as well as other information useful for debugging HTTPie itself and for reporting bugs.
# @arg args*[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_style() {
    cat <<-'EOF'
abap
algol
algol_nu
arduino
auto
autumn
borland
bw
colorful
default
dracula
emacs
friendly
friendly_grayscale
fruity
github-dark
gruvbox-dark
gruvbox-light
igor
inkpot
lilypond
lovelace
manni
material
monokai
murphy
native
nord
nord-darker
one-dark
paraiso-dark
paraiso-light
pastie
perldoc
pie
pie-dark
pie-light
rainbow_dash
rrt
sas
solarized
solarized-dark
solarized-light
staroffice
stata
stata-dark
stata-light
tango
trac
vim
vs
xcode
zenburn
EOF
}

_choice_format_options() {
    cat <<-'EOF' | _argc_util_comp_kv =
headers.sort=true,false
json.format=true,false
json.indent=
json.sort_keys=true,false
EOF
}

_choice_print_options() {
    cat <<-'EOF'
H	request headers
B	request body
h	response headers
b	response body
EOF
}

_choice_cipher() {
    cat <<-'EOF'
TLS_AES_256_GCM_SHA384
TLS_CHACHA20_POLY1305_SHA256
TLS_AES_128_GCM_SHA256
ECDHE-ECDSA-AES256-GCM-SHA384
ECDHE-RSA-AES256-GCM-SHA384
ECDHE-ECDSA-AES128-GCM-SHA256
ECDHE-RSA-AES128-GCM-SHA256
ECDHE-ECDSA-CHACHA20-POLY1305
ECDHE-RSA-CHACHA20-POLY1305
ECDHE-ECDSA-AES256-SHA384
ECDHE-RSA-AES256-SHA384
ECDHE-ECDSA-AES128-SHA256
ECDHE-RSA-AES128-SHA256
DHE-RSA-AES256-GCM-SHA384
DHE-RSA-AES128-GCM-SHA256
DHE-RSA-AES256-SHA256
DHE-RSA-AES128-SHA256
EOF
}

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