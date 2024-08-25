_patch_table() {
    _patch_table_edit_arguments \
        'project_id;[`_choice_project_id`]' \
        'secret_id;[`_choice_secret_id`]' \

}

_choice_project_id() {
    bws project list --output json | yq '.[] | .id + "	" + .name'
}

_choice_secret_id() {
    bws secret list --output json | yq '.[] | .id + "	" + .key'
}
