_patch_help() { 
    $@ --help | sed '/^positional arguments:/,+1 {N;s/\n\s*\x7b.*$//;s/^positional arguments:$/Commands:/;}'
}

_patch_table() {
    _patch_table_edit_arguments 'args;*[`_choice_plugin`]'
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
