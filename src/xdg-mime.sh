_patch_help() {
        cat <<-'EOF' | _patch_help_embed_help $@
--help      Show command synopsis.
--manual    Show this manual page.
--version   Show the xdg-utils version information.
# query {filetype|default} value - Returns information related to file types.
# default application mimetype... - Ask the desktop environment to make application the default application for opening files of type mimetype. 
# install mimetypes-file - Adds the file type descriptions provided in mimetypes-file to the desktop environment.
    --mode {user|system}        mode can be user or system. 
    --novendor       disable checks to ensure that the mimetypes-file to be installed has a proper vendor prefix
# uninstall mimetypes-file - Removes the file type descriptions provided in mimetypes-file and previously added with xdg-mime install from the desktop environment.
    --mode {user|system}        mode can be user or system. 
EOF
}

_patch_table() {
    if [[ "$*" == "xdg-mime query" ]]; then
        _patch_table_edit_arguments \
            'value;[`_choice_query`]' \

    elif [[ "$*" == "xdg-mime default" ]]; then
        _patch_table_edit_arguments \
            'application;[`_choice_application`]' \
            'mimetype;[`_choice_mimetype`]' \

    elif [[ "$*" == "xdg-mime install" ]] \
      || [[ "$*" == "xdg-mime uninstall" ]] \
    ; then
        _patch_table_edit_arguments \
            'mimetypes-file;[`_choice_application`]' \

    else
        cat
    fi
}

_choice_query() {
    if [[ "$argc_enum" == "default" ]]; then
        _choice_mimetype
    else
        _argc_util_comp_path
    fi
}

_choice_application() {
    mapfile -t files < <(_helper_find_xdg_applications_directories)
    find "${files[@]}" -name \*.desktop \( -type f -or -type l \) -printf '%P\n'
}

_choice_mimetype() {
    mapfile -t files < <(_helper_find_xdg_applications_directories)
    {
        for file in "${files[@]}"; do
            if [ -r "$file/mimeinfo.cache" ]; then
                cat "$file/mimeinfo.cache"
            fi
        done
    } | \
    sed -e '/\[MIME Cache\]/ d' -e 's/=/\t/'
}

_helper_find_xdg_applications_directories() {
    data_home="${XDG_DATA_HOME:-"$HOME/.local/share"}"
    data_dirs="${XDG_DATA_DIRS:-"/usr/local/share:/usr/share"}"
    data_dirs="$data_home:$data_dirs"
    IFS=':' read -a data_dir_arr <<< "$data_dirs"
    for data_dir in "${data_dir_arr[@]}"; do
        applications_dir="$data_dir/applications"
        if [[ -d "$applications_dir" ]]; then
            echo "$applications_dir"
        fi
    done
}
