_patch_help() {
    $@ -help
}

_patch_table() {
    _patch_table_edit_options \
        '-backuploc;[local|central]' \
        '-doc;[`_choice_doc`]' \
        '-fastcheck;[true|false|default]' \
        '-ignorecase;[true|false|default]' \
        '-ui;[text|graphic]' \

}

_choice_doc() {
    unison -doc topics | \
    sed -n 's/^    \+\(\S\+\) \(.*\)/\1\t\2/p'
}
