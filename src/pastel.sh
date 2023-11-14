_patch_help() {
    $@ --help | sed 's/\*\(\w\+\)\*/\1/g'
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'color;[`_choice_color`]' \
    )"

    if [[ "$*" == "pastel mix" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'color;*[`_choice_color`]'

    else
        echo "$table"
    fi
}

_choice_color() {
    printf "%s(\x00\n" rgb hsl gray rgba hsla 
    printf "%s\n" black silver gray white maroon red purple fuchsia green \
        lime olive yellow navy blue teal aqua
}
