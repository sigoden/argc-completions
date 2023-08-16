_patch_help() { 
    $@ --help 2>&1 | \
    sed \
        -e '/^Arguments:/,/^$/ d' \
        -e 's/\[--schemadir SCHEMADIR\] //' \

}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '' ';;' \
            '--schemadir SCHEMADIR' \
        | \
        _patch_table_edit_arguments \
            'schema-path;[`_choice_schema_path`]' \
            'key;[`_choice_key`]' \
    )"

    if [[ "$*" == "gsettings list-schemas" ]]; then
        echo "$table" | \
            _patch_table_edit_options \
                '' ';;' \
                '--print-paths' \

    else
        echo "$table"

    fi
}

_choice_schema_path() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_schema
        _choice_relocatable_schema | _argc_util_transform suffix=: nospace
    else
        _argc_util_comp_path
    fi
}

_choice_key() {
    if [[ -z "$argc_schema_path" ]]; then
        return
    fi
    _gsettings list-keys ${argc_schema_path%%:*}
}

_choice_relocatable_schema() {
    _gsettings list-relocatable-schemas
}

_choice_schema() {
    _gsettings list-schemas
}

_gsettings() {
    gsettings $(_argc_util_param_select_options --schemadir) "$@"
}
