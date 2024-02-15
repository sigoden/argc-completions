_patch_help() {
    if [[ "$*" == "dkms" ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/^SYNOPSIS/,+2 d' \
            -e 's/^ACTIONS/COMMANDS/' \

    else
        _patch_help_run_man $1 | \
        sed -n "s/^       $2\( \|$\)/Usage: $1 $2\1/p"

    fi
}

_patch_table() {
    if [[ "$*" == "dkms" ]]; then
        _patch_table_add_metadata 'combine-shorts' | \
        _patch_table_edit_options \
            '--arch;[`_choice_arch`]' \
            '--templatekernel;[`_choice_kernel_arch`]' \
            '-k;[`_choice_kernel_arch`]' \

    else
        _patch_table_edit_arguments \
            'module-version;[`_choice_module_version`]' \
            'module-module-version;[`_choice_module_version`]' \

    fi
    
}

_choice_kernel_arch() {
    _argc_util_mode_kv '/'
    if [[ -z "$argc__kv_prefix" ]]; then
        ls -1 /lib/modules/ | _argc_util_transform nospace
    else
        find /lib/modules/$argc__kv_prefix/build/arch/ -maxdepth 1 -type d ! -type l -printf "%P\n" | tail -n +2
    fi
}

_choice_arch() {
    find /lib/modules/$(uname -r)/build/arch/ -maxdepth 1 -type d ! -type l -printf "%P\n" | tail -n +2
}

_choice_module_version() {
    find "${argc_dkmstree:-"/var/lib/dkms"}" -maxdepth 2 -type d ! -type l -printf "%P\n" | grep '/'
}
