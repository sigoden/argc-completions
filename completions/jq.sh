#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -c                       compact instead of pretty-printed output;
# @flag -n                       use `null` as the single input value;
# @flag -e                       set the exit status code based on the output;
# @flag -s                       read (slurp) all inputs into an array; apply filter to it;
# @flag -r                       output raw strings, not JSON texts;
# @flag -R                       read raw strings, not JSON texts;
# @flag -C                       colorize JSON;
# @flag -M                       monochrome (don't colorize JSON);
# @flag -S                       sort keys of objects on output;
# @flag --tab                    use tabs for indentation;
# @option --arg <a> <v>          set variable $a to value <v>;
# @option --argjson <a> <v>      set variable $a to JSON value <v>;
# @option --slurpfile <a> <f>    set variable $a to an array of JSON texts read from <f>;
# @option --rawfile <a> <f>      set variable $a to a string consisting of the contents of <f>;
# @flag --args                   remaining arguments are string arguments, not files;
# @flag --jsonargs               remaining arguments are JSON arguments, not files;
# @arg jq-filter!
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"