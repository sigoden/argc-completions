_patch_table() { 
    table="$( \
        _patch_table_edit_arguments 'input(input-file)' \
    )"

    if [[ "$*" == "xsv" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;'

    else
        echo "$table"
    fi
}