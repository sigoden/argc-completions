#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -B --detect-base                   Try to detect the base URL from the <base> tag in the document.
# @flag -h --help                          Prints help information
# @flag -w --ignore-whitespace             When printing text nodes, ignore those that consist entirely of whitespace
# @flag -p --pretty                        Pretty-print the serialised output
# @flag -t --text                          Output only the contents of text nodes inside selected elements
# @flag -V --version                       Prints version information
# @option -a --attribute <attribute>       Only return this attribute (if present) from selected elements
# @option -b --base <base>                 Use this URL as the base for links
# @option -f --filename <FILE>             The input file.
# @option -o --output <FILE>               The output file.
# @option -r --remove-nodes* <SELECTOR>    Remove nodes matching this expression before output.
# @arg selector+                           The CSS expression to select [default: html]

command eval "$(argc --argc-eval "$0" "$@")"