_patch_table() { 
    _patch_table_edit_options \
        '--path(<dir>)' \
        '--filter(<text>)' \
        '--use-config-dir(<dir>)' \
        '--work-tree(<dir>)' \
        '--git-dir(<dir>)' \
        '--use-config-file(<file>);*,' \
    | \
    _patch_table_edit_arguments 'arg;[status|branch|log|stash]'
}