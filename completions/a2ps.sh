#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version                                display version
# @flag --help                                   display this help
# @flag --guess                                  report guessed types of FILES
# @flag --which                                  report the full path of library files named FILES
# @flag --glob                                   report the full path of library files matching FILES
# @option --list[delegations|encodings|features|variables|media|ppd|printers|prologues|style-sheets|user-options] <TOPIC>  detailed list on TOPIC
# @flag -q                                       be really quiet
# @flag --quiet                                  be really quiet
# @flag --silent                                 be really quiet
# @option -v --verbose <LEVEL>                   set verbosity on, or to LEVEL
# @option -= --user-option <OPTION>              use the user defined shortcut OPTION
# @flag --debug                                  enable debugging features
# @option -D --define <KEY[:VALUE]>              unset variable KEY or set to VALUE
# @option -M --medium <NAME>                     use output medium NAME
# @flag -r --landscape                           print in landscape mode
# @flag -R --portrait                            print in portrait mode
# @option --columns <NUM>                        number of columns per sheet
# @option --rows <NUM>                           number of rows per sheet
# @option --major <DIRECTION>                    first fill (DIRECTION=) rows, or columns
# @flag -1                                       predefined font sizes and layouts for 1..9 virtuals
# @flag -9                                       predefined font sizes and layouts for 1..9 virtuals
# @option -A --file-align[fill|rank|page|sheet|<num>] <MODE>  align separate files according to MODE (fill, rank page, sheet, or a number)
# @option -j --borders <*>                       print borders around columns
# @option --margin <NUM>                         define an interior margin of size NUM
# @option --line-numbers <NUM>                   precede each NUM lines with its line number
# @flag -C                                       alias for --line-numbers=5
# @option -f --font-size <SIZE>                  use font SIZE (float) for the body text
# @option -L --lines-per-page <NUM>              scale the font to print NUM lines per virtual
# @option -l --chars-per-line <NUM>              scale the font to print NUM columns per virtual
# @flag -m --catman                              process FILE as a man page (same as -L66)
# @option -T --tabsize <NUM>                     set tabulator size to NUM
# @option --non-printable-format <FMT>           specify how non-printable chars are printed
# @flag -B --no-header                           no page headers at all
# @option -b --header <TEXT>                     set page header
# @option -u --underlay <TEXT>                   print TEXT under every page
# @option --center-title <TEXT>                  set page title to TITLE
# @option --left-title <TEXT>                    set left and right page title to TEXT
# @option --right-title <TEXT>
# @option --left-footer <TEXT>                   set sheet footers to TEXT
# @option --footer <TEXT>
# @option --right-footer <TEXT>
# @option -a --pages <RANGE>                     select the pages to print
# @option -c --truncate-lines <*>                cut long lines
# @option -i --interpret <*>                     interpret tab, bs and ff chars
# @option --end-of-line[r|n|nr|rn|any] <TYPE>    specify the eol char
# @option -X --encoding <NAME>                   use input encoding NAME
# @option -t --title <NAME>                      set the name of the job
# @option --stdin <NAME>                         set the name of the input file stdin
# @option --print-anyway <*>                     force binary printing
# @option -Z --delegate <*>                      delegate files to another application
# @option --toc <TEXT>                           generate a table of content
# @option -E --pretty-print <LANG>               enable pretty-printing (set style to LANG)
# @option --highlight-level <LEVEL>              set pretty printing highlight LEVEL LEVEL can be none, normal or heavy
# @flag -g                                       alias for --highlight-level=heavy
# @option --strip-level <NUM>                    level of comments stripping
# @option -o --output <FILE>                     leave output to file FILE.
# @option --version-control <WORD>               override the usual version control
# @option --suffix                               override the usual backup suffix
# @option -P --printer <NAME>                    send output to printer NAME
# @flag -d                                       send output to the default printer (this is the default behavior)
# @option --prologue <FILE>                      include FILE.pro as PostScript prologue
# @option --ppd <KEY>                            automatic PPD selection or set to KEY
# @option -n --copies <NUM>                      print NUM copies of each page
# @option -s --sides <MODE>                      set the duplex MODE (`1' or `simplex', `2' or `duplex', `tumble')
# @option -S --setpagedevice <K[:V]>             pass a page device definition to output
# @option --statusdict <K[:[:]V]>                pass a statusdict definition to the output
# @flag -k --page-prefeed                        enable page prefeed
# @flag -K --no-page-prefeed                     disable page prefeed
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"