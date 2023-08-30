_patch_help() {

    cat <<-'EOF'
Usage: cal [[month] year]
-h          Turns off highlighting of today.
-j          Display Julian days (days one-based, numbered from January 1).
-m month    Display the specified month.
-y          Display a calendar for the specified year.
-3          Display the previous, current and next month surrounding today.
-A number   Months to add after.
-B number   Months to add before.
EOF
}

_patch_table() {
    _patch_table_edit_options \
        '-m;[`_choice_month`]' \

}

_choice_month() {
    seq 1 12
}
