#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -n --null-input               use `null` as the single input value;
# @flag -R --raw-input                read each line as string instead of JSON;
# @flag -s --slurp                    read all inputs into an array and use it as the single input value;
# @flag -c --compact-output           compact instead of pretty-printed output;
# @flag -r --raw-output               output strings without escapes and quotes;
# @flag --raw-output0                 implies -r and output NUL after each output;
# @flag -j --join-output              implies -r and output without newline after each output;
# @flag -a --ascii-output             output strings by only ASCII characters using escape sequences;
# @flag -S --sort-keys                sort keys of each object on output;
# @flag -C --color-output             colorize JSON output;
# @flag -M --monochrome-output        disable colored output;
# @flag --tab                         use tabs for indentation;
# @option --indent <n>                use n spaces for indentation (max 7 spaces);
# @flag --unbuffered                  flush output stream after each output;
# @flag --stream                      parse the input value in streaming fashion;
# @flag --stream-errors               implies --stream and report parse error as an array;
# @flag --seq                         parse input/output as application/json-seq;
# @option -f --from-file <file>       load filter from the file;
# @option -L <directory>              search modules from the directory;
# @option --arg <name> <value>        set $name to the string value;
# @option --argjson <name> <value>    set $name to the JSON value;
# @flag --slurpfile                   name file set $name to an array of JSON values read from the file;
# @option --rawfile <name> <file>     set $name to string contents of file;
# @flag --args                        consume remaining arguments as positional string values;
# @flag --jsonargs                    consume remaining arguments as positional JSON values;
# @flag -e --exit-status              set exit status code based on the output;
# @flag -V --version                  show the version;
# @flag --build-configuration         show jq's build configuration;
# @flag -h --help                     show the help;
# @arg jq-filter! <jq filter>
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"