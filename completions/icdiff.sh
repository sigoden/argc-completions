#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                                show program's version number and exit
# @flag -h --help                                show this help message and exit
# @option --cols                                 specify the width of the screen.
# @option --encoding                             specify the file encoding; defaults to utf8
# @option -E --exclude-lines <MATCHER>           Do not diff lines that match this regex.
# @option --head                                 consider only the first N lines of each file
# @flag -H --highlight                           color by changing the background color instead of the foreground color.
# @option -L --label <LABELS>                    override file labels with arbitrary tags.
# @flag -N --line-numbers                        generate output with line numbers.
# @flag --no-bold                                use non-bold colors; recommended for solarized
# @flag --no-headers                             don't label the left and right sides with their file names
# @option --output-encoding <OUTPUT_ENCODING>    specify the output encoding; defaults to utf8
# @flag -r --recursive                           recursively compare subdirectories
# @flag -s --report-identical-files              report when two files are the same
# @flag --show-all-spaces                        color all non-matching whitespace including that which is not needed for drawing the eye to changes.
# @flag --show-no-spaces                         don't color whitespace-only changes
# @option --tabsize                              tab stop spacing
# @flag -t --truncate                            truncate long lines instead of wrapping them
# @flag -u --patch                               generate patch.
# @option -U <NUM>                               how many lines of context to print; can't be combined with --whole-file
# @option --unified <NUM>                        how many lines of context to print; can't be combined with --whole-file
# @option --numlines <NUM>                       how many lines of context to print; can't be combined with --whole-file
# @flag -W --whole-file                          show the whole file instead of just changed lines and context
# @flag -P --permissions                         compare the file permissions as well as the content of the file
# @flag --strip-trailing-cr                      strip any trailing carriage return at the end of an input line
# @option --color-map <COLOR_MAP>                choose which colors are used for which items.
# @flag --is-git-diff                            Show the real file name when displaying git-diff result
# @option -x --exclude <PAT>                     exclude files that match PAT
# @arg left_file
# @arg right_file

command eval "$(argc --argc-eval "$0" "$@")"