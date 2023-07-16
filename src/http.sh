_patch_help() { 
    $@ --help | sed \
        -e 's/^      /        /' \
        -e 's/^  \(--\w\+\) \(\S\+\), \(-\w\) \(\S\+\)/  \3, \1 \2/' \
        -e 's/^  \(--\w\+\), \(-\w\)/  \2, \1/' \
        -e 's/{\(\S\+\(,\S\+\)\+\)},\?/\1/' \
        -e '/\S\+\(,\S\+\)\{2,\}/ s/,/|/g'
}

_patch_table() { 
    _patch_table_edit_options \
        '--cert(<CERT_FILE>)' \
        '--cert-key(<CERT_KEY_FILE>)' \
        '--ciphers;[`_choice_cipher`]' \
        '--default-scheme;[http://|http://]' \
        '--format-options;[`_choice_format_options`]' \
        '--print;[`_choice_print_options`]' \
        '--style;[`_choice_style`]' \
        '--verify;[yes|no]' | \
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
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

_choice_style() {
    printf "%s\n" abap algol algol_nu arduino auto autumn borland bw colorful default dracula emacs friendly friendly_grayscale fruity github-dark gruvbox-dark gruvbox-light igor inkpot lilypond lovelace manni material monokai murphy native nord nord-darker one-dark paraiso-dark paraiso-light pastie perldoc pie pie-dark pie-light rainbow_dash rrt sas solarized solarized-dark solarized-light staroffice stata stata-dark stata-light tango trac vim vs xcode zenburn
}

_choice_cipher() {
    printf "%s\n" TLS_AES_256_GCM_SHA384 TLS_CHACHA20_POLY1305_SHA256 TLS_AES_128_GCM_SHA256 ECDHE-ECDSA-AES256-GCM-SHA384 ECDHE-RSA-AES256-GCM-SHA384 ECDHE-ECDSA-AES128-GCM-SHA256 ECDHE-RSA-AES128-GCM-SHA256 ECDHE-ECDSA-CHACHA20-POLY1305 ECDHE-RSA-CHACHA20-POLY1305 ECDHE-ECDSA-AES256-SHA384 ECDHE-RSA-AES256-SHA384 ECDHE-ECDSA-AES128-SHA256 ECDHE-RSA-AES128-SHA256 DHE-RSA-AES256-GCM-SHA384 DHE-RSA-AES128-GCM-SHA256 DHE-RSA-AES256-SHA256 DHE-RSA-AES128-SHA256
}

_choice_args() {
    len="${#argc__positionals[@]}"
    if [[ $len -eq 1 ]]; then
        _choice_http_method
    elif [[ $len -eq 2 ]]; then
        if _choice_http_method | grep -q "${argc__positionals[0]}"; then
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
        if [[ "$ARGC_FILTER" == *"$sep"*  ]]; then
            sep_used="$sep"
            break
        fi
    done
    if [[ -z "$sep_used" ]]; then
        _choice_seperator | sed 's/^\(.*\)$/'$ARGC_FILTER'\1/'
        _choice_http_header
    else
        if [[ "$sep_used" == "=@" ]] || [[ "$sep_used" == ":=@" ]]; then
            _argc_util_mode_kv $sep_used
            _argc_util_comp_file filter=$argc__kv_filter
        elif [[ "$sep_used" == ":" ]]; then
            _choice_http_header
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

_choice_http_method() {
    cat <<-'EOF'
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

_choice_http_header() {
    cat <<-'EOF' | _argc_util_comp_kv :
Accept=;;Media type(s) that is/are acceptable for the response. See Content negotiation.
Accept-Encoding=`_choice_http_accept_encoding`;;List of acceptable encodings. See HTTP compression.
Accept-Language=;;List of acceptable human languages for response. See Content negotiation.
Authorization=;;Authentication credentials for HTTP authentication.
Cache-Control=`_choice_http_cache_control`;;Used to specify directives that must be obeyed by all caching mechanisms along the request-response chain.
Content-Type=`_choice_http_media_type`;;The Media type of the body of the request (used with POST and PUT requests).
Cookie=;;An HTTP cookie previously sent by the server with Set-Cookie (below).
Proxy-Authorization=;;Authorization credentials for connecting to a proxy.
Max-Forwards=;;Limit the number of times the message can be forwarded through proxies or gateways.
Origin=;;Initiates a request for cross-origin resource sharing (asks server for Access-Control-* response fields).
Pragma=;;Implementation-specific fields that may have various effects anywhere along the request-response chain.
Referer=;;This is the address of the previous web page from which a link to the currently requested page was followed.
User-Agent=;;The user agent string of the user agent.
Via=;;Informs the server of proxies through which the request was sent.
EOF
}

_choice_http_accept_encoding() {
    cat <<-'EOF'
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

_choice_http_cache_control() {
    cat <<-'EOF' | sed 's/=\t/=\0\t/'
max-age=	The maximum amount of time a resource is considered fresh.
max-stale	Indicates the client will accept a stale response.
min-fresh=	Indicates the client wants a response that will still be fresh for at least the specified number of seconds.
no-cache	The response may be stored by any cache, even if the response is normally non-cacheable.
no-store	The response may not be stored in any cache.
no-transform	An intermediate cache or proxy cannot edit the response body.
only-if-cached	Set by the client to indicate \"do not use the network\" for the response.
EOF
}

_choice_http_media_type() {
    cat <<-'EOF'
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