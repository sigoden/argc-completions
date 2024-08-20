_patch_help() { 
    if [[ "$*" == "localectl" ]]; then
        $@ --help
    fi
}

_patch_table() { 
    if [[ "$*" == "localectl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "localectl set-locale" ]]; then
        _patch_table_edit_arguments ';;' 'loacle;*[`_choice_locale`]'

    elif [[ "$*" == "localectl set-keymap" ]]; then
        _patch_table_edit_arguments ';;' 'map;*[`_choice_map`]'

    elif [[ "$*" == "localectl set-x11-keymap" ]]; then
        _patch_table_edit_arguments ';;' \
            'layout;[`_choice_x11_layout`]' \
            'model;[`_choice_x11_model`]' \
            'options;*,[`_choice_x11_options`]' \
            'variant;[`_choice_x11_variant`]' \

    else
        cat
    fi
}

_choice_locale() {
    localectl list-locales
}

_choice_map() {
    localectl list-keymaps
}

_choice_x11_layout() {
    localectl list-x11-keymap-layouts
}

_choice_x11_model() {
    localectl list-x11-keymap-models
}

_choice_x11_options() {
    localectl list-x11-keymap-options
}

_choice_x11_variant() {
    localectl list-x11-keymap-variants
}
