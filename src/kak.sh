_patch_table() { 
    _patch_table_edit_options \
        '-c;[`_choice_session`]' \
        '-p;[`_choice_session`]' \
        '-ui;[terminal|dummy|json]' \

}

_choice_session() {
    kak -l
}
