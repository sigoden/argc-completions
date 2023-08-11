_patch_help() { 
    $@ --help
    ag --list-file-types | \
    sed '/^\s*-/N;s/\n//;s/ \+/ /g;s/^ \(\S\+\) /  \1   Filetype: /'
}

_patch_table() { 
    _patch_table_edit_arguments 'file-type'
}
