_patch_table() { 
    _patch_table_edit_options \
        '--certs;*[`_choice_cert`]' \
        '--mode;[`_choice_mode`]' \
        '--modify-body;*[`_choice_modify_body`]' \
        '--modify-headers;*[`_choice_modify_headers`]' \
        '--save-stream-file;[`_choice_appendable_file`]' \
        '--set;*[`_choice_option`]' \
        
}

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
