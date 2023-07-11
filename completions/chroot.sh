#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --groups*,[`_choice_group`] <G_LIST>    specify supplementary groups as g1,g2,..,gN
# @option --userspec[`_choice_user_group`] <USER:GROUP>  specify user and group (ID or name) to use
# @flag --skip-chdir                              do not change working directory to '/'
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit
# @arg PATH

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_user | _argc_util_transform suffix=: nospace
    else
        _helper_group
    fi
}

_choice_user() {
    cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

_choice_group() {
    cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"