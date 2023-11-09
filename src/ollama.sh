_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'model;[`_choice_model`]' \
    )"

    if [[ "$*" == "ollama create" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--file(<file>)' \

    else
        echo "$table"
    fi
}

_choice_model() {
    ollama list | _argc_util_transform_table 'NAME' ''
}
