_patch_help() { 
    $@ --help | \
    sed \
        -e 's/, --check=diagnose-first//' \
        -e '/-C, --check=quiet, --check=silent/ d' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--check;[`_choice_check`]' \
        '--compress-program;[bzip2|gzip|lzop|xz]' \
        '--files0-from(<FILE>)' \
        '--sort;[`_choice_sort`]' \

}

_choice_sort() {
    printf "%s\n" general-numeric human-numeric month numeric random version
}

_choice_check() {
    printf "%s\n" diagnose-first quiet silent
}
