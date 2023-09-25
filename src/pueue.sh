_patch_table() {
    table="$( \
        _patch_table_edit_options  \
            '--group;[`_choice_group`]' \
        | \
        _patch_table_edit_arguments \
            'task_ids;[`_choice_task_id`]' \
            'task_id;[`_choice_task_id`]' \
    )"
    if [[ "$*" == "pueue add" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'command;~[`_module_os_command_args`]'

    elif [[ "$*" == "pueue switch" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'task_id_1;[`_choice_task_id`]' \
            'task_id_2;[`_choice_task_id`]' \

    elif [[ "$*" == "pueue restart" ]]; then
        echo "$table" | \
        _patch_table_edit_options  \
            '--failed-in-group;[`_choice_group`]' \

    else
        echo "$table"
    fi
}

_choice_group() {
    pueue group -j | yq 'keys | .[]'
}

_choice_task_id() {
    pueue status -j  | yq '.tasks[] | .id + "	" + .command'
}
