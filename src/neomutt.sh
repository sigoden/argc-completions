_patch_help() { 
    $@ -h | \
    sed \
        -e 's/^  -D -O/  -O   /' \
        -e 's/^  -D -S/  -S   /' \

}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-F(<config-file>)' \
        '-d;[1|2|3|4|5]' \
        '-e;[`_module_os_command`]' \
        '-i(<include-file>)' \
        '-m;[MH|MMDF|Maildir|mbox]' \
    | \
    _patch_table_edit_arguments ';;' 'address'

}
