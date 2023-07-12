#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all                       display all variables
# @flag -A                             alias of -a
# @flag -X                             alias of -a
# @flag --deprecated                   include deprecated parameters to listing
# @flag -b --binary                    print value without new line
# @flag -e --ignore                    ignore unknown variables errors
# @flag -N --names                     print variable names without values
# @flag -n --values                    print only values of the given variable(s)
# @option -p --load <file>             read values from file
# @flag -f                             alias of -p
# @flag --system                       read values from all system directories
# @option -r --pattern <expression>    select setting that match expression
# @flag -q --quiet                     do not echo variable set
# @flag -w --write                     enable writing a value to variable
# @flag -o                             does nothing
# @flag -x                             does nothing
# @flag -d                             alias of -h
# @flag -h --help                      display this help and exit
# @flag -V --version                   output version information and exit
# @arg key-value*[`_choice_key_value`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_key_value() {
    _argc_util_mode_kv '='
    if [[ -z "$argc__kv_prefix" ]]; then
        sysctl --all | gawk -F ' = ' '{print $1 "=\0\t" $2}'
    else
        sysctl --values $argc__kv_key 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"