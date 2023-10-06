_patch_help() {
    $@ -h | \
    sed \
        -e '/^-M/ d' \
        -e 's|-i/-I|-i, -I|' \
        -e 's/; -W/\n-W/' \
    | \
    sed -e '/^-/ s/ - /    /' \

}

_patch_table() { 
    _patch_table_add_metadata combine-shorts | \
    _patch_table_dedup_options '-d' | \
    _patch_table_edit_options \
        '-c;*[`_choice_alg`]' \
        ';;' \
        '-M;;like -m, but display hashes of matching files' \
        '-X;;like -x, but display hashes of matching files' \
    | \
    _patch_table_edit_arguments ';;' 'files...'
    
}

_choice_alg() {
    printf "%s\n" md5 sha1 sha256 tiger whirlpool
}
