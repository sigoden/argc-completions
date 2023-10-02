_patch_table() {
    _patch_table_edit_options \
        '--sort;[`_choice_sort`]' \
        
}

_choice_sort() {
    slabtop -h | \
    sed -n '/The following are valid sort criteria:/,/^\s*$/ s/^ \(\S\): \(.*\)/\1\t\2/p'
}
