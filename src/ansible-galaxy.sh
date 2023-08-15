_patch_help() {
    $@ --help | sed '/^positional arguments:/,+1 {N;s/\n\s*[A-Z0-9_]\+$//;s/^positional arguments:$/Commands:/;}'
}

_patch_table() {
    if [[ "$*" == "ansible-galaxy collection"* ]]; then
        _patch_table_edit_options \
            '--requirements-file(<REQUIREMENTS_FILE>)' \
        | \
        _patch_table_edit_arguments \
            'collection_name(collection_path)' \
            'collection;[`_choice_collection`]' \

    else
        cat
    fi

}

_choice_collection() {
    ansible-galaxy collection list | _argc_util_transform_table 'Collection;Version' '\t'   
}
