_patch_help() {
    _patch_help_run_man $@
}

_patch_table() {
    _patch_table_edit_arguments \
        ';;' \
        'dvd;[`_choice_dvd`]' \
        'args;~[`_choice_genisoimage_options`]' \

}

_choice_dvd() {
    if [[ -z "$ARGC_CWORD" ]] && [[ -e /dev/dvd ]]; then
        echo /dev/dvd
    else
        _argc_util_comp_path
    fi
}

_choice_genisoimage_options() {
    _argc_util_comp_subcommand 1 genisoimage
}
