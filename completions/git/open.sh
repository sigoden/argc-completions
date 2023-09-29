#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --commit              open current commit
# @flag -i --issue               open issues page
# @option -s --suffix <value>    append this suffix
# @flag -p --print               just print the url
# @arg remote[`_choice_remote`]
# @arg branch[`_choice_local_branch`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_remote() {
    _git remote
}

_choice_local_branch() {
    _git branch --format '%(refname:short)	%(subject)'
}

_git() {
    git $(_argc_util_param_select_options -C --git-dir --work-tree) "$@"
}

command eval "$(argc --argc-eval "$0" "$@")"