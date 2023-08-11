_patch_table() { 
    _patch_table_edit_options \
        '--eval(<code>)' \
        '--join(<path>)' \
        '--nodejs(<value>)' \
        '--output(<dir>)' \
        '--require(<value>)' \
    | \
    _patch_table_edit_arguments ';;' 'script(file:.coffee)' 'args...'
}
