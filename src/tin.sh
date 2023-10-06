_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-g;[`_choice_serv`]'
}

_choice_serv() {
    cat "$$HOME/.tin/newsrctable" | \
    sed -n '/^#/ d; s/\(\S\+\) .*/\1/p'
}
