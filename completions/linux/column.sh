#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -t --table                          create a table
# @option -n --table-name <name>            table name for JSON output
# @option -O --table-order <columns>        specify order of output columns
# @option -N --table-columns <names>        comma separated columns names
# @option -l --table-columns-limit <num>    maximal number of input columns
# @option -E --table-noextreme <columns>    don't count long text from the columns to column width
# @flag -d --table-noheadings               don't print header
# @flag -e --table-header-repeat            repeat header for each page
# @option -H --table-hide <columns>         don't print the columns
# @option -R --table-right <columns>        right align text in these columns
# @option -T --table-truncate <columns>     truncate text in the columns when necessary
# @option -W --table-wrap <columns>         wrap text in the columns when necessary
# @flag -L --keep-empty-lines               don't ignore empty lines
# @flag -J --json                           use JSON output format for table
# @option -r --tree <column>                column to use tree-like output for the table
# @option -i --tree-id <column>             line ID to specify child-parent relation
# @option -p --tree-parent <column>         parent to specify child-parent relation
# @option -c --output-width <width>         width of output in number of characters
# @option -o --output-separator <string>    columns separator for table output (default is two spaces)
# @option -s --separator <string>           possible table delimiters
# @flag -x --fillrows                       fill rows before columns
# @flag -h --help                           display this help
# @flag -V --version                        display version
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"