_patch_table() { 
    _patch_table_edit_options \
        '--time-style;[`_choice_time_style`]' \
        '--time;[`_choice_time`]' \

}

_choice_time() {
    printf "%s\n" access atime ctime status use
}

_choice_time_style() {
    printf "%s\n" full-iso long-iso iso
}
