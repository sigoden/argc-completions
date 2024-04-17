_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/^COMMAND/,+2 cCOMMAND' \
            -e '/^COMMAND/,/^[A-Z]/ s/       \([a-z]\+\)\[\S\+\]/       \1/' \
            -e '/^COMMAND/,/^[A-Z]/ s/ \[.*\]//' \
            -e '/^\s*\(-@\|-n@\|-x@\|-o+\)/ d' \
            -e 's/^\s*\(-p-\|-r-\|-s-\) /\1- /' \
            -e 's/^\s*-sv-/-sv--/' \
            -e '/^SWITCHES/,/^[A-Z]/ s/^       \(-[a-z0-9@]\+\)\([<[]\S\+\)/       \1- \2/' \
            -e '/^\s*-/ s/<list>/<value>.../' \

    fi
}

_patch_table() {
    if [[ "$*" == "rar" ]]; then
        _patch_table_add_metadata inherit-flag-options | \
        _patch_table_edit_arguments ';;' | \
        _patch_table_dedup_options '-v' | \
        _patch_table_edit_commands \
            '' \
            ';;' \
            'lt;List content of archive technical' \
            'lb;List content of archive bare' \
            'lta;List content of archive technical all' \
            'vt;Verbosely list conent of archive technical' \
            'vb;Verbosely list content of archive bare' \
            'vta;Verbosely list content of archive technical all' \

    else
        cat
    fi
}
