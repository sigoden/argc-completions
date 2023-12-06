#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -n <name>    specify the session token instead of getting a random one
# @option -r <name>    same, but for the read-only token
# @option -k <key>     specify an api-key, necessary for using named sessions on tmate.io
# @flag -F             set the foreground mode, useful for setting remote access
# @option -f <path>    set the config file path
# @option -S <path>    set the socket path, useful to issue commands to a running tmate instance
# @option -a <path>    limit access to ssh public keys listed in provided file
# @flag -v             set verbosity (can be repeated)
# @flag -V             print version
# @arg command~[`_choice_command`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_command() {
    _argc_util_comp_subcommand 0 tmux
}

command eval "$(argc --argc-eval "$0" "$@")"