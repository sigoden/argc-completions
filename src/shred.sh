_patch_table() { 
    _patch_table_edit_options '--remove;[`_choice_remove`]'
}

_choice_remove() {
    cat <<-'EOF'
unlink	use standard unlink call
wipe	like unlink, but obfuscate bytes in name first
wipesync	like wipe, but sync each obfuscated byte to disk
EOF
}
