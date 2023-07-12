_patch_table() { 
    _patch_table_edit_arguments 'NAME;[`_choice_locale`]'
}

_choice_locale() {
    localectl list-locales
}