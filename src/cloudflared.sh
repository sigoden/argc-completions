_patch_help() {
    if [[ "$*" == "cloudflared access curl" ]] \
    || [[ "$*" == "cloudflared curl" ]] \
    ; then
        :;
    elif [[ "$*" == "cloudflared tunnel"* ]]; then
        $@ --help | \
        sed \
            -e '/^\s*-/ s/ --url//' \
            -e 's/tunnel \[[^]]*\]/tunnel/' \
            -e 's/(default: current time.*)//' \

    else
        $@ --help
    fi
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type | \
        _patch_table_edit_options \
            '--output;[default|json]' \
    )"

    if [[ "$*" == "cloudflared access token" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'url'

    elif [[ "$*" == "cloudflared tunnel"* ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'cidr;[`_choice_cidr`]' \
            'route-id-or-cidr;[`_choice_cidr`]' \
            'tunnel;[`_choice_tunnel`]' \
            'virtual_network;[`_choice_vnet`]' \

    else
        echo "$table"
    fi
}

_choice_tunnel() {
    cloudflared tunnel list | _argc_util_transform_table 'NAME' ''
}

_choice_cidr() {
    cloudflared tunnel ip show | _argc_util_transform_table 'NETWORK' ''
}

_choice_vnet() {
    cloudflared tunnel vnet list | _argc_util_transform_table 'NAME' ''
}
