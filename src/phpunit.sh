_patch_table() { 
    _patch_table_dedup_options \
        '--columns' \
    | \
    _patch_table_edit_options \
        '--testsuite;[`_choice_suite`]' \
        '--group;[`_choice_group`]' \
    
}

_choice_suite() {
    phpunit --list-groups | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}

_choice_group() {
    phpunit --list-suites | tail -n +4 | sed -e 's/^\s*- //' -e 's/.$//'
}