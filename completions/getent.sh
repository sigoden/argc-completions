#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -i --no-idn                disable IDN encoding
# @option -s --service <CONFIG>    Service configuration to be used
# @flag -? --help                  Give this help list
# @flag --usage                    Give a short usage message
# @flag -V --version               Print program version
# @arg database[`_choice_database`]
# @arg key*

_choice_database() {
    printf "%s\n" ahosts ahostsv4 ahostsv6 aliases ethers group gshadow hosts \
        initgroup netgroup networks passwd protocols rpc services shadow 
}

command eval "$(argc --argc-eval "$0" "$@")"