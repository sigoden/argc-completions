_patch_help() { 
    cat <<-'EOF'
Options:
    -a     print all matching pathnames of each argument
EOF
}

_patch_table() { 
    _patch_table_edit_arguments ';;' 'command;[`_module_os_command`]'
}
