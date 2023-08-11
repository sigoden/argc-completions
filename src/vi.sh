_patch_help() { 
    if command -v vim.tiny > /dev/null; then
        text="$(vim.tiny --help)"
    else
        text="$($@ --help)"
    fi

    echo "$text" | \
    sed  \
        -e '/-r (with file name)/ d' \
        -e '/^ \+-s/ d' \
        -e '/^\s*-/ s/\s\+or\s\+-/ -/'

}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'files...'
}
