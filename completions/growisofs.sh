#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -Z </dev/dvd>    Burn an initial session to the selected device.
# @option -M </dev/dvd>    Merge a new session to an existing one.
# @flag -version           Print version information and invoke genisoimage, also with -version option.
# @flag -dvd-compat        Provide maximum media compatibility with DVD-ROM/-Video.
# @flag -dry-run           At dry-run growisofs performs all the steps till, but not including the first write operation.
# @flag -overburn          Normally single layer DVD media can accommodate up to approximately 4.700.000.000 bytes (in marketing speech 4.7GB).
# @option -speed <N>       An option to control recording velocity.
# @arg dvd[`_choice_dvd`]
# @arg args~[`_choice_genisoimage_options`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_dvd() {
    if [[ -z "$ARGC_CWORD" ]] && [[ -e /dev/dvd ]]; then
        echo /dev/dvd
    else
        _argc_util_comp_path
    fi
}

_choice_genisoimage_options() {
    _argc_util_comp_subcommand 1 genisoimage
}

command eval "$(argc --argc-eval "$0" "$@")"