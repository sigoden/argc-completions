#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C <path>    Start in <path>
# @arg cmd![`_choice_cmd`]
# @arg args~[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cmd() {
    tig --help | sed -n 's/^\s*or: tig \([a-z]\S\+\).*/\1/p'   
}

_choice_args() {
    _argc_util_comp_subcommand 0 git
}

command eval "$(argc --argc-eval "$0" "$@")"