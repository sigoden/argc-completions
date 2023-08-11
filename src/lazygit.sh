_patch_table() { 
    _patch_table_edit_options \
        '--filter(<text>)' \
        '--git-dir(<dir>)' \
        '--path(<dir>)' \
        '--use-config-dir(<dir>)' \
        '--use-config-file(<file>);*,' \
        '--work-tree(<dir>)' \
    | \
    _patch_table_edit_arguments 'arg;[status|branch|log|stash]'
}
