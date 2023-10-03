_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
   -q    quiet output
   -L    dereference symbolic links
   -R    operator in the root attribute namespace
# -s attrname pathname - set value
   -V <value>
# -g attrname pathname - get value
# -r attrname pathname - remove value
# -l pathname
EOF
}

_patch_table() {
    if [[ "$*" == "attr" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options

    else
        cat
    fi
}
