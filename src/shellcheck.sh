_patch_help() {
    $@ --help | \
    sed \
        -e '/^\s*-/ s/^\s\+--/  --/' \
        -e '/^\s*-/ s/\(\S\)\s\+--/\1 --/' \

}

_patch_table() {
    _patch_table_edit_options \
        '--enable;*,[`_choice_check`]' \

}

_choice_check() {
    echo -e "all\tEnables all optional checks"
    shellcheck --list-optional | \
    sed -n '/^name:/ {N;s/^name:\s\+\(\S\+\)\ndesc:\s\+\(.*\)/\1\t\2/p}'
}
