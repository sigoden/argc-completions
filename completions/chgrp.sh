#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --changes             like verbose but report only when a change is made
# @flag -f                       suppress most error messages
# @flag --silent                 suppress most error messages
# @flag --quiet                  suppress most error messages
# @flag -v --verbose             output a diagnostic for every file processed
# @flag --dereference            affect the referent of each symbolic link (this is the default), rather than the symbolic link itself
# @flag -h --no-dereference      affect symbolic links instead of any referenced file (useful only on systems that can change the ownership of a symlink)
# @flag --no-preserve-root       do not treat '/' specially (the default)
# @flag --preserve-root          fail to operate recursively on '/'
# @option --reference <RFILE>    use RFILE's group rather than specifying a GROUP value
# @flag -R --recursive           operate on files and directories recursively
# @flag -H                       if a command line argument is a symbolic link to a directory, traverse it
# @flag -L                       traverse every symbolic link to a directory encountered
# @flag -P                       do not traverse any symbolic links (default)
# @flag --help                   display this help and exit
# @flag --version                output version information and exit
# @arg group[`_choice_group_value`]
# @arg file*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_group_value() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_path
    else
        _module_os_group
    fi
}

_module_os_group() {
    command cat /etc/group | gawk -F: '{print $1 "\t" $4}'
}

command eval "$(argc --argc-eval "$0" "$@")"