#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -C --console[`_choice_device`] <DEV>    the console device to be used.
# @flag -a --ascii                                force conversion to ASCII.
# @flag -b --bkeymap                              output a binary keymap to stdout.
# @flag -c --clearcompose                         clear kernel compose table.
# @flag -d --default                              load default.
# @flag -m --mktable                              output a 'defkeymap.c' to stdout.
# @flag -p --parse                                search and parse keymap without action.
# @flag -s --clearstrings                         clear kernel string table.
# @flag -u --unicode                              force conversion to Unicode.
# @flag -q --quiet                                suppress all normal output.
# @flag -v --verbose                              be more verbose.
# @flag -V --version                              print version number.
# @flag -h --help                                 print this usage message.
# @arg mapfile*

_choice_device() {
    find /dev/ -type c 
}

command eval "$(argc --argc-eval "$0" "$@")"