_patch_table() { 
    _patch_table_edit_options \
        '--from-code;[`_choice_code`]' \
        '--to-code;[`_choice_code`]' \

}

_choice_code() {
    iconv --list | sed 's|//||'
}
