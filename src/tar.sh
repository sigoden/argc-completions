_patch_help() { 
    $@ --help | sed \
        -e '/Mandatory or optional/,$ d' \
        -e 's/--verbatim-files-from  -T/--verbatim-files-from  The -T/'
}

_patch_table() { 
    _patch_table_edit_options \
        '--atime-preserve;[replace|system]' \
        '--backup;[existing|never|nil|numbered|simple|t]' \
        '--format;[gnu|oldgnu|pax|posix|ustar|v7]' \
        '--quoting-style;[c|clocale|c-maybe|escape|literal|locale|shell|shell-always]' \
        '--owner;[`_choice_user`]' \
        '--file(<FILE>)' \
        '--group;[`_choice_group`]' | \
    _patch_table_edit_arguments ';;' 'FILES;*[`_choice_files`]'
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_choice_files() {
    if [[ -n $argc_delete ]] || [[ -n $argc_list ]] || [[ -n $argc_extract ]]; then
        if [[ -n "$argc_file" ]]; then
            tar --list --file  "$argc_file" | _argc_util_comp_parts /
            return
        fi
    fi
    _argc_util_comp_file
}