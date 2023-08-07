_patch_help() { 
    $@ --help | sed '/commands:$/ a\n'
}

_patch_table() {
    _patch_table_edit_options '--interactive;[`_choice_interactive`]'
}

_choice_interactive() {
    cat <<-'EOF'
always	prompt before every removal
once	prompt when removing many files
EOF
}