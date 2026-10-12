_patch_help() {
    if [[ "$#" -eq 1 ]]; then
        $@ --help
    else
        $1 --help  | sed -n "s/^  $2 \(.*\)  .*/Usage: $1 $2 \1/p"
    fi
}

_patch_table() {
    if [[ "$*" == "machinectl" ]]; then
        _patch_table_add_metadata 'inherit-flag-options'

    elif [[ "$*" == "machinectl bind" ]] \
      || [[ "$*" == "machinectl copy-from" ]] \
      || [[ "$*" == "machinectl copy-to" ]] \
      || [[ "$*" == "machinectl disable" ]] \
      || [[ "$*" == "machinectl enable" ]] \
      || [[ "$*" == "machinectl kill" ]] \
      || [[ "$*" == "machinectl login" ]] \
      || [[ "$*" == "machinectl poweroff" ]] \
      || [[ "$*" == "machinectl show" ]] \
      || [[ "$*" == "machinectl start" ]] \
      || [[ "$*" == "machinectl status" ]] \
      || [[ "$*" == "machinectl terminate" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_machine`]'

    elif [[ "$*" == "machinectl clone" ]] \
      || [[ "$*" == "machinectl export-raw" ]] \
      || [[ "$*" == "machinectl export-tar" ]] \
      || [[ "$*" == "machinectl image-status" ]] \
      || [[ "$*" == "machinectl import-fs" ]] \
      || [[ "$*" == "machinectl import-raw" ]] \
      || [[ "$*" == "machinectl import-tar" ]] \
      || [[ "$*" == "machinectl pull-raw" ]] \
      || [[ "$*" == "machinectl pull-tar" ]] \
      || [[ "$*" == "machinectl read-only" ]] \
      || [[ "$*" == "machinectl remove" ]] \
      || [[ "$*" == "machinectl rename" ]] \
      || [[ "$*" == "machinectl set-limit" ]] \
      || [[ "$*" == "machinectl show-image" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_image`]'

    elif [[ "$*" == "machinectl shell" ]]; then
        _patch_table_edit_arguments ';;' 'name;[`_choice_machine`]' 'command;~[`_choice_shell_command`]'

    else
        cat
    fi
}

_choice_machine() {
    machinectl --no-legend --no-pager list | \
    sed -n 's/^\(\S\+\).*$/\1/p'
}

_choice_shell_command() {
    if [[ "${#argc__positionals[@]}" -lt 3 ]]; then
        _module_os_command
    else
        _argc_util_comp_subcommand 1
    fi
}

_choice_image() {
    machinectl --no-legend --no-pager list-images | \
    sed -n 's/^\(\S\+\).*$/\1/p'
}
