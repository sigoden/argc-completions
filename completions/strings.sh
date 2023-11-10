#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @meta symbol @file
# @flag -a --all                               Scan the entire file, not just the data section [default]
# @flag -d --data                              Only scan the data sections in the file
# @flag -f --print-file-name                   Print the name of the file before each string
# @option -n <number>                          Locate & print any sequence of at least <number>
# @option --bytes <number>                     displayable characters.
# @option -t --radix[`_choice_radix`]          Print the location of the string in base 8, 10 or 16
# @flag -w --include-all-whitespace            Include all whitespace as valid string characters
# @flag -o                                     An alias for --radix=o
# @option -T --target <BFDNAME>                Specify the binary file format
# @option -e --encoding[`_choice_encoding`]    Select character size and endianness: s = 7-bit, S = 8-bit, {b,l} = 16-bit, {B,L} = 32-bit
# @option --unicode[default|show|invalid|hex|escape|highlight]
# @option -U[d|s|i|x|e|h]                      Specify how to treat UTF-8 encoded unicode characters
# @option -s --output-separator <string>       String used to separate strings in output.
# @flag -h --help                              Display this information
# @flag -v                                     Print the program's version number
# @flag -V                                     Print the program's version number
# @flag --version                              Print the program's version number
# @arg files*

_choice_radix() {
    cat <<-'EOF'
o	8
d	10
x	16
EOF
}

_choice_encoding() {
    cat <<-'EOF'
s	7-bit
S	8-bit
b	16-bit
l	16-bit
B	32-bit
L	32-bit
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"