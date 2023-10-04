#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -c --completion <prefix>       Print symbols which start with prefix.
# @option -f --file <files>              Print all tags in the files.
# @option -g --grep <pattern> <files>    Print all lines which match to the pattern.
# @flag --help                           Print a usage message.
# @option -I --idutils <pattern>         Print all lines which match to pattern.
# @option -P --path <pattern>            Print path names which match to pattern.
# @flag -p --print-dbpath                Print location of ´GTAGS´.
# @option --print <name>                 Print location of name, which may be one of: ´root´, ´dbpath´ or ´conf´.
# @flag -u --update                      Update tag files incrementally.
# @flag --version                        Show version number.
# @flag -a --absolute                    Print absolute path names.
# @option --color <when>                 Use color to highlight the pattern within the line; when may be one of: never, always or auto (default).
# @option -C --directory <dir>           Change the directory before doing all the work including parameter analysis.
# @flag -d --definition                  Print locations of definitions.
# @option -e --regexp <pattern>          Use pattern as the pattern; useful to protect patterns starting with ´-´.
# @flag -E --extended-regexp             Interpret pattern as a extended regular expression.
# @option --encode-path <chars>          Convert path characters in chars into a ´%´ symbol, followed by the two-digit hexadecimal representation of the character.
# @flag -F --first-match                 End the search without going through all the tag files listed in GTAGSLIBPATH when tags are found in a tag file.
# @option --from-here <context>          Decide tag type by context.
# @flag -G --basic-regexp                Interpret pattern as a basic regular expression.
# @option --gtagsconf <file>             Set environment variable GTAGSCONF to file.
# @option --gtagslabel <label>           Set environment variable GTAGSLABEL to label.
# @flag -i --ignore-case                 Ignore case distinctions in the pattern.
# @option -L --file-list <file>          Obtain files from file in addition to the arguments.
# @flag -l --local                       Print only tags which exist under the current directory.
# @flag --literal                        Execute literal search instead of regular expression search.
# @flag -M --match-case                  Search is case-sensitive.
# @option --match-part <part>            Specify how path name completion should match, where part is one of: ´first´, ´last´ or ´all´ (default).
# @flag -n --nofilter                    Suppress sort filter and path conversion filter.
# @option -N --nearness <start>          Use Nearness sort method (sorting by closest from start) for the output.
# @flag -O --only-other                  Treat only text files other than source code, like ´README´.
# @flag -o --other                       Treat not only source files but also text files other than source code, like ´README´.
# @option --path-style <format>          Print path names using format, which may be one of: ´relative´, ´absolute´, ´shorter´, ´abslib´ or ´through´.
# @flag --print0                         Print each record followed by a null character instead of a newline.
# @flag -q --quiet                       Quiet mode.
# @flag -r                               Print reference tags.
# @flag --reference                      Print reference tags.
# @flag --rootdir                        Print reference tags.
# @option --result <format>              Print out using format, which may be one of: ´path´ (default), ´ctags´, ´ctags-x´, ´grep´ or ´cscope´.
# @option --single-update <file>         Update tag files using gtags(1) with the --single-update option.
# @flag -s --symbol                      Print other symbol tags.
# @option -S --scope <dir>               Print only tags which exist under dir directory.
# @flag -T --through                     Go through all the tag files listed in GTAGSLIBPATH.
# @flag -t --tags                        Use standard ctags format.
# @flag -V --invert-match                Invert the sense of matching, to select non-matching lines.
# @flag -v --verbose                     Verbose mode.
# @flag -x --cxref                       Use standard ctags cxref (with -x) format.
# @arg pattern

command eval "$(argc --argc-eval "$0" "$@")"