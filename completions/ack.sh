#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -f                                      Only print the files selected, without searching.
# @flag -g                                      Same as -f, but only select files matching PATTERN.
# @flag -l --files-with-matches                 Print filenames with at least one match
# @flag -L --files-without-matches              Print filenames with no matches
# @flag -c --count                              Print filenames and count of matching lines
# @flag -i --ignore-case                        Ignore case distinctions in PATTERN
# @flag -S                                      Ignore case distinctions in PATTERN, only if PATTERN contains no upper case.
# @flag --smart-case                            Ignore case distinctions in PATTERN, only if PATTERN contains no upper case.
# @flag --nosmart-case                          Ignore case distinctions in PATTERN, only if PATTERN contains no upper case.
# @flag -I --no-ignore-case                     Turns on case-sensitivity in PATTERN.
# @flag -v --invert-match                       Invert match: select non-matching lines
# @flag -w --word-regexp                        Force PATTERN to match only whole words
# @flag -Q --literal                            Quote all metacharacters; PATTERN is literal
# @option --range-start <PATTERN>               Specify PATTERN as the start of a match range.
# @option --range-end <PATTERN>                 Specify PATTERN as the end of a match range.
# @option --match <PATTERN>                     Specify PATTERN explicitly.
# @option --not <PATTERN>                       Specifies PATTERN that must not be found on the line for a match to occur.
# @option --output <expr>                       Output the evaluation of expr for each line (turns off text highlighting)
# @flag -o                                      Show only the part of a line matching PATTERN Same as --output='$&'
# @flag --passthru                              Print all lines, whether matching or not
# @option -m --max-count <NUM>                  Stop searching in each file after NUM matches
# @flag -1                                      Stop searching after one match of any kind
# @flag -H --with-filename                      Print the filename for each match (default: on unless explicitly searching a single file)
# @flag -h --no-filename                        Suppress the prefixing filename on output
# @flag --column                                Show the column number of the first match
# @flag --nocolumn                              Show the column number of the first match
# @option -A --after-context <NUM>              Print NUM lines of trailing context after matching lines.
# @option -B --before-context <NUM>             Print NUM lines of leading context before matching lines.
# @option -C --context <NUM>                    Print NUM lines (default 2) of output context.
# @flag --print0                                Print null byte as separator between filenames, only works with -f, -g, -l, -L or -c.
# @flag -s                                      Suppress error messages about nonexistent or unreadable files.
# @option --pager <COMMAND>                     Pipes all ack output through COMMAND.
# @flag --nopager                               Do not send output through a pager.
# @flag --heading                               Print a filename heading above each file's results.
# @flag --noheading                             Print a filename heading above each file's results.
# @flag --break                                 Print a break between results from different files.
# @flag --nobreak                               Print a break between results from different files.
# @flag --group                                 Same as --heading --break
# @flag --nogroup                               Same as --noheading --nobreak
# @option -p --proximate <LINES>                Separate match output with blank lines unless they are within LINES lines from each other.
# @flag --underline                             Print a line of carets under the matched text.
# @flag --nounderline                           Print a line of carets under the matched text.
# @flag --color                                 Highlight the matching text (default: on unless output is redirected, or on Windows)
# @flag --nocolor                               Highlight the matching text (default: on unless output is redirected, or on Windows)
# @flag --colour                                Highlight the matching text (default: on unless output is redirected, or on Windows)
# @flag --nocolour                              Highlight the matching text (default: on unless output is redirected, or on Windows)
# @option --color-filename <COLOR>
# @option --color-match <COLOR>
# @option --color-colno <COLOR>
# @option --color-lineno <COLOR>                Set the color for filenames, matches, line and column numbers.
# @flag --help-colors                           Show a list of possible color combinations.
# @flag --help-rgb-colors                       Show a list of advanced RGB colors.
# @flag --flush                                 Flush output immediately, even when ack is used non-interactively (when output goes to a pipe or file).
# @flag --sort-files                            Sort the found files lexically.
# @flag --show-types                            Show which types each file has.
# @option --files-from <FILE>                   Read the list of files to search from FILE.
# @flag -x                                      Read the list of files to search from STDIN.
# @option --ignore-dir*[`_choice_ignore_directory`] <name>  Add/remove directory from list of ignored dirs
# @option --noignore-dir*[`_choice_ignore_directory`] <name>  Add/remove directory from list of ignored dirs
# @option --ignore-directory*[`_choice_ignore_directory`] <name>  Synonym for ignore-dir
# @option --noignore-directory*[`_choice_ignore_directory`] <name>  Synonym for ignore-dir
# @option --ignore-file*[`_choice_ignore_file`] <FILTER:ARGS>  Add filter for ignoring files.
# @flag -r                                      Recurse into subdirectories (default: on)
# @flag -R                                      Recurse into subdirectories (default: on)
# @flag --recurse                               Recurse into subdirectories (default: on)
# @flag -n --no-recurse                         No descending into subdirectories
# @flag --follow                                Follow symlinks.
# @flag --nofollow                              Follow symlinks.
# @option -t --type <X>                         Include only X files, where X is a filetype, e.g. python, html, markdown, etc
# @option -T <X>                                Exclude X files, where X is a filetype.
# @flag -k --known-types                        Include only files of types that ack recognizes.
# @flag --help-types                            Display all known types, and how they're defined.
# @option --type-set*[`_choice_type_add`] <TYPE:FILTER:ARGS>  Files with the given ARGS applied to the given FILTER are recognized as being of type TYPE.
# @option --type-add*[`_choice_type_add`] <TYPE:FILTER:ARGS>  Files with the given ARGS applied to the given FILTER are recognized as being type TYPE.
# @option --type-del*[`_choice_type`] <TYPE>    Removes all filters associated with TYPE.
# @flag --version                               Display version & copyright
# @flag --env                                   Ignore environment variables and global ackrc files.
# @flag --noenv                                 Ignore environment variables and global ackrc files.
# @option --ackrc <filename>                    Specify an ackrc file to use
# @flag --ignore-ack-defaults                   Ignore default definitions included with ack.
# @flag --create-ackrc                          Outputs a default ackrc for your customization to standard output.
# @flag --dump                                  Dump information on which options are loaded and where they're defined.
# @flag --filter                                Force ack to treat standard input as a pipe (--filter) or tty (--nofilter)
# @flag --nofilter                              Force ack to treat standard input as a pipe (--filter) or tty (--nofilter)
# @flag --help                                  This help
# @flag --man                                   Print the manual.
# @flag --thpppt                                Bill the Cat
# @flag --bar                                   The warning admiral
# @flag --cathy                                 Chocolate! Chocolate! Chocolate!
# @arg path*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_ignore_directory() {
    ack --dump | sed -n 's/^\s*--ignore-directory=//p'
}

_choice_ignore_file() {
    ack --dump | sed -n 's/^\s*--ignore-file=//p' | _argc_util_comp_parts :
}

_choice_type_add() {
    ack --dump | sed -n 's/^\s*--type-add=//p' | _argc_util_comp_parts :
}

_choice_type() {
    ack --dump | sed -n 's/^\s*--type-add=\([^:]\+\):.*$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"