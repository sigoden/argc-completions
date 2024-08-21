_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help | \
        sed \
            -e 's/\s\+\([<{\[]\)/ \1/' \
            -e 's/\(>\|}\|\]\)\s*\([a-z]\)/\1    \2/' \

    else
        $1 --help | 
        sed -n "/^\s*$2\s/ p" | \
        sed \
            -e 's/\s\+\([<{\[]\)/ \1/' \
            -e 's/\(>\|}\|\]\)\s*[a-z].*/\1/' \
            -e "s/^\s*/Usage: $1 /" \

    fi
}

_patch_table() {
    _patch_table_edit_arguments \
        'bridge;[`_choice_bridge`]' \
        'device;[`_module_os_network_interface`]' \

}

_choice_bridge() {
    brctl show | gawk '{if (NR>1) {print $1}}'
}
