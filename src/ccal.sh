_patch_help() {
    _patch_help_run_man $@ | \
    gawk '{
        if (match($0, /^ARGUMENTS/)) {
            $0 = "COMMANDS"
            zone = 1
        } else if (match($0, /^[A-Z]/)) {
            zone = 0
        } else if (zone && match($0, /^       -/)) {
            $0 = gensub(/\[(.*)\]/, "\\1", 1, $0)
        }
        print $0
    }'
}

_patch_table() {
    _patch_table_edit_arguments \
        ';;' \
        'month;[`_choice_month`]' \
        'year' \

}

_choice_month() {
    printf "%s\n" 1 2 3 4 5 6 7 8 9 10 11 12 jan feb mar apr may jun jul aug sep oct nov dec
}
