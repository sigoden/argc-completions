_patch_help() {
    echo "USAGE: $1 NAME"
    $@ --help | \
    sed -n 's/^\s\+'$1' -/  -/p' | \
    sed -e 's/ : /   /'
}

_patch_table() {
    _patch_table_edit_options \
        '-d(<NAME>);*[`_choice_ctx`]' \
    | \
    _patch_table_edit_arguments 'name;[`_choice_name`]'
}

_choice_ctx() {
    kubectx
}

_choice_name() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        echo -
        _choice_ctx
    else
        echo .
        _choice_ctx
    fi
}
