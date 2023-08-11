_patch_table() {
    _patch_table_edit_options '--time;[`_choice_time`]'
}

_choice_time() {
    printf "%s\n" access atime modify mtime use
}
