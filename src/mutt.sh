_patch_help() {
    $@ -h | sed 's/ \[\.\.\.\] --/ /'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-b;[`_choice_address`]' \
        '-c;[`_choice_address`]' \
    | \
    _patch_table_edit_arguments ';;' 'addr;[`_choice_address`]'

}

_choice_address() {
    abook --mutt-query "" | sed '/^\s*$/ d'
}
