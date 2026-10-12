_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $@ | \
        sed \
            -e '/one of the commands below must be present/ c\COMMANDS' \

    else
        :;
    fi
}

_patch_table() {
    if [[ "$*" == "apt-get" ]]; then
        _patch_table_add_metadata combine-shorts inherit-flag-options | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "apt-get build-dep" ]] \
      || [[ "$*" == "apt-get changelog" ]] \
      || [[ "$*" == "apt-get download" ]] \
      || [[ "$*" == "apt-get install" ]] \
      || [[ "$*" == "apt-get source" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'pkg;*[`_choice_package`]'

    elif [[ "$*" == "apt-get check" ]] \
      || [[ "$*" == "apt-get purge" ]] \
      || [[ "$*" == "apt-get reinstall" ]] \
      || [[ "$*" == "apt-get remove" ]] \
      || [[ "$*" == "apt-get update" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'pkg;*[`_choice_installed_package`]'

    else
        cat
    fi
}

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}

_choice_package() {
    apt-cache --no-generate pkgnames
}
