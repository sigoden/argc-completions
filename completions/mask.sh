#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                  Prints help information
# @flag --introspect               Print out the maskfile command structure in json
# @flag -V --version               Prints version information
# @option --maskfile <maskfile>    Path to a different maskfile you want to use
# @arg task[`_choice_task`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_task() {
    _helper_find_maskfile
    if [[ -f "$maskfile" ]]; then
        cat "$maskfile" | sed -n 's/^\s*## \(\S\+\).*$/\1/p'
    fi
}

_helper_find_maskfile() {
    maskfile="$argc_maskfile"
    if [[ -z "$maskfile" ]]; then
        maskfile="$(_argc_util_path_search_parent maskfile.md)"
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"