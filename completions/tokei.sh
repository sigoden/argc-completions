#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --columns <columns>                  Sets a strict column width of the output, only available for terminal output.
# @flag -C --compact                              Do not print statistics about embedded languages.
# @option -e --exclude* <exclude>                 Ignore all files & directories matching the pattern.
# @flag -f --files                                Will print out statistics on individual files.
# @flag -h --help                                 Print help information
# @flag --hidden                                  Count hidden files.
# @option -i --input <file_input>                 Gives statistics from a previous tokei run.
# @flag -l --languages                            Prints out supported languages and their extensions.
# @option -n --num-format[1|234] <num_format_style>  Format of printed numbers, i.e., plain (1234, default), commas, dots (1.234), or underscores (1_234).
# @flag --no-ignore                               Don't respect ignore files (.gitignore, .ignore, etc.).
# @flag --no-ignore-dot                           Don't respect .ignore and .tokeignore files, including this in parent directories.
# @flag --no-ignore-parent                        Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.
# @flag --no-ignore-vcs                           Don't respect VCS ignore files (.gitignore, .hgignore, etc.) including those in parent directories.
# @option -o --output[cbor|json|yaml] <output>    Outputs Tokei in a specific format.
# @option -r --rsort[files|lines|blanks|code|comments] <rsort>  Reverse sort languages based on column
# @option -s --sort[files|lines|blanks|code|comments] <sort>  Sort languages based on column
# @option --streaming[language|path|lines|blanks|code|comments] <streaming>  prints the records as simple lines or as Json for batch processing [possible values: simple, json]
# @option -t --types <types>                      Filters output by language type, separated by a comma.
# @flag -v --verbose                              Set log output level:
# @flag -V --version                              Print version information
# @arg path*

command eval "$(argc --argc-eval "$0" "$@")"