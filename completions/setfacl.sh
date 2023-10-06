#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -m --modify[`_choice_acl`] <acl>    modify the current ACL(s) of file(s)
# @option -M --modify-file <file>             read ACL entries to modify from file
# @option -x --remove[`_choice_acl`] <acl>    remove entries from the ACL(s) of file(s)
# @option -X --remove-file <file>             read ACL entries to remove from file
# @flag -b --remove-all                       remove all extended ACL entries
# @flag -k --remove-default                   remove the default ACL
# @option --set[`_choice_acl`] <acl>          set the ACL of file(s), replacing the current ACL
# @option --set-file <file>                   read ACL entries to set from file
# @flag --mask                                do recalculate the effective rights mask
# @flag -n --no-mask                          don't recalculate the effective rights mask
# @flag -d --default                          operations apply to the default ACL
# @flag -R --recursive                        recurse into subdirectories
# @flag -L --logical                          logical walk, follow symbolic links
# @flag -P --physical                         physical walk, do not follow symbolic links
# @option --restore <file>                    restore ACLs (inverse of `getfacl -R')
# @flag --test                                test mode (ACLs are not modified)
# @flag -v --version                          print version and exit
# @flag -h --help                             this help text
# @arg file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_acl() {
    _argc_util_mode_parts ':'
    if [[ "$argc__parts_len" -lt 2 ]]; then
        printf "%s:\0\n" u g m o

    elif [[ "$argc__parts_len" -eq 2 ]]; then
        if [[ "${argc__parts_values[0]}" == "u" ]]; then
            _module_os_user | _argc_util_transform suffix=: nospace
        elif [[ "${argc__parts_values[0]}" == "g" ]]; then
            _module_os_group | _argc_util_transform suffix=: nospace
        else
            _choice_perm
        fi

    elif [[ "$argc__parts_len" -eq 3 ]]; then
        _choice_perm

    fi
}

_choice_perm() {
    printf "%s\n" r w x rw rx wx rwx
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

_module_os_user() {
    command cat /etc/passwd | gawk -F: '{split($5,descs,","); print $1 "\t" descs[1]}'
}

command eval "$(argc --argc-eval "$0" "$@")"