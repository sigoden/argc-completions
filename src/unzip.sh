_patch_help() {
    $@ --help | _patch_help_split_2cols
}

_patch_table() {
    _patch_table_edit_options '-d(<dir>)' '-x(<file>)' | \
        _patch_table_edit_arguments ';;' 'file' 'contents;*[`_choice_content`]'
}

_choice_content() {
    unzip -l "$argc_file" | gawk '{print $4}' | tail -n +4 | _argc_util_comp_parts /
}
