_patch_table() {
    _patch_table_edit_options \
        '-A(<value>)' \
        '-N(<value>)' \
        '-S(<value>)' \
        '-T(<value>)' \
        '-U(<value>)' \
        '-s;[`_choice_controller`]' \
        '-v;[`_choice_verbosity`]' \

}

_choice_controller() {
    light -L 2>/dev/null | sed -n '2,$ s/^\s\+\(\S\+\)$/\1/p'
}

_choice_verbosity() {
    cat <<-'EOF'
0	Values only
1	Values, Errors.
2	Values, Errors, Warnings.
3	Values, Errors, Warnings, Notices.
EOF
}
