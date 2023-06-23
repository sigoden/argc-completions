_patch_table() {
    _patch_util_add_extra_column \
        '--model:[`_choice_model`]' \
        '--role:[`_choice_role`]'
}

_choice_role() {
    aichat --list-roles
}

_choice_model() {
    aichat --list-models
}