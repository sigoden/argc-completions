_patch_help() { 
    $@ --help | \
    sed \
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
        '--verify;[yes|no]' \
    | \
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
}

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
