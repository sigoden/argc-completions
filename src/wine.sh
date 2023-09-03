_patch_help() {
    cat <<-'EOF'
    --help                   Display this help and exit
    --version                Output version information and exit
EOF
}

_patch_table() {
    _patch_table_edit_arguments ';;' 'exe;[`_choice_exe`]'
}

_choice_exe() {
    if [[ -z "$ARGC_CWORD" ]]; then
        printf "c:/\0\n"
        _argc_util_comp_path
    elif [[ "$ARGC_CWORD" == "c:/"* ]] || [[ "$ARGC_CWORD" == "C:/"* ]]; then
        prefix="${ARGC_CWORD%/*}"
        filter="${ARGC_CWORD##*/}"
        cd="$HOME/.wine/drive_c/${prefix:3}"
        _argc_util_comp_path "cd=$cd" "prefix=$prefix/" "filter=$filter"
    else
        _argc_util_comp_path
    fi
}
