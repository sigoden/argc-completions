#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -A --address-radix[`_choice_address_radix`] <RADIX>  output format for file offsets; RADIX is one of [doxn], for Decimal, Octal, Hex or None
# @option --endian[big|little]                    swap input bytes according the specified order
# @option -j --skip-bytes <BYTES>                 skip BYTES input bytes first
# @option -N --read-bytes <BYTES>                 limit dump to BYTES input bytes
# @option -S --strings <BYTES>                    output strings of at least BYTES graphic chars; 3 is implied when BYTES is not specified
# @option -t --format[`_choice_format`] <TYPE>    select output format or formats
# @flag -v --output-duplicates                    do not use * to mark line suppression
# @option -w --width <BYTES>                      output BYTES bytes per output line; 32 is implied when BYTES is not specified
# @flag --traditional                             accept arguments in third form above
# @flag --help                                    display this help and exit
# @flag --version                                 output version information and exit
# @flag -a                                        same as -t a,  select named characters, ignoring high-order bit
# @flag -b                                        same as -t o1, select octal bytes
# @flag -c                                        same as -t c,  select printable characters or backslash escapes
# @flag -d                                        same as -t u2, select unsigned decimal 2-byte units
# @flag -f                                        same as -t fF, select floats
# @flag -i                                        same as -t dI, select decimal ints
# @flag -l                                        same as -t dL, select decimal longs
# @flag -o                                        same as -t o2, select octal 2-byte units
# @flag -s                                        same as -t d2, select decimal 2-byte units
# @flag -x                                        same as -t x2, select hexadecimal 2-byte units
# @arg file*

_choice_address_radix() {
    cat <<-'EOF'
d	decimal
n	none
o	octal
x	hexadecimal
EOF
}

_choice_format() {
    cat <<-'EOF'
a	named character
c	character (C-style escape)
d	decimal
f	floating-point number
o	octal
u	unsigned decimal
x	hexadecimal
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"