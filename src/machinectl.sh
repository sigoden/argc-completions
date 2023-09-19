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

    elif [[ "$*" == "machinectl status" ]] \
      || [[ "$*" == "machinectl show" ]] \
      || [[ "$*" == "machinectl start" ]] \
      || [[ "$*" == "machinectl login" ]] \
      || [[ "$*" == "machinectl enable" ]] \
      || [[ "$*" == "machinectl disable" ]] \
      || [[ "$*" == "machinectl poweroff" ]] \
      || [[ "$*" == "machinectl terminate" ]] \
      || [[ "$*" == "machinectl kill" ]] \
      || [[ "$*" == "machinectl copy-to" ]] \
      || [[ "$*" == "machinectl copy-from" ]] \
      || [[ "$*" == "machinectl bind" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_machine`]'

    elif [[ "$*" == "machinectl shell" ]]; then
        _patch_table_edit_arguments ';;' 'name;[`_choice_machine`]' 'command;~[`_choice_shell_command`]'

    elif [[ "$*" == "machinectl image-status" ]] \
      || [[ "$*" == "machinectl show-image" ]] \
      || [[ "$*" == "machinectl clone" ]] \
      || [[ "$*" == "machinectl rename" ]] \
      || [[ "$*" == "machinectl read-only" ]] \
      || [[ "$*" == "machinectl remove" ]] \
      || [[ "$*" == "machinectl set-limit" ]] \
      || [[ "$*" == "machinectl pull-tar" ]] \
      || [[ "$*" == "machinectl pull-raw" ]] \
      || [[ "$*" == "machinectl import-tar" ]] \
      || [[ "$*" == "machinectl import-raw" ]] \
      || [[ "$*" == "machinectl import-fs" ]] \
      || [[ "$*" == "machinectl export-tar" ]] \
      || [[ "$*" == "machinectl export-raw" ]] \
    ; then
        _patch_table_edit_arguments 'name;[`_choice_image`]'

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
