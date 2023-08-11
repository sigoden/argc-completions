_patch_help() { 
    $@ --help | \
    sed \
        -e 's/--terse is/The --terse is/'  \
        -e 's/--terse --file-system is/The --terse --file-system is/' \

}

_patch_table() { 
    _patch_table_edit_options '--cached;[`_choice_cached`]'
}

_choice_cached() {
    cat <<-'EOF'
always	use cached attributes if available
never	try to synchronize with the latest attributes
default	leave it up to the underlying file system
EOF
}
