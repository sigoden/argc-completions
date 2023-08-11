_patch_table() { 
    _patch_table_edit_arguments ';;' 'path;*[`_choice_pair_path`]'
}

_choice_pair_path() {
    _argc_util_mode_kv :
    _argc_util_comp_path 
}
