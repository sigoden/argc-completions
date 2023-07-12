_patch_table() { 
    _patch_table_edit_options '--interpreter;[`_choice_interpreter`]' '--pid;[`_choice_pid`]' | \
    _patch_table_edit_arguments ';;' 'FILES...' | \
    _patch_table_edit_commands ';;'
}

_choice_interpreter() {
    cat <<-'EOF'
console	The traditional console or command-line interpreter.
mi	The newest GDB/MI interface (currently mi2).
mi2	The current GDB/MI interface.
mi1	The GDB/MI interface included in GDB 5.1, 5.2, and 5.3.
EOF
}

_choice_pid() {
    if [[ "$ARGC_OS" == "macos" ]]; then
        ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    elif [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    else
        ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}