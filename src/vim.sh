_patch_help() { 
    $@ --help | \
    sed \
        -e '/-r (with file name)/ d' \
        -e '/only for "ex"/ d' \
        -e 's/\s\+\(.*\) (also: \(.*\))/   \2 \1/' \

}

_patch_table() { 
    _patch_table_edit_options \
        '-u(<vimrc-file>)' \
        '-U(<gvimrc-file>)' \
        '-S(<session-file>)' \
        '-s(<scriptin-file>)' \
        '-w(<scriptout-file>)' \
        '-W(<scriptout-file>)' \
        '-i(<viminfo-file>)' \
    | \
    _patch_table_edit_arguments ';;' 'paths...'
}