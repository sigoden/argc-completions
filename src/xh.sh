_patch_table() {
    _patch_table_edit_arguments ';;' 'args;*[`_choice_args`]'
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
