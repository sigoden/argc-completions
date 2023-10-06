_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '--backup;[`_choice_backup`]' \
        '--no-preserve;[`_choice_preserve`]' \
        '--preserve;[`_choice_preserve`]' \
        '--reflink;[`_choice_reflink`]' \
        '--sparse;[`_choice_sparse`]' \
    | \
    _patch_table_edit_arguments ';;' 'PATHS...'
}

_choice_backup() {
    printf "%s\n" never nil none numbered off simple t
}

_choice_preserve() {
    printf "%s\n" all context links mode ownership timestamps xattr
}

_choice_reflink() {
    printf "%s\n" alway auto
}

_choice_sparse() {
    printf "%s\n" auto never always
}
