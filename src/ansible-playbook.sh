_patch_help() {
    $@ --help | sed 's/, --inventory-file INVENTORY//'
}

_patch_table() {
    _patch_table_edit_options \
        '--become-method;[`_choice_become_method`]' \
        '--inventory(<INVENTORY_FILE>);*,' \
        '--skip-tags;*,[`_choice_tag`]' \
        '--tags;*,[`_choice_tag`]' \
    | \
    _patch_table_edit_arguments ';;' 'playbook-file...'
    
}

_choice_tag() {
    printf "%s\tBuiltin tags\n" all tagged untagged
    ansible-playbook $(_argc_util_param_select_options --inventory) "${argc__positionals[@]}" --list-tags 2>/dev/null  | \
    sed -n -e 's/^\s*TASK TAGS: \[\(.*\)\].*/\1/' -e 's/, /\n/p'
}

_choice_become_method() {
    ansible-doc -t become -l | sed 's/\s\+/\t/'
}
