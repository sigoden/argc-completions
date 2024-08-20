_patch_help() { 
    if [[ "$*" == "pacman" ]]; then
        :;
    else
        $@ --help | sed '/^usage:/ {s/{.*}//;s/(s)/.../}'
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_edit_options \
            '--sysroot(<dir>)' \
    )"

    if [[ "$*" == "pacman" ]]; then
        echo "$table" | \
        _patch_table_edit_commands \
            ';;' \
            '(--database, -D);Operate on the package database.' \
            '(--files, -F);Query the files database.' \
            '(--query, -Q);Query the package database' \
            '(--remove, -R);Remove package(s) from the system' \
            '(--sync, -S);Synchronize packages' \
            '(--deptest, -T);Check dependencies' \
            '(--upgrade, -U);Upgrade or add package(s) to the system and install the required dependencies from sync repositories.' \

    elif [[ "$*" == "pacman --database" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'package;[`_choice_database`]'

    elif [[ "$*" == "pacman --files" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'file;[`_choice_file_database`]'
        
    elif [[ "$*" == "pacman --query" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--file(<package-file>)' \
            '--groups;[`_choice_package_group`]' \
        | \
        _patch_table_edit_arguments 'package;[`_choice_installed_package`]'

    elif [[ "$*" == "pacman --remove" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'package;[`_choice_installed_package`]'

    elif [[ "$*" == "pacman --sync" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--groups;[`_choice_package_group`]' \
            '--ignore;[`_choice_package`]' \
            '--ignoregroup;[`_choice_package_group`]' \
            '--list;[`_choice_repo`]' \
        | \
        _patch_table_edit_arguments 'package;[`_choice_sync_package`]'

    elif [[ "$*" == "pacman --deptest" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'package;[`_choice_package`]'

    elif [[ "$*" == "pacman --upgrade" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--ignore;[`_choice_package`]' \
            '--ignoregroup;[`_choice_package_group`]' \
        
    else
        echo "$table"
    fi
}

_choice_database() {
    if [[ "$argc_asdeps" -eq 1 ]] \
    || [[ "$argc_asexplicit" -eq 1  ]] \
    || [[ "$argc_check" -eq 1  ]] \
    ; then
        _choice_installed_package
    fi
}

_choice_file_database() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package
}

_choice_package_group() {
    pacman -Sg
}

_choice_installed_package() {
    pacman -Q | sed 's/ /\t/'
}

_choice_repo() {
    cat /etc/pacman.conf  | sed -n -e '/^\[options\]/ d' -e '/^\[.*\]/ s/^\[\(.*\)\]/\1/p'
}

_choice_package() {
    pacman -Ssq 
}

_choice_sync_package() {
    _argc_util_parallel _choice_package ::: _choice_package_group
}
