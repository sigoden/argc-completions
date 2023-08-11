_patch_table() {
    _patch_table_edit_options \
        '--exec(<args>...)' \
        '--exec-batch(<args>...)' \
        '--type;*[`_choice_type`];Filter the search' \

}

_choice_type() {
    cat <<-'EOF'
file	regular files 
directory	directories 
symlink	symbolic links 
socket	socket 
pipe	named pipe (FIFO) 
executable	executables 
empty	empty files or directories
EOF
}
