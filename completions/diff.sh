#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --normal                               output a normal diff (the default)
# @flag -q --brief                             report only when files differ
# @flag -s --report-identical-files            report when two files are the same
# @option -c <NUM>                             output NUM (default 3) lines of copied context
# @option -C <NUM>                             output NUM (default 3) lines of copied context
# @option --context <NUM>                      output NUM (default 3) lines of copied context
# @option -u <NUM>                             output NUM (default 3) lines of unified context
# @option -U <NUM>                             output NUM (default 3) lines of unified context
# @option --unified <NUM>                      output NUM (default 3) lines of unified context
# @flag -e --ed                                output an ed script
# @flag -n --rcs                               output an RCS format diff
# @flag -y --side-by-side                      output in two columns
# @option -W --width <NUM>                     output at most NUM (default 130) print columns
# @flag --left-column                          output only the left column of common lines
# @flag --suppress-common-lines                do not output common lines
# @flag -p --show-c-function                   show which C function each change is in
# @option -F --show-function-line <RE>         show the most recent line matching RE
# @option --label                              use LABEL instead of file name and timestamp (can be repeated)
# @flag -t --expand-tabs                       expand tabs to spaces in output
# @flag -T --initial-tab                       make tabs line up by prepending a tab
# @option --tabsize <NUM>                      tab stops every NUM (default 8) print columns
# @flag --suppress-blank-empty                 suppress space or tab before empty output lines
# @flag -l --paginate                          pass output through 'pr' to paginate it
# @flag -r --recursive                         recursively compare any subdirectories found
# @flag --no-dereference                       don't follow symbolic links
# @flag -N --new-file                          treat absent files as empty
# @flag --unidirectional-new-file              treat absent first files as empty
# @flag --ignore-file-name-case                ignore case when comparing file names
# @flag --no-ignore-file-name-case             consider case when comparing file names
# @option -x --exclude <PAT>                   exclude files that match PAT
# @option -X --exclude-from <FILE>             exclude files that match any pattern in FILE
# @option -S --starting-file <FILE>            start with FILE when comparing directories
# @option --from-file <FILE1>                  compare FILE1 to all operands; FILE1 can be a directory
# @option --to-file <FILE2>                    compare all operands to FILE2; FILE2 can be a directory
# @flag -i --ignore-case                       ignore case differences in file contents
# @flag -E --ignore-tab-expansion              ignore changes due to tab expansion
# @flag -Z --ignore-trailing-space             ignore white space at line end
# @flag -b --ignore-space-change               ignore changes in the amount of white space
# @flag -w --ignore-all-space                  ignore all white space
# @flag -B --ignore-blank-lines                ignore changes where lines are all blank
# @option -I --ignore-matching-lines <RE>      ignore changes where all lines match RE
# @flag -a --text                              treat all files as text
# @flag --strip-trailing-cr                    strip trailing carriage return on input
# @option -D --ifdef <NAME>                    output merged file with '#ifdef NAME' diffs
# @option --GTYPE-group-format <GFMT>          format GTYPE input groups with GFMT
# @option --line-format <LFMT>                 format all input lines with LFMT
# @option --LTYPE-line-format <LFMT>           format LTYPE input lines with LFMT
# @flag -d --minimal                           try hard to find a smaller set of changes
# @option --horizon-lines <NUM>                keep NUM lines of the common prefix and suffix
# @flag --speed-large-files                    assume large files and many scattered small changes
# @option --color[auto|never|always] <WHEN>    color output; WHEN is 'never', 'always', or 'auto'; plain --color means --color='auto'
# @option --palette                            the colors to use when --color is active; PALETTE is a colon-separated list of terminfo capabilities
# @flag --help                                 display this help and exit
# @flag -v --version                           output version information and exit
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"