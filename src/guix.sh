_patch_help() { 
    if [[  "$*" == "guix system "*  ]] \
    || [[  "$*" == "guix import "*  ]] \
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

    elif [[ "$*" == "guix system" ]] \
      || [[ "$*" == "guix import" ]] \
      || [[ "$*" == "guix container" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments ';;'

    elif [[ "$*" == "guix container exec" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'pid;[`_module_os_pid`]' \
            'command;[`_module_os_command`]' \
            'args;~[`_choice_args`]' \

    elif [[ "$*" == "guix time-machine" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments ';;' 'command;~[`_choice_time_machine_command`]'

    elif [[ "$*" == "guix environment" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'package;[`_choice_installed_package`]' \
            'command;~[`_module_os_command_string`]' \

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

_choice_args() {
    _argc_util_comp_subcommand 0
}