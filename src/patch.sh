_patch_table() { 
    _patch_table_edit_options \
        '--read-only;[ignore|warn|fail]' \
        '--reject-format;[context|unified]' \
        '--version-control;[simple|numbered|existing]' \
    | \
    _patch_table_edit_arguments ';;' 'ORIGINFILE' 'PATCHFILE'
}
