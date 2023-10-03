_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
# -p attr_name file... - prints the value of the xattr attr_name.
# -w attr_name attrvalue file... - sets the value of the xattr attr_name to attr_value.
# -d attr_name file... - deletes the xattr attr_name.
# -c file... - clear all xattr
EOF
    if [[ $# -eq 1 ]]; then
        $@ --help | sed -n '/^options:/,$ {s/: /  /;p}'
    fi
}

_patch_table() {
    if [[ "$*" == "attr" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options | \
        _patch_table_edit_arguments ';;' 'file...'

    else
        cat
    fi
}
