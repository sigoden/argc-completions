#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -H[`_module_http_header`] <value>       Additional headers in 'name: value' format.
# @flag -allow-unknown-fields                     When true, the request contents, if 'json' format is used, allows unknown fields to be present.
# @flag -alts                                     Use Application Layer Transport Security (ALTS) when connecting to server.
# @option -alts-handshaker-service <string>       If set, this server will be used to do the ATLS handshaking.
# @option -alts-target-service-account <value>    The full email address of the service account that the server is expected to be using when ALTS is used.
# @option -authority <string>                     The authoritative name of the remote server.
# @option -cacert <file>                          File containing trusted root certificates for verifying the server.
# @option -cert <file>                            File containing client certificate (public key), to present to the server.
# @option -connect-timeout <float>                The maximum time, in seconds, to wait for connection to be established.
# @option -d <string>                             Data for request contents.
# @flag -emit-defaults                            Emit default values for JSON-encoded responses.
# @flag -expand-headers                           If set, headers may use '${NAME}' syntax to reference environment variables.
# @option -format <string>                        The format of request data.
# @flag -format-error                             When a non-zero status is returned, format the response using the value set by the -format flag .
# @flag -help                                     Print usage instructions and exit.
# @option -import-path <dir>                      The path to a directory from which proto sources can be imported, for use with -proto flags.
# @flag -insecure                                 Skip server certificate and domain verification.
# @option -keepalive-time <float>                 If present, the maximum idle time in seconds, after which a keepalive probe is sent.
# @option -key <file>                             File containing client private key, to present to the server.
# @option -max-msg-sz <int>                       The maximum encoded size of a response message, in bytes, that grpcurl will accept.
# @option -max-time <float>                       The maximum total time the operation can take, in seconds.
# @flag -msg-template                             When describing messages, show a template of input data.
# @flag -plaintext                                Use plain-text HTTP/2 when connecting to server (no TLS).
# @option -proto <file>                           The name of a proto source file.
# @option -protoset <file>                        The name of a file containing an encoded FileDescriptorSet.
# @option -protoset-out <file>                    The name of a file to be written that will contain a FileDescriptorSet proto.
# @option -reflect-header <value>                 Additional reflection headers in 'name: value' format.
# @option -rpc-header <value>                     Additional RPC headers in 'name: value' format.
# @option -servername <string>                    Override server name when validating TLS certificate.
# @flag -unix                                     Indicates that the server address is the path to a Unix domain socket.
# @flag -use-reflection                           When true, server reflection will be used to determine the RPC schema.
# @option -user-agent <string>                    If set, the specified value will be added to the User-Agent header set by the grpc-go library.
# @flag -v                                        Enable verbose output.
# @flag -version                                  Print version.
# @flag -vv                                       Enable very verbose output.
# @arg address
# @arg enum[list|describe]
# @arg symbol

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

command eval "$(argc --argc-eval "$0" "$@")"