_patch_help() { 
    $@ --help | \
    sed \
        -e '/-r (with file name)/ d' \
        -e '/only for "ex"/ d' \
        -e 's/\s\+\(.*\) (also: \(.*\))/   \2 \1/' \
        -e '/^\s*-/ s/\s\+or\s\+-/ -/'

}

_patch_table() { 
    _patch_table_edit_options \
        '-S(<session-file>)' \
        '-U(<gvimrc-file>)' \
        '-W(<scriptout-file>)' \
        '-i(<viminfo-file>)' \
        '-s(<scriptin-file>)' \
        '-u(<vimrc-file>)' \
        '-w(<scriptout-file>)' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}
