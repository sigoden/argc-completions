_patch_table() { 
    _patch_table_edit_options \
        '--abstraction;[none|basic]' \
        '--view;[playback|capture|all]' \
        '--card;[`_choice_card`]' \

}

_choice_card() {
    aplay -l | grep '^card [0-9]\+' | sed 's/card \([0-9]\+\): \(.\+\) \[.*\].*/\1\t\2/'
}