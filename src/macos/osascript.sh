_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '-s;*[`_choice_flag`]' \

}

_choice_flag() {
    cat <<-'EOF'
h	Print values in human-readable form (default).
s	Print values in recompilable source form.
e	Print script errors to stderr (default).
o	Print script errors to stdout.
EOF
}
