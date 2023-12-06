#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n <requests>                            Number of requests to perform
# @option -c <concurrency>                         Number of multiple requests to make at a time
# @option -t <timelimit>                           Seconds to max.
# @option -s <timeout>                             Seconds to max.
# @option -b <windowsize>                          Size of TCP send/receive buffer, in bytes
# @option -B <address>                             Address to bind to when making outgoing connections
# @option -p <postfile>                            File containing data to POST.
# @option -u <putfile>                             File containing data to PUT.
# @option -T[`_module_http_media_type`]            content-type Content-type header to use for POST/PUT data, eg.
# @option -v <verbosity>                           How much troubleshooting info to print
# @flag -w                                         Print out results in HTML tables
# @flag -i                                         Use HEAD instead of GET
# @option -x <attributes>                          String to insert as table attributes
# @option -y <attributes>                          String to insert as tr attributes
# @option -z <attributes>                          String to insert as td or th attributes
# @option -C <attribute>                           Add cookie, eg.
# @option -H[`_module_http_header`] <attribute>    Add Arbitrary header line, eg.
# @option -A <attribute>                           Add Basic WWW Authentication, the attributes are a colon separated username and password.
# @option -P <attribute>                           Add Basic Proxy Authentication, the attributes are a colon separated username and password.
# @option -X <proxy:port>                          Proxyserver and port number to use
# @flag -V                                         Print version number and exit
# @flag -k                                         Use HTTP KeepAlive feature
# @flag -d                                         Do not show percentiles served table.
# @flag -S                                         Do not show confidence estimators and warnings.
# @flag -q                                         Do not show progress when doing more than 150 requests
# @flag -l                                         Accept variable document length (use this for dynamic pages)
# @option -g <filename>                            Output collected data to gnuplot format file.
# @option -e <filename>                            Output CSV file with percentages served
# @flag -r                                         Don't exit on socket receive errors.
# @option -m[`_module_http_method`] <method>       Method name
# @flag -h                                         Display usage information (this message)
# @flag -I                                         Disable TLS Server Name Indication (SNI) extension
# @option -Z <ciphersuite>                         Specify SSL/TLS cipher suite (See openssl ciphers)
# @option -f <protocol>                            Specify SSL/TLS protocol (SSL2, TLS1, TLS1.1, TLS1.2, TLS1.3 or ALL)
# @option -E <certfile>                            Specify optional client certificate chain and private key
# @arg url

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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