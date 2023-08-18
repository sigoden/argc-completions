_patch_table() { 
    table="$( \
        _patch_table_edit_arguments 'input(input-file)' \
    )"
    if [[ "$*" == "xsv cat" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'cmd;[rows|columns]' 'input-file...'

    else
        echo "$table"
    fi
}
