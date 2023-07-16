_patch_table() {
    _patch_table_edit_options \
        '--type;*[`_choice_type`]' \
        '--exec(<args>...)' \
        '--exec-batch(<args>...)' \

}

_choice_type() {
    cat <<-'EOF'
f	regular files 
file	regular files 
d	directories 
directory	directories 
l	symbolic links 
symlink	symbolic links 
s	socket 
socket	socket 
p	named pipe (FIFO) 
pipe	named pipe (FIFO) 
x	executables
executable	executables 
e	empty files or directories
empty	empty files or directories
EOF
}