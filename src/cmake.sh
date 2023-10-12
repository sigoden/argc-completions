_patch_help() { 
    $@ --help | \
    sed \
        -e 's|,/\S\+||' \
        -e 's/ = /    /' \
        -e 's/-L\[A\]\[H\]/-LA, -LH/' \
        -e 's/, --preset=<preset>//' \
        -e 's/=<\([A-Za-z0-9_-]\+\(|[A-Za-z0-9_-]\+\)\+\)>/={\1}/' \

}

_patch_table() { 
    _patch_table_dedup_options \
        '--preset' \
        '-Werror' \
        '-Wno-error' \
    | \
    _patch_table_edit_options \
        '--help-command;[`_choice_help_command`]' \
        '--help-manual;[`_choice_help_manual`]' \
        '--help-module;[`_choice_help_module`]' \
        '--help-policy;[`_choice_help_policy`]' \
        '--help-property;[`_choice_help_property`]' \
        '--help-variable;[`_choice_help_variable`]' \
        '--list-presets;[`_choice_list_preset`]' \
        '--preset;[`_choice_preset`]' \
        '-D;-*[`_choice_set_cache_entry`]' \
        '-E(<cmd> <args+>);[`_choice_cmd`]' \
        '-G;[`_choice_generator`]' \
        '-U;-*[`_choice_remove_cache_entry`]' \
        '-Werror(<value>);[dev|deprecated]' \
        '-Wno-error(<value>);[dev|deprecated]' \

}

_choice_set_cache_entry() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        cmake -LA -N 2>/dev/null | tail -n +2 | gawk -F: '{print $1 "=\0"}'
        return
    else
        if [[ "$argc__kv_key" == "CMAKE_BUILD_TYPE" ]]; then
            printf "%s\n" Debug Release RelWithDebInfo MinSizeRel
            return
        fi
        type="$(cmake -LA -N 2>/dev/null | tail -n +2 | grep "^$argc__kv_key")"
        if [[ -n "$type" ]]; then
            type="${type#*:}"
            type="${type%%=*}"
            case "$type" in
            FILEPATH)
                _argc_util_comp_path
                ;;
            PATH)
                _argc_util_comp_path dir
                ;;
            BOOL)
                printf "%s\n" ON OFF TRUE FALSE
                ;;
            esac
        fi
    fi
}

_choice_remove_cache_entry() {
    cmake -LA -N 2>/dev/null | tail -n +2 | cut -f1 -d:
}

_choice_generator() {
    cmake --help 2>&1 | \
    sed -n \
        -e "1,/^Generators/d" \
        -e "/^\s*(/d" \
        -e "/^  *[^ =]/{s|^ *\([^=]*[^ =]\).*$|\1|;p}" \

}

_choice_preset() {
    cmake --list-presets 2>/dev/null | \
    sed -n \
        -e 's,^[[:space:]]*"\([^"]*\)"[[:space:]]*-[[:space:]]*\(.*\),\1:\2,p' \
        -e 's,^[[:space:]]*"\([^"]*\)"[[:space:]]*$,\1,p' \

}

_choice_list_preset() {
    printf "%s\n" configure build test all
}

_choice_cmd() {
    cmake -E help 2>&1 | sed -n  '/^  [^ ]/{s|^  \([^ ]\{1,\}\) .*$|\1|;p}' 
}

_choice_help_manual() {
    cmake --help-manual-list 2>&1 | grep -v "^cmake version " | sed -e "s/([0-9])$//"
}

_choice_help_command() {
    cmake --help-command-list 2>&1 | grep -v "^cmake version "
}

_choice_help_module() {
    cmake --help-module-list 2>&1 | grep -v "^cmake version "
}

_choice_help_policy() {
    cmake --help-policy-list 2>&1 | grep -v "^cmake version "
}

_choice_help_property() {
    cmake --help-property-list 2>&1 | grep -v "^cmake version "
}

_choice_help_variable() {
    cmake --help-variable-list 2>&1 | grep -v "^cmake version "
}
