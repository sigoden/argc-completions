_patch_table() {
    _patch_table_edit_arguments ';;' '[target]...;[`_choice_target`]'
}

_choice_target() {
    if [[ -f Makefile ]]; then
        gawk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' Makefile
    fi
}
