_patch_table() {
    _patch_table_edit_options \
        '--config(<FILE>)' \
        '--datauri;[base64|enc|unenc]' \
        '--eol;[lf|crlf]' \
        '--folder(<DIR>)' \
        '--input(<FILE>...)' \
        '--output(<PATH>...)' \
    | \
    _patch_table_edit_arguments 'input(input-file...)'
}
