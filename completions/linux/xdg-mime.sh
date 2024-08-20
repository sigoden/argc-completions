#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help       Show command synopsis.
# @flag --manual     Show this manual page.
# @flag --version    Show the xdg-utils version information.

# {{ xdg-mime query
# @cmd Returns information related to file types.
# @arg enum[filetype|default]
# @arg value[`_choice_query`]
query() {
    :;
}
# }} xdg-mime query

# {{ xdg-mime default
# @cmd Ask the desktop environment to make application the default application for opening files of type mimetype.
# @arg application[`_choice_application`]
# @arg mimetype*[`_choice_mimetype`]
default() {
    :;
}
# }} xdg-mime default

# {{ xdg-mime install
# @cmd Adds the file type descriptions provided in mimetypes-file to the desktop environment.
# @option --mode[user|system]    mode can be user or system.
# @flag --novendor               disable checks to ensure that the mimetypes-file to be installed has a proper vendor prefix
# @arg mimetypes-file[`_choice_application`]
install() {
    :;
}
# }} xdg-mime install

# {{ xdg-mime uninstall
# @cmd Removes the file type descriptions provided in mimetypes-file and previously added with xdg-mime install from the desktop environment.
# @option --mode[user|system]    mode can be user or system.
# @arg mimetypes-file[`_choice_application`]
uninstall() {
    :;
}
# }} xdg-mime uninstall

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"