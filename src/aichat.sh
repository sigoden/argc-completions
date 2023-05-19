_patch_table() {
    _patch_util_bind_choices_fn \
        '--model:_choice_model' \
        '--role:_choice_role'
}

_choice_role() {
    aichat --list-roles
}

_choice_model() {
    aichat --list-models
}