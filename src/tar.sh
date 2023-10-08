_patch_help() { 
    $@ --help | \
    sed \
        -e '/Mandatory or optional/,$ d' \
        -e 's/--verbatim-files-from  -T/--verbatim-files-from  The -T/' \

}

_patch_table() { 
    _patch_table_add_metadata 'combine-shorts' | \
    _patch_table_edit_options \
        '--atime-preserve;[replace|system]' \
        '--backup;[existing|never|nil|numbered|simple|t]' \
        '--file(<FILE>)' \
        '--format;[gnu|oldgnu|pax|posix|ustar|v7]' \
        '--group;[`_module_os_group`]' \
        '--owner;[`_module_os_user`]' \
        '--quoting-style;[c|clocale|c-maybe|escape|literal|locale|shell|shell-always]' \
    | \
    _patch_table_edit_arguments ';;' 'FILES;*[`_choice_files`]'
}

_choice_files() {
    if [[ -n $argc_delete ]] \
    || [[ -n $argc_list ]] \
    || [[ -n $argc_x ]] \
    || [[ -n $argc_extract ]] \
    || [[ -n $argc_get ]] \
    ; then
        if [[ -n "$argc_file" ]]; then
            _argc_util_cache 3600 _choice_ls_tar_file "tar__choice_ls_tar_file:$argc_file" | _argc_util_comp_parts /
            return
        fi
    fi
    _argc_util_comp_path
}

_choice_ls_tar_file() {
    tar --list --file  "$argc_file"
}
