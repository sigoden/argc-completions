_patch_table() {
    _patch_table_edit_options \
        '--console;[`_choice_device`]' \

}

_choice_device() {
    find /dev/ -type c 
}
