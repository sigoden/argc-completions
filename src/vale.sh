_patch_help() {
    if [[ "$*" == "vale" ]]; then
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "vale" ]]; then
        _patch_table_edit_options \
            '--config(<file>)' \
            '--ext(<value>)' \
            '--filter(<value>)' \
            '--glob(<pattern>)' \
            '--output;[`_choice_output`]' \
        | \
        _patch_table_edit_arguments ';;' paths...
    fi
}

_choice_output() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" line JSON
}
