#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -d --debug                   emit debugging messages
# @flag -v --verbose                 print verbose warning messages
# @flag -r --regex                   interpret each keyword as a regex
# @flag -w --wildcard                the keyword(s) contain wildcards
# @flag -l --long                    do not trim output to terminal width
# @option -C --config-file <FILE>    use this user configuration file
# @option -L --locale                define the locale for this search
# @option -m --systems <SYSTEM>      use manual pages from other systems
# @option -M --manpath <PATH>        set search path for manual pages to PATH
# @option -s <LIST>                  search only these sections (colon-separated)
# @option --sections <LIST>          search only these sections (colon-separated)
# @option --section <LIST>           search only these sections (colon-separated)
# @flag -? --help                    give this help list
# @flag --usage                      give a short usage message
# @flag -V --version                 print program version
# @arg keyword*[`_choice_target`]

_choice_target() {
    man -k "^$ARGC_CWORD" | sed 's/^'$prefix'\(\S\+\) \?(.*) \+- \(.*\)$/\1\t\2/'
}

command eval "$(argc --argc-eval "$0" "$@")"