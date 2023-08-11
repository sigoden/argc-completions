_patch_table() { 
    _patch_table_edit_arguments ';;' 'name' 'type;[`_choice_type`]'
}

_choice_type() {
    cat <<-'EOF'
b	create a block (buffered) special file
c	create a character (unbuffered) special file
u	create a character (unbuffered) special file
p	create a FIFO
EOF
}
