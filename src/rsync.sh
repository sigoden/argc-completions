_patch_help() {
    rsync --help | \
    sed \
        -e '/Usage:/ cUsage: rsync [OPTION]... [SRC]... DEST' \
        -e 's/--help, -h (\*)/--help         /' \

}

_patch_table() {
    _patch_table_edit_options \
        '--checksum-choice;[`_choice_checksum`]' \
        '--compress-choice;[`_choice_compress`]' \
    | \
    _patch_table_edit_arguments \
        'src(src-path)' \
        'dest(dest-path)' \

}

_choice_checksum() {
    printf "%s\n" xxh128 xxh3 xxh64 md5 md4 sha1 none
}

_choice_compress() {
    printf "%s\n" zstd lz4 zlibx zlib none
}
