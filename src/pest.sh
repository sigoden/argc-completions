_patch_help() {
    $@ --help | \
    _patch_help_strip_ansi | \
    sed \
        '/^\s*-/ {s/|-/, -/; s/ \.\.\+ /     /;}' \

}

_patch_table() {
    _patch_table_dedup_options \
        '--columns' \
    | \
    _patch_table_edit_options \
        '--exclude-group;*[`_choice_group`]' \
        '--exclude-testsuite;*[`_choice_testsuite`]' \
        '--group;*[`_choice_group`]' \
        '--testsuite;*[`_choice_testsuite`]' \

}

_choice_testsuite() {
    composer exec -- pest --list-suites | \
    sed -n 's/^ - \(\S\+\)$/\1/p' | \
    sed 's/\.$//'
}

_choice_group() {
    composer exec -- pest --list-groups | \
    sed -n 's/^ - \(\S\+\)$/\1/p' | \
    sed 's/\.$//'
}
