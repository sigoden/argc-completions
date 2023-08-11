_patch_table() { 
    _patch_table_edit_options \
        '--insert;[`_choice_kind`]' \
        '--only;[`_choice_kind`]' \
        '--sorta;[`_choice_kind`]' \
        '--sortd;[`_choice_kind`]' \

}

_choice_kind() {
    printf "%s\n" PID User TTY MEM Time Command
}
