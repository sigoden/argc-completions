_patch_help() { 
    if [[ "$*" == "guix copy" ]] \
    || [[ "$*" == "guix import "* ]] \
    || [[ "$*" == "guix system "* ]] \
    ; then
        :;
    else
        $@ --help | sed 's/^\s*\(\S\+.*commands\)$/\1/'
    fi
}

_patch_table() { 
    table="$( \
        _patch_table_edit_arguments \
            'packages;[`_choice_package`]' \
            'package;[`_choice_package`]' \
            'package-or-derivation;[`_choice_package`]' \
    )"

    if [[ "$*" == "guix remove" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'packages;[`_choice_installed_package`]'

    elif [[ "$*" == "guix system" ]]; then
        echo "$table" | \
        _patch_table_dedup_options \
            '--target' \
        | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "guix time-machine" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'command;~[`_choice_time_machine_command`]'

    elif [[ "$*" == "guix container" ]] \
      || [[ "$*" == "guix import" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "guix container exec" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'pid;[`_module_os_pid`]' \
            'command;[`_module_os_command`]' \
            'args;~[`_module_os_command_args`]' \

    elif [[ "$*" == "guix environment" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'package;*[`_choice_installed_package`]' \
            'command' \

    else
        echo "$table"
    fi
}

_choice_package() {
    guix package -A
}

_choice_installed_package() {
    guix package -I
}

_choice_time_machine_command() {
    _argc_util_comp_subcommand 0 guix
}
