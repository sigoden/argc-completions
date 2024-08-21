_patch_help() {
    $@ | sed '/^\s*-/ s/\(-\S\+\)/\1 /'
}

_patch_table() {
    _patch_table_edit_arguments ';;' 'path'
}
