_patch_help() { 
    _common_edit() {
        sed \
            -e '/^SYNOPSIS/,/^DESCRIPTION/ c\DESCRIPTION' \
            -e '/^\s*-/ s/ (absent.*)//' \
            -e '/^\s*-/ s/ (default.*)//' \
            -e 's/ (required)$//' \

    }

    if [[ "$*" == "dune cache" ]]; then
        $@ --help=plain | _common_edit | \
        sed '/ACTIONS/, /^[A-Z]/ s/       \(\S\+\) /       \1  /' 

    elif [[ "$*" == "dune cache "* ]]; then
        :;

    else
        $@ --help=plain | _common_edit
    fi
}

_patch_table() {
    table="$(
        _patch_table_edit_options \
            '--help;[auto|pager|groff|plain]' \
            '--cache-check-probability(<VAL>)' \
    )"

    if [[ "$*" == "dune" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            'runtest(runtest, test)' \
            'test' \

    elif [[ "$*" == "dune init" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--kind;[library|executable]'

    else
        echo "$table"
    fi
}