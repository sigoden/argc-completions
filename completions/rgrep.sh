#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -E --extended-regexp                    PATTERNS are extended regular expressions
# @flag -F --fixed-strings                      PATTERNS are strings
# @flag -G --basic-regexp                       PATTERNS are basic regular expressions
# @flag -P --perl-regexp                        PATTERNS are Perl regular expressions
# @option -e --regexp <PATTERNS>                use PATTERNS for matching
# @option -f --file                             take PATTERNS from FILE
# @flag -i --ignore-case                        ignore case distinctions in patterns and data
# @flag --no-ignore-case                        do not ignore case distinctions (default)
# @flag -w --word-regexp                        match only whole words
# @flag -x --line-regexp                        match only whole lines
# @flag -z --null-data                          a data line ends in 0 byte, not newline
# @flag -s --no-messages                        suppress error messages
# @flag -v --invert-match                       select non-matching lines
# @flag -V --version                            display version information and exit
# @flag --help                                  display this help text and exit
# @option -m --max-count <NUM>                  stop after NUM selected lines
# @flag -b --byte-offset                        print the byte offset with output lines
# @flag -n --line-number                        print line number with output lines
# @flag --line-buffered                         flush output on every line
# @flag -H --with-filename                      print file name with output lines
# @flag -h --no-filename                        suppress the file name prefix on output
# @option --label                               use LABEL as the standard input file name prefix
# @flag -o --only-matching                      show only nonempty parts of lines that match
# @flag -q                                      suppress all normal output
# @flag --quiet                                 suppress all normal output
# @flag --silent                                suppress all normal output
# @option --binary-files[binary|test|without-match] <TYPE>  assume that binary files are TYPE; TYPE is 'binary', 'text', or 'without-match'
# @flag -a --text                               equivalent to --binary-files=text
# @flag -I                                      equivalent to --binary-files=without-match
# @option -d --directories[read|recurse|skip] <ACTION>  how to handle directories; ACTION is 'read', 'recurse', or 'skip'
# @option -D --devices[read|skip] <ACTION>      how to handle devices, FIFOs and sockets; ACTION is 'read' or 'skip'
# @flag -r --recursive                          like --directories=recurse
# @flag -R --dereference-recursive              likewise, but follow all symlinks
# @option --include <GLOB>                      search only files that match GLOB (a file pattern)
# @option --exclude <GLOB>                      skip files that match GLOB
# @option --exclude-from <FILE>                 skip files that match any file pattern from FILE
# @option --exclude-dir <GLOB>                  skip directories that match GLOB
# @flag -L --files-without-match                print only names of FILEs with no selected lines
# @flag -l --files-with-matches                 print only names of FILEs with selected lines
# @flag -c --count                              print only a count of selected lines per FILE
# @flag -T --initial-tab                        make tabs line up (if needed)
# @flag -Z --null                               print 0 byte after FILE name
# @option -B --before-context <NUM>             print NUM lines of leading context
# @option -A --after-context <NUM>              print NUM lines of trailing context
# @option -C --context <NUM>                    print NUM lines of output context
# @flag -NUM                                    same as --context=NUM
# @option --group-separator <SEP>               print SEP on line between matches with context
# @flag --no-group-separator                    do not print separator for matches with context
# @option --color[auto|never|always] <WHEN>
# @option --colour[auto|never|always] <WHEN>    use markers to highlight the matching strings; WHEN is 'always', 'never', or 'auto'
# @flag -U --binary                             do not strip CR characters at EOL (MSDOS/Windows)
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"