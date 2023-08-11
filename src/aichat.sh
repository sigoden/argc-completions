_patch_table() {
    _patch_table_edit_options \
        '--model;[`_choice_model`]' \
        '--role;[`_choice_role`]' \
        
}

_choice_model() {
    aichat --list-models
}

_choice_role() {
    aichat --list-roles
}
