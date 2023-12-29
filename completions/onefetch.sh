#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            Print help (see a summary with '-h')
# @flag -V --version                         Print version
# @option -d --disabled-fields* <FIELD>      Allows you to disable FIELD(s) from appearing in the output
# @flag --no-title                           Hides the title
# @option --number-of-authors <NUM>          Maximum NUM of authors to be shown
# @option --number-of-languages <NUM>        Maximum NUM of languages to be shown
# @option --number-of-file-churns <NUM>      Maximum NUM of file churns to be shown
# @option --churn-pool-size <NUM>            Minimum NUM of commits from HEAD used to compute the churn summary
# @option -e --exclude*                      Ignore all files & directories matching EXCLUDE
# @option --no-bots <REGEX>                  Exclude [bot] commits.
# @flag --no-merges                          Ignores merge commits
# @flag -E --email                           Show the email address of each author
# @flag --include-hidden                     Count hidden files and directories
# @option -T --type*[programming|markup|prose|data]  Filters output by language type
# @option -t --text-colors* <X>              Changes the text colors (X X X...)
# @flag -z --iso-time                        Use ISO 8601 formatted timestamps
# @option --number-separator[plain|comma|space|underscore] <SEPARATOR>  Which thousands SEPARATOR to use
# @flag --no-bold                            Turns off bold formatting
# @option --ascii-input <STRING>             Takes a non-empty STRING as input to replace the ASCII logo
# @option -c --ascii-colors* <X>             Colors (X X X...) to print the ascii art
# @option -a --ascii-language <LANGUAGE>     Which LANGUAGE's ascii art to print
# @option --true-color[auto|never|always] <WHEN>  Specify when to use true color
# @option -i --image                         Path to the IMAGE file
# @option --image-protocol[kitty|sixel|iterm] <PROTOCOL>  Which image PROTOCOL to use
# @option --color-resolution[16|32|64|128|256] <VALUE>  VALUE of color resolution to use with SIXEL backend
# @flag --no-color-palette                   Hides the color palette
# @flag --no-art                             Hides the ascii art or image if provided
# @option -o --output[json|yaml] <FORMAT>    Outputs Onefetch in a specific format
# @option --generate[bash|elvish|fish|powershell|zsh] <SHELL>  If provided, outputs the completion file for given SHELL
# @flag -l --languages                       Prints out supported languages
# @flag -p --package-managers                Prints out supported package managers
# @arg input-path                            Run as if onefetch was started in <input> instead of the current working directory

command eval "$(argc --argc-eval "$0" "$@")"