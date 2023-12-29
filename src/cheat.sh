_patch_table() {
    _patch_table_edit_options \
        '--edit;[`_choice_personal_cheatsheet`]' \
        '--path;[`_choice_pathlist`]' \
        '--rm;[`_choice_personal_cheatsheet`]' \
        '--tag;[`_choice_tag`]' \
    | \
    _patch_table_edit_arguments 'cheatsheet;[`_choice_full_cheatsheet`]'

}

_choice_personal_cheatsheet() {
    cheat -l -t personal | tail -n +2 | cut -d' ' -f1
}

_choice_pathlist() {
    cheat -d | cut -d':' -f1
}

_choice_tag() {
    cheat -T
}

_choice_full_cheatsheet() {
    cheat -l | tail -n +2 | cut -d' ' -f1
}
