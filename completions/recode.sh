#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -l --list <FORMAT>         list one or all known charsets and aliases
# @option -k --known <PAIRS>         restrict charsets according to known PAIRS list
# @option -h --header <[LN/]NAME>    write table NAME on stdout using LN, then exit
# @flag -T --find-subsets            report all charsets being subset of others
# @flag -C --copyright               display Copyright and copying conditions
# @flag --help                       display this help and exit
# @flag --version                    output version information and exit
# @flag -v --verbose                 explain sequence of steps and report progress
# @flag -q                           inhibit messages about irreversible recodings
# @flag --quiet                      inhibit messages about irreversible recodings
# @flag --silent                     inhibit messages about irreversible recodings
# @flag -f --force                   force recodings even when not reversible
# @flag -t --touch                   touch the recoded files after replacement
# @flag -i                           ignored for backwards compatibility
# @flag -p                           ignored for backwards compatibility
# @flag -s --strict                  use strict mappings; discard untranslatable characters
# @flag -d --diacritics              convert only diacritics and special characters for HTML/LaTeX/BibTeX
# @option -S --source <LN>           limit recoding to strings and comments as for LN
# @flag -c --colons                  use colons instead of double quotes for diaeresis
# @flag -g --graphics                approximate IBMPC rulers by ASCII graphics
# @option -x --ignore <CHARSET>      ignore CHARSET while choosing a recoding path
# @flag -I --prefer-iconv            use iconv if possible

command eval "$(argc --argc-eval "$0" "$@")"