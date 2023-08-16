_patch_help() { 
    $@ --help | \
    sed \
        -e 's/, --type=noX / /' 

}

_patch_table() { 
    _patch_table_dedup_options \
        ';;' \
        '--help-types' \
        '--help-colors' \
        '--help-rgb-colors' \
        '--proximate' \
    | \
    _patch_table_edit_options \
        '--\\[no\\]ignore-dir;*[`_choice_ignore_directory`]' \
        '--\\[no\\]ignore-directory;*[`_choice_ignore_directory`]' \
        '--ignore-file;*[`_choice_ignore_file`]' \
        '--type-add;*[`_choice_type_add`]' \
        '--type-del;*[`_choice_type`]' \
        '--type-set;*[`_choice_type_add`]' \
    | \
    _patch_table_edit_arguments ';;' 'path...'
}

_choice_ignore_directory() {
    ack --dump | sed -n 's/^\s*--ignore-directory=//p'
}

_choice_ignore_file() {
    ack --dump | sed -n 's/^\s*--ignore-file=//p' | _argc_util_comp_parts :
}

_choice_type_add() {
    ack --dump | sed -n 's/^\s*--type-add=//p' | _argc_util_comp_parts :
}

_choice_type() {
    ack --dump | sed -n 's/^\s*--type-add=\([^:]\+\):.*$/\1/p'
}
