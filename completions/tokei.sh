#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -C --compact                              Do not print statistics about embedded languages.
# @flag -f --files                                Will print out statistics on individual files.
# @flag -h --help                                 Prints help information
# @flag --hidden                                  Count hidden files.
# @flag -l --languages                            Prints out supported languages and their extensions.
# @flag --no-ignore                               Don't respect ignore files (.gitignore, .ignore, etc.).
# @flag --no-ignore-dot                           Don't respect .ignore and .tokeignore files, including those in parent directories.
# @flag --no-ignore-parent                        Don't respect ignore files (.gitignore, .ignore, etc.) in parent directories.
# @flag --no-ignore-vcs                           Don't respect VCS ignore files (.gitignore, .hgignore, etc.), including those in parent directories.
# @flag -V --version                              Prints version information
# @flag -v --verbose                              Set log output level:
# @option -c --columns <columns>                  Sets a strict column width of the output, only available for terminal output.
# @option -e --exclude* <exclude>                 Ignore all files & directories matching the pattern.
# @option -i --input <file_input>                 Gives statistics from a previous tokei run.
# @option -n --num-format[1|234] <num_format_style>  Format of printed numbers, i.e.
# @option -o --output[cbor|json|yaml] <output>    Outputs Tokei in a specific format.
# @option -s --sort[files|lines|blanks|code|comments] <sort>  Sort languages based on column
# @option -t --type <types>                       Filters output by language type, seperated by a comma.
# @arg path*

command eval "$(argc --argc-eval "$0" "$@")"