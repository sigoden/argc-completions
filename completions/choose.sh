#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c --character-wise    Choose fields by character number
# @flag -d --debug             Activate debug mode
# @flag -x --exclusive         Use exclusive ranges, similar to array indexing in many programming languages
# @flag -h --help              Prints help information
# @flag -n --non-greedy        Use non-greedy field separators
# @flag --one-indexed          Index from 1 instead of 0
# @flag -V --version           Prints version information
# @option -f --field-separator <field-separator>  Specify field separator other than whitespace, using Rust `regex` syntax
# @option -i --input <file>    Input file
# @option -o --output-field-separator <output-field-separator>  Specify output field separator
# @arg choices+                Fields to print.

command eval "$(argc --argc-eval "$0" "$@")"