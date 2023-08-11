_patch_table() { 
    _patch_table_edit_arguments 'variable;[`_choice_env_var`]'
}

_choice_env_var() {
    env | _argc_util_transform format==
}
