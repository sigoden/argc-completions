_patch_table() {
    _patch_table_edit_options \
        '--detach(loopdev+);[`_choice_loopdev`]' \
        '--direct-io;[on|off]' \
        '--output;*,[`_choice_column`]' \

}

_choice_loopdev() {
    if [[ -z "$ARGC_CWORD" ]]; then
        ls -1 /dev/loop*
    else
        _argc_util_comp_path
    fi
}

_choice_column() {
    losetup --help | sed -n '/^Available output columns:/,/^\s*$/ {//d; s/^\s*\(\S\+\) \(.*\)/\1\t\2/p}'
}
