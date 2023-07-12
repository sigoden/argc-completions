_patch_help() { 
    echo "Usage: telnet [options] [host]"
    man telnet | sed -n '/^DESCRIPTION/, /Protocol:/ {//!p}'
}

_patch_table() { 
    _patch_table_edit_options '-l;[`_choice_user`]'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}