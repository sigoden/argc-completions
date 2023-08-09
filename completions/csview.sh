#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -H --no-headers      Specify that the input has no header row
# @flag -n --number          Prepend a column of line numbers to the table
# @flag -t --tsv             Use '\t' as delimiter for tsv
# @option -d --delimiter     Specify the field delimiter [default: ,]
# @option -s --style[none|ascii|ascii2|sharp|rounded|reinforced|markdown|grid]  Specify the border style [default: sharp]
# @option -p --padding       Specify padding for table cell [default: 1]
# @option -i --indent        Specify global indent for table [default: 0]
# @option --sniff <LIMIT>    Limit column widths sniffing to the specified number of rows.
# @option --header-align[left|center|right] <HEADER_ALIGN>  Specify the alignment of the table header [default: center]
# @option --body-align[left|center|right] <BODY_ALIGN>  Specify the alignment of the table body [default: left]
# @flag -h --help            Print help information
# @flag -V --version         Print version information
# @arg file                  File to view

command eval "$(argc --argc-eval "$0" "$@")"