#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --method[`_choice_method`] <TYPE>    select method TYPE
# @flag -5                                        like --method=md5crypt
# @option -S --salt                               use the specified SALT
# @option -R --rounds <NUMBER>                    use the specified NUMBER of rounds
# @option -P --password-fd <NUM>                  read the password from file descriptor NUM instead of /dev/tty
# @flag -s --stdin                                like --password-fd=0
# @flag -h --help                                 display this help and exit
# @flag -V --version                              output version information and exit
# @arg password
# @arg salt

_choice_method() {
    mkpasswd -m help | tail -n +2  | sed 's/\s\+/\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"