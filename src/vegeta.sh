_patch_help() {
    if [[ $# -eq 1 ]]; then
        help_text="$($@ --help 2>&1)"
        echo "$help_text" | sed -n '/^global flags:/,/^\s*$/ p'
        echo "Commands:" 
        echo "$help_text" | sed -n 's/^\(\S\+\) command:/  \1/p'
    else
        $1 --help 2>&1 | sed -n "/$2 command:/,/^\s*$/ {//!p}"
    fi
}

_patch_table() {
    table="$( \
        _patch_table_detect_value_type \
    )"

    if [[ "$*" == "vegeta" ]]; then
        echo "$table" | \
        _patch_table_add_metadata inherit-flag-options | \
        _patch_table_edit_options \
            '-profile;[cpu|heap]' \

    elif [[ "$*" == "vegeta report" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '-buckets; ;Histogram buckets' \

    else
        echo "$table"
    fi
}
