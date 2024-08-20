_patch_table() { 
    _patch_table_edit_options \
        '--abstraction;[none|basic]' \
        '--card;[`_choice_card`]' \
        '--view;[playback|capture|all]' \

}

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}
