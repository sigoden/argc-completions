_patch_help() {
    $@ --help | sed 's/, --inventory-file INVENTORY//'
}

_patch_table() {
    _patch_table_edit_options \
        '--become-method;[`_choice_become_method`]' \
        '--inventory(<INVENTORY_FILE>);*,' \
        '--module-name;[`_choice_plugin`]' \
    | \
    _patch_table_edit_arguments 'pattern;[`_choice_host`]'
    
}

_choice_plugin() {
    ansible-doc --list | \
    gawk '{
        if (deprecated == 1) {
            next
        } else if (match($0, /^(\S+)\s+(.*)$/, arr)) {
            name = arr[1]
            desc = arr[2]
            if (index(name, "ansible.builtin.") > 0) {
                print substr(name, 17) "\t" desc
            } else {
                print name "\t" desc
            }
        } else if (match($0, /^DEPRECATED:/)) {
            deprecated = 1
        }
    }' | \
    _argc_util_comp_parts '.'
}

_choice_become_method() {
    ansible-doc -t become -l | sed 's/\s\+/\t/'
}

_choice_host() {
    ansible-inventory $(_argc_util_param_select_options --inventory --playbook-dir) --list | \
    yq  '.[].hosts // [] | .[], keys | filter(. != "_meta") | .[]'
}
