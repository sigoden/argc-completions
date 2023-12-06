#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -n --length <N>                         Only read N bytes from the input.
# @option -c --bytes <N>                          An alias for -n/--length
# @option -s --skip <N>                           Skip the first N bytes of the input.
# @option --block-size <SIZE>                     Sets the size of the `block` unit to SIZE (default is 512).
# @flag -v --no-squeezing                         Displays all input data.
# @option --color[always|auto|never] <WHEN>       When to use colors.
# @option --border[unicode|ascii|none] <STYLE>    Whether to draw a border with Unicode characters, ASCII characters, or none at all [default: unicode]
# @flag -p --plain                                Display output with --no-characters, --no-position, --border=none, and --color=never.
# @flag --no-characters                           Do not show the character panel on the right.
# @flag -C --characters                           Show the character panel on the right.
# @flag -P --no-position                          Whether to display the position panel on the left.
# @option -o --display-offset <N>                 Add N bytes to the displayed file position.
# @option --panels <N>                            Sets the number of hex data panels to be displayed.
# @option -g --group-size <N>                     Number of bytes/octets that should be grouped together.
# @option --endianness[big|little] <FORMAT>       Whether to print out groups in little-endian or big-endian format.
# @option -b --base <B>                           Sets the base used for the bytes.
# @option --terminal-width <N>                    Sets the number of terminal columns to be displayed.
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @arg file                                       The file to display.

command eval "$(argc --argc-eval "$0" "$@")"