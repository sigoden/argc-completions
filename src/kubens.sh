_patch_help() {
    echo "USAGE: $1 NAME"
    $@ --help | \
    sed -n "s/^  $1 -/  -/p" | \
    sed -e 's/ : /   /'
}

_patch_table() {
    _patch_table_edit_arguments 'name;[`_choice_name`]'
}

_choice_name() {
    echo -
    _choice_ns
}

_choice_ns() {
    kubens
}
