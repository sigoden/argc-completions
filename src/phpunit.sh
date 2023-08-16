_patch_table() { 
    _patch_table_dedup_options \
        '--columns' \
    | \
    _patch_table_edit_options \
        '--group;[`_choice_group`]' \
        '--testsuite;[`_choice_suite`]' \
    
}

_choice_suite() {
    phpunit --list-groups | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

_choice_group() {
    phpunit --list-suites | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}
