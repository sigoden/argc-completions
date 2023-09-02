_patch_table() {
    if [[ "$*" == "mariner search" ]]; then
        _patch_table_edit_options \
            '--filter;[anime|legal]' \

    else
        cat
    fi
}
