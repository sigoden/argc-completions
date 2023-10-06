_patch_help() {
    echo "Usage: scp [options] <paths>..."
    _patch_help_run_man scp | sed -n '/^DESCRIPTION/, /^EXIT STATUS/ {//!p}'
}

_patch_table() {
    _patch_table_add_metadata combine-shorts | \
    _patch_table_edit_options \
        '-c;*,[`_module_ssh_cipher`]' \
        '-o;[`_module_ssh_option`]' \
    | \
    _patch_table_edit_arguments 'paths;[`_choice_path`]'
}

_choice_path() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_ssh_host | _argc_util_transform suffix=: nospace
        _argc_util_comp_path
    else
        ssh -o 'Batchmode yes' "$argc__kv_key" command ls -a1dp "$argc__kv_filter*" 2>/dev/null \
            | _argc_util_comp_parts / "$argc__kv_filter" "$argc__kv_prefix" 
    fi
}
