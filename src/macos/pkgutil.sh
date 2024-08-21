_patch_table() {
    _patch_table_dedup_options \
        '--pkgs' \
    | \
    _patch_table_edit_options \
        '--edit-pkg;[`_choice_pkgid`]' \
        '--export-plist;[`_choice_pkgid`]' \
        '--files;[`_choice_pkgid`]' \
        '--forget;[`_choice_pkgid`]' \
        '--group-pkgs;[`_choice_group`]' \
        '--lsbom;[`_choice_pkgid`]' \
        '--pkg-groups;[`_choice_pkgid`]' \
        '--pkg-info;[`_choice_pkgid`]' \
    | \
    _patch_table_edit_arguments ';;'

}

_choice_pkgid() {
    pkgutil --pkgs
}

_choice_group() {
    pkgutil --groups
}
