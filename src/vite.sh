_patch_help() {
    $@ --help | \
    sed \
        -e 's/\[\(string\|boolean\|number\)\] //' \
        -e 's/\[\(string\|boolean\|number\) | \(string\|boolean\|number\)\] //' \
        -e 's/\[root\]/[root-path]/' \

}

_patch_table() {
    if [[ "$*" == "vite" ]]; then
        _patch_table_edit_arguments ';;' 'root-path'
    else
        cat
    fi
}
