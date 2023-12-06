#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -J --json                                  use JSON output format
# @flag -P --pairs                                 use key="value" output format
# @flag -a --all                                   list each individual memory block
# @flag -b --bytes                                 print SIZE in bytes rather than in human readable format
# @flag -n --noheadings                            don't print headings
# @option -o --output*,[`_choice_column`] <list>   output columns
# @flag --output-all                               output all columns
# @flag -r --raw                                   use raw output format
# @option -S --split*,[`_choice_column`] <list>    split ranges by specified columns
# @option -s --sysroot <dir>                       use the specified directory as system root
# @option --summary[never|always|only] <when>      print summary information (never,always or only)
# @flag -h --help                                  display this help
# @flag -V --version                               display version

_choice_column() {
    cat <<-'EOF'
RANGE	start and end address of the memory range
SIZE	size of the memory range
STATE	online status of the memory range
REMOVABLE	memory is removable
BLOCK	memory block number or blocks range
NODE	numa node of memory
ZONES	valid zones for the memory range
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"