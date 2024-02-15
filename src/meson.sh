_patch_help() {
    $@ --help | sed '/^Commands:/,/  {/ c\Commands:'
}

_patch_table() {
    if [[ "$*" == "meson install" ]]; then
        _patch_table_edit_options \
            '--skip-subprojects;*[`_choice_subproject`]' \

    elif [[ "$*" == "meson test" ]]; then
        _patch_table_edit_options \
            '--no-suite;[`_choice_test_suit`]' \
            '--suite;[`_choice_test_suit`]' \
        | \
        _patch_table_edit_arguments 'args;*[`_choice_test`]'

    elif [[ "$*" == "meson compile" ]]; then
        _patch_table_edit_arguments 'target;[`_choice_target`]'

    else
        cat
    fi
}

_choice_subproject() {
    meson introspect $(_argc_util_param_select_options -C) --projectinfo | \
    yq '.subprojects[].name'
}

_choice_test_suit() {
    meson introspect $(_argc_util_param_select_options -C) --tests | \
    yq '.[].suite.[]'
}

_choice_test() {
    meson test $(_argc_util_param_select_options -C) --no-rebuild --list | \
    sed 's| / .*||'
}

_choice_target() {
    meson introspect $(_argc_util_param_select_options -C) --targets | \
    yq '.[].name'
}
