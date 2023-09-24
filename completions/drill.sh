#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                          Prints help information
# @flag --list-tags                        List all benchmark tags
# @flag --list-tasks                       List benchmark tasks (executes --tags/--skip-tags filter)
# @flag -n --nanosec                       Shows statistics in nanoseconds
# @flag --no-check-certificate             Disables SSL certification check.
# @flag -q --quiet                         Disables output
# @flag --relaxed-interpolations           Do not panic if an interpolation is not present.
# @flag -s --stats                         Shows request statistics
# @flag -V --version                       Prints version information
# @flag -v --verbose                       Toggle verbose output
# @option -b --benchmark <file>            Sets the benchmark file
# @option -c --compare <file>              Sets a compare file
# @option -r --report <file>               Sets a report file
# @option --skip-tags*[`_choice_tag`] <skip-tags>  Tags to exclude
# @option --tags*[`_choice_tag`] <tags>    Tags to include
# @option -t --threshold <threshold>       Sets a threshold value in ms amongst the compared file
# @option -o --timeout <timeout>           Set timeout in seconds for all requests

_choice_tag() {
    if [[ -f "$argc_benchmark" ]]; then
        cat "$argc_benchmark" | yq -p yaml '.. | select(has("tags")) | .tags[]'
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"