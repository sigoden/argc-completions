_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-F;[1|0]' \
        '-l;[`_choice_level`]' \
        '-m;[1|0]' \
        '-n;[1|0]' \
        '-o;[1|0]' \
        '-z;[`_choice_level2`]' \

}

_choice_level() {
    seq 0 7
}

_choice_level2() {
    seq 0 15
}
