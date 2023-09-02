_patch_help() {
    $@ --help | \
    sed \
        -e '/^\s*-/ s/ | -/, -/g' \
        -e 's/--delete-bootnum/--delete-bootnum /' \

}

_patch_table() {
    _patch_table_edit_options \
        '--bootnext;[`_choice_boot`]' \
        '--bootnum;[`_choice_boot`]' \
    
}

_choice_boot() {
    efibootmgr | sed -n 's/Boot\(\S\+\)\* \(.*\)$/\1\t\2/p'
}
