_patch_help() {
    $@ --help | sed 's/, --inventory-file INVENTORY//'
}

_patch_table() {
    _patch_table_edit_options \
        '--become-method;[`_choice_become_method`]' \
        '--inventory(<INVENTORY_FILE>);*,' \
        '--module-name;[`_choice_module`]' \
    | \
    _patch_table_edit_arguments 'pattern;[`_choice_host`]'
    
}

_choice_become_method() {
    ansible-doc -t become -l | sed 's/\s\+/\t/'
}

_choice_host() {
    ansible-inventory $(_argc_util_param_select_options --inventory --playbook-dir) --list | \
    yq  '.[].hosts // [] | .[], keys | filter(. != "_meta") | .[]'
}

_choice_module() {
    ansible-doc --list | sed 's/^\(\S\+\)\s*\(.*\)$/\1\t\2/' | _argc_util_comp_parts '.'
}
