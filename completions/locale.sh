#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --all-locales      Write names of available locales
# @flag -m --charmaps         Write names of available charmaps
# @flag -c --category-name    Write names of selected categories
# @flag -k --keyword-name     Write names of selected keywords
# @flag -v --verbose          Print more information
# @flag -? --help             Give this help list
# @flag --usage               Give a short usage message
# @flag -V --version          Print program version
# @arg name[`_choice_locale`]

_choice_locale() {
    localectl list-locales
}

command eval "$(argc --argc-eval "$0" "$@")"