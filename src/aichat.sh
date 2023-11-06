_patch_table() {
    _patch_table_edit_options \
        '--model;[`_choice_model`]' \
        '--role;[`_choice_role`]' \
        '--session;[`_choice_session`]' \
        
}

_choice_model() {
    aichat --list-models
}

_choice_role() {
    aichat --list-roles
}

_choice_session() {
    aichat --list-sessions
}
