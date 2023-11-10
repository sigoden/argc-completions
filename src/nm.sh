_patch_table() {
    _patch_table_add_metadata 'symbol @file' | \
    _patch_table_edit_options \
        '--demangle;[none|auto|gnu-v3|java|gnat|dlang|rust];Decode mangled/processed symbol' \
        '--format;[bsd|sysv|posix]' \
        '--unicode;;Controls the display of UTF-8 encoded multibyte characters in strings' \

}
