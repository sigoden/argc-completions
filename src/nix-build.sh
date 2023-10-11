_patch_help() {
    $@ --help | \
    sed \
        -e '/^Examples/,$ d' \
        -e 's/…/.../g' \
        -e '/^       • -/ {s| / |, |;s/^       • -/    -/;}' \

}

_patch_table() {
    _patch_table_edit_options \
        '--arg;*[`_module_nix_arg_name`]' \
        '--argstr;*[`_module_nix_arg_name`]' \
        '--attr;[`_module_nix_attr`]' \
        '--log-format;[`_module_nix_log_format`]' \
        '--verbose;[`_module_nix_verbose`]' \
    | \
    _patch_table_edit_arguments 'paths;[`_module_nix_path`]'

}
