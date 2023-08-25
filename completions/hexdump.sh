#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --one-byte-octal                       one-byte octal display
# @flag -c --one-byte-char                        one-byte character display
# @flag -C --canonical                            canonical hex+ASCII display
# @flag -d --two-bytes-decimal                    two-byte decimal display
# @flag -o --two-bytes-octal                      two-byte octal display
# @flag -x --two-bytes-hex                        two-byte hexadecimal display
# @option -L --color[auto|never|always] <mode>    interpret color formatting specifiers colors are enabled by default
# @option -e --format <format>                    format string to be used for displaying data
# @option -f --format-file <file>                 file that contains format strings
# @option -n --length[`_choice_multi_suffixes`] <length>  interpret only length bytes of input
# @option -s --skip[`_choice_multi_suffixes`] <offset>  skip offset bytes from the beginning
# @flag -v --no-squeezing                         output identical lines
# @flag -h --help                                 display this help
# @flag -V --version                              display version
# @arg file+

_choice_multi_suffixes() {
    if [[ "$ARGC_CWORD" =~ ^[0-9]+ ]]; then
        value=$(expr "$ARGC_CWORD" : '\([0-9]*\)')
        units=( KiB MiB GiB TiB PiB EiB ZiB YiB )
        for u in ${units[@]}; do
            echo "$value$u"
        done
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"