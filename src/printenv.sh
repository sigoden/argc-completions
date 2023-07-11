_patch_table() { 
    _patch_table_edit_arguments 'VARIABLE;[`_choice_env_var`]'
}

_choice_env_var() {
    env | _argc_util_transform format==
}