#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -m --color-mode[8-bit|24-bit] <mode>    Type of ANSI colors to be used [default: 24-bit]
# @option -d --database <path>                    Path to filetypes database (filetypes.yml)
# @flag -h --help                                 Print help
# @flag -V --version                              Print version

# {{ vivid generate
# @cmd Generate a LS_COLORS expression
# @flag -h --help                Print help
# @arg theme[`_choice_theme`]    Name of the color theme
generate() {
    :;
}
# }} vivid generate

# {{ vivid preview
# @cmd Preview a given theme
# @flag -h --help                Print help
# @arg theme[`_choice_theme`]    Name of the color theme
preview() {
    :;
}
# }} vivid preview

# {{ vivid themes
# @cmd Prints list of available themes
# @flag -h --help    Print help
themes() {
    :;
}
# }} vivid themes

_choice_theme() {
    vivid themes
}

command eval "$(argc --argc-eval "$0" "$@")"