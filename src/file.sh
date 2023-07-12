_patch_table() { 
    _patch_table_edit_options \
        '--magic-file(<FILES>);*,' \
        '--exclude;[`_choice_test`]' \
        '--exclude-quiet;[`_choice_test`]'
}

_choice_test() {
    printf "%s\n" apptype ascii cdf compress csv elf encoding soft tar json text tokens
}