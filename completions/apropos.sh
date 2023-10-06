#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -d --debug                   emit debugging messages
# @flag -v --verbose                 print verbose warning messages
# @flag -e --exact                   search each keyword for exact match
# @flag -r --regex                   interpret each keyword as a regex
# @flag -w --wildcard                the keyword(s) contain wildcards
# @flag -a --and                     require all keywords to match
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
# @arg keyword*

command eval "$(argc --argc-eval "$0" "$@")"