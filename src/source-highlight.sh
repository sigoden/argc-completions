_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_options \
        '--out-format;[`_choice_out_format`]' \
        '--src-lang;[`_choice_src_lang`]' \

}

_choice_src_lang() {
    source-highlight --lang-list | sed -n 's/ = /\t/p'
}

_choice_out_format() {
    source-highlight --outlang-list | sed -n 's/ = /\t/p'
}
