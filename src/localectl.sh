_patch_help() { 
    if [[ "$*" == "localectl" ]]; then
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "localectl set-keymap" ]]; then
        _patch_table_edit_arguments ';;' 'MAP;*[`_choice_map`]'
    elif [[ "$*" == "localectl set-locale" ]]; then
        _patch_table_edit_arguments ';;' 'LOACLE;*[`_choice_locale`]'
    elif [[ "$*" == "localectl set-x11-keymap" ]]; then
        _patch_table_edit_arguments ';;' \
            'LAYOUT;[`_choice_x11_layout`]' \
            'MODEL;[`_choice_x11_model`]' \
            'VARIANT;[`_choice_x11_variant`]' \
            'OPTIONS;*,[`_choice_x11_options`]'
    else
        cat
    fi
}

_choice_map() {
    localectl list-keymaps
}

_choice_locale() {
    localectl list-locales
}

_choice_x11_layout() {
    localectl list-x11-keymap-layouts
}

_choice_x11_model() {
    localectl list-x11-keymap-models
}

_choice_x11_variant() {
    localectl list-x11-keymap-variants
}

_choice_x11_options() {
    localectl list-x11-keymap-options
}