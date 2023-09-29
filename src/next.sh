_patch_help() {
    if [[ "$*" == "next" ]]; then
        $@ --help | \
        sed \
            -e 's/    //' \
            -e '/Available commands/,+1 s/, /\n      /g' \

    else
        $@ --help | \
        sed \
            -e 's/      //' \
            -e 's/\$ next/next/' \
            -e 's/::String//' \

    fi
}

_patch_table() {
    _patch_table_detect_value_type
}
