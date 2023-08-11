_patch_table() { 
    _patch_table_edit_options '--output-error;[`_choice_output_error`]'
}

_choice_output_error() {
    cat <<-'EOF'
warn	diagnose errors writing to any output
warn-nopipe	diagnose errors writing to any output not a pipe
exit	exit on error writing to any output
exit-nopipe	exit on error writing to any output not a pipe
EOF
}
