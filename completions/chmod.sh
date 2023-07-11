#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --changes             like verbose but report only when a change is made
# @flag -f                       suppress most error messages
# @flag --silent                 suppress most error messages
# @flag --quiet                  suppress most error messages
# @flag -v --verbose             output a diagnostic for every file processed
# @flag --no-preserve-root       do not treat '/' specially (the default)
# @flag --preserve-root          fail to operate recursively on '/'
# @option --reference <RFILE>    use RFILE's mode instead of MODE values
# @flag -R --recursive           change files and directories recursively
# @flag --help                   display this help and exit
# @flag --version                output version information and exit
# @arg MODE[`_choice_mode`]
# @arg FILE*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_mode() {
    if [[ -n "$argc_reference" ]]; then
        _argc_util_comp_file
    else
        echo
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"