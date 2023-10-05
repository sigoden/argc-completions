_patch_help() {
    if [[ $# -eq 1 ]]; then
        $@ --help
    fi
}

_patch_table() {
    if [[ "$*" == "aptitude" ]]; then
        _patch_table_add_metadata inherit-flag-options

    elif [[ "$*" == "aptitude install" ]] \
      || [[ "$*" == "aptitude safe-upgrade" ]] \
      || [[ "$*" == "aptitude full-upgrade" ]] \
      || [[ "$*" == "aptitude build-dep" ]] \
      || [[ "$*" == "aptitude show" ]] \
      || [[ "$*" == "aptitude showsrc" ]] \
      || [[ "$*" == "aptitude versions" ]] \
      || [[ "$*" == "aptitude changelog" ]] \
      || [[ "$*" == "aptitude download" ]] \
      || [[ "$*" == "aptitude source" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'pkg;*[`_choice_package`]'

    elif [[ "$*" == "aptitude remove" ]] \
      || [[ "$*" == "aptitude purge" ]] \
      || [[ "$*" == "aptitude hold" ]] \
      || [[ "$*" == "aptitude unhold" ]] \
      || [[ "$*" == "aptitude forbid-version" ]] \
      || [[ "$*" == "aptitude reinstall" ]] \
      || [[ "$*" == "aptitude makeauto" ]] \
      || [[ "$*" == "aptitude unmakeauto" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'pkg;*[`_choice_installed_package`]'

    elif [[ "$*" == "aptitude search" ]]; then
        _patch_table_edit_arguments ';;' 'pattern'

    elif [[ "$*" == "aptitude why" ]] \
      || [[ "$*" == "aptitude why-not" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'pkg;[`_choice_installed_package`]'

    elif [[ "$*" == "aptitude add-user-tag" ]] \
      || [[ "$*" == "aptitude remove-user-tag" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'tag' 'pkg;*[`_choice_installed_package`]'

    else
        cat
    fi
}

_choice_package() {
    apt-cache --no-generate pkgnames
}

_choice_installed_package() {
    dpkg --get-selections | gawk '{if (match($2, /(install|hold)/)) { print $1}}'
}
