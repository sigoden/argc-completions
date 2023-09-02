#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --groups*,[`_module_os_group`] <G_LIST>  specify supplementary groups as g1,g2,..,gN
# @option --userspec[`_choice_user_group`] <USER:GROUP>  specify user and group (ID or name) to use
# @flag --skip-chdir    do not change working directory to '/'
# @flag --help          display this help and exit
# @flag --version       output version information and exit
# @arg rootpath
# @arg command[`_module_os_command`]
# @arg arg~[`_choice_args`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_user_group() {
    _argc_util_mode_kv ':'
    if [[ -z "$argc__kv_prefix" ]]; then
        _module_os_user | _argc_util_transform suffix=: nospace
    else
        _module_os_group
    fi
}

_choice_args() {
    _argc_util_comp_subcommand 1
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"