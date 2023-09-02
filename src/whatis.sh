_patch_table() {
    _patch_table_edit_arguments 'keyword;[`_choice_target`]'
}

_choice_target() {
    man -k "^$ARGC_CWORD" | sed 's/^'$prefix'\(\S\+\) \?(.*) \+- \(.*\)$/\1\t\2/'
}
