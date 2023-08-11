_patch_table() { 
    _patch_table_edit_options  '--mode;[`_choice_mode`]' | \
    _patch_table_edit_arguments ';;' 'input-file'
}

_choice_mode() {
    cat <<-'EOF'
line	opening and closing curly and square brackets are shown and all Object keys are quoted.
data	closing braces, commas, and quotes around Object keys are elided.
EOF
}
