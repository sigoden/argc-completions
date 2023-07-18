#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --pages <FIRST_PAGE[:LAST_PAGE]>    begin [stop] printing with page FIRST_[LAST_]PAGE
# @option --columns <COLUMN>                  output COLUMN columns and print columns down, unless -a is used.
# @flag -a --across                           print columns across rather than down, used together with -COLUMN
# @flag -c --show-control-chars               use hat notation (^G) and octal backslash notation
# @flag -d --double-space                     double space the output
# @option -D --date-format <FORMAT>           use FORMAT for the header date
# @option -e --expand-tabs <CHAR[WIDTH]>      expand input CHARs (TABs) to tab WIDTH (8)
# @flag -F                                    use form feeds instead of newlines to separate pages (by a 3-line page header with -F or a 5-line header and trailer without -F)
# @flag -f                                    use form feeds instead of newlines to separate pages (by a 3-line page header with -F or a 5-line header and trailer without -F)
# @flag --form-feed                           use form feeds instead of newlines to separate pages (by a 3-line page header with -F or a 5-line header and trailer without -F)
# @option -h --header                         use a centered HEADER instead of filename in page header, -h "" prints a blank line, don't use -h""
# @option -i --output-tabs <CHAR[WIDTH]>      replace spaces with CHARs (TABs) to tab WIDTH (8)
# @flag -J --join-lines                       merge full lines, turns off -W line truncation, no column alignment, --sep-string[=STRING] sets separators
# @option -l --length <PAGE_LENGTH>           set the page length to PAGE_LENGTH (66) lines (default number of lines of text 56, and with -F 63).
# @flag -m --merge                            print all files in parallel, one in each column, truncate lines, but join lines of full length with -J
# @option -n --number-lines <SEP[DIGITS]>     number lines, use DIGITS (5) digits, then SEP (TAB), default counting starts with 1st line of input file
# @option -N --first-line-number <NUMBER>     start counting with NUMBER at 1st line of first page printed (see +FIRST_PAGE)
# @option -o --indent <MARGIN>                offset each line with MARGIN (zero) spaces, do not affect -w or -W, MARGIN will be added to PAGE_WIDTH
# @flag -r --no-file-warnings                 omit warning when a file cannot be opened
# @option -s --separator <CHAR>               separate columns by a single character, default for CHAR is the <TAB> character without -w and 'no char' with -w.
# @option -S --sep-string <STRING>            separate columns by STRING, without -S: Default separator <TAB> with -J and <space> otherwise (same as -S" "), no effect on column options
# @flag -t --omit-header                      omit page headers and trailers; implied if PAGE_LENGTH <= 10
# @flag -T --omit-pagination                  omit page headers and trailers, eliminate any pagination by form feeds set in input files
# @flag -v --show-nonprinting                 use octal backslash notation
# @option -w --width <PAGE_WIDTH>             set page width to PAGE_WIDTH (72) characters for multiple text-column output only, -s[char] turns off (72)
# @option -W --page-width <PAGE_WIDTH>        set page width to PAGE_WIDTH (72) characters always, truncate lines, except -J option is set, no interference with -S or -s
# @flag --help                                display this help and exit
# @flag --version                             output version information and exit
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"