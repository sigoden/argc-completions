_patch_help() { 
    echo "Usage: ftp [option] host"
    _patch_help_run_man ftp | \
    sed -n '/^DESCRIPTION/, /^     ! \[command \[args\]\]/ {//!p}'
}

_patch_table() { 
    _patch_table_edit_options '-N(<netrc-file>)'
}
