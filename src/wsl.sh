_patch_help() { 
    if [[ $# -eq 1 ]]; then
        $@ --help | tr -d '\r\0' | sed 's/ \[Options\]$//'
    elif [[ $# -eq 2 ]]; then
        $1 --help | tr -d '\r\0' | sed -n '/^    '"$2"'\( \|,\)/,/^    --/ {//!p}' | sed 's/^        //' 
    fi
}

_patch_table() {
    if [[ "$*" == "wsl" ]]; then
        _patch_table_edit_options \
            '--distribution;[`_choice_distro`]' \
            '--exec;~[`_module_os_exec`]' \
            '--export;~[`_choice_export`]' \
            '--import' \
            '--install' \
            '--list' \
            '--set-default;[`_choice_distro`]' \
            '--set-default-version;[`_choice_version`]' \
            '--set-version;~[`_choice_set_version`]' \
            '--terminate;[`_choice_distro`]' \
            '--unregister;[`_choice_distro`]' \
            '--update' \
        | \
        _patch_table_edit_commands \
            ';;' \
            '--install;Install additional Windows Subsystem for Linux distributions.' \
            '--update;If no options are specified, the WSL 2 kernel will be updated to the latest version.' \
            '--import;Imports the specified tar file as a new distribution.' \
            '--list(--list, -l);Lists distributions.' \

    elif [[ "$*" == "wsl --install" ]]; then
        _patch_table_edit_options \
            '--distribution;[`_choice_distro`]' \

    elif [[ "$*" == "wsl --import" ]]; then
        _patch_table_edit_options \
            '--version;[`_choice_version`]' \
        | \
        _patch_table_edit_arguments \
            ';;' \
            'distro;[`_choice_distro`]' \
            'installLocation' \
            'filename' \

    else
        cat

    fi
}

_choice_distro() {
    wsl --list | tr -d '\r\0' | sed -n '2,$ {s/^\(\S\+\).*$/\1/p}'
}

_choice_version() {
    printf "%s\n" 1 2
}

_choice_export() {
    if [[ "${#argc_export}" -lt 2 ]]; then
        _choice_distro
    else
        _argc_util_comp_path
    fi
}

_choice_set_version() {
    if [[ "${#argc_set_version}" -lt 2 ]]; then
        _choice_distro
    else
        _choice_version
    fi
}
