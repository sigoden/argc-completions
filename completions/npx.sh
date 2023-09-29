#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --package* <pkg>    Specify npm packages
# @flag --yes                 Suppress prompt with yes
# @flag --no                  Suppress prompt with yes
# @flag -c --call             The positional arguments are used to generate the command string
# @arg cmd![`_choice_cmd`]
# @arg args~[`_module_os_command_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cmd() {
    bin_dir="$(_argc_util_path_resolve -u "$(npm root)" .bin)"
    if [[ -d "$bin_dir" ]]; then
        ls -1 "$bin_dir" | sed -n 's/^\([A-Za-z0-9_-]\+\)\*\?$/\1/p'
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"