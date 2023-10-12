#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -#                                     an alias for option -n, --copies
# @flag -1                                     same as --columns=1
# @flag -2                                     same as --columns=2
# @option --columns <NUM>                      specify the number of columns per page
# @option -a --pages                           specify which pages are printed
# @option -A --file-align <ALIGN>              align separate input files to ALIGN
# @option -b --header                          set page header
# @flag -B --no-header                         no page headers
# @flag -c --truncate-lines                    cut long lines (default is to wrap)
# @option -C --line-numbers <START>            precede each line with its line number
# @flag -d                                     an alias for option --printer
# @option -D --setpagedevice <KEY[:VALUE]>     pass a page device definition to output
# @option -e --escapes <CHAR>                  enable special escape interpretation
# @option -E --highlight <LANG>                highlight source code
# @option -f --font <NAME>                     use font NAME for body text
# @option -F --header-font <NAME>              use font NAME for header texts
# @flag -g --print-anyway                      nothing (compatibility option)
# @flag -G                                     same as --fancy-header
# @option --fancy-header <NAME>                select fancy page header
# @flag -h --no-job-header                     suppress the job header page
# @option -H --highlight-bars <NUM>            specify how high highlight bars are
# @option -i --indent <NUM>                    set line indent to NUM characters
# @option -I --filter <CMD>                    read input files through input filter CMD
# @flag -j --borders                           print borders around columns
# @flag -J                                     an alias for option --title
# @flag -k --page-prefeed                      enable page prefeed
# @flag -K --no-page-prefeed                   disable page prefeed
# @flag -l --lineprinter                       simulate lineprinter, this is an alias for:
# @option -L --lines-per-page <NUM>            specify how many lines are printed on each page
# @flag -m --mail                              send mail upon completion
# @option -M --media <NAME>                    use output media NAME
# @option -n --copies <NUM>                    print NUM copies of each page
# @option -N --newline <NL>                    select the newline character.
# @flag -o                                     an alias for option --output
# @flag -O --missing-characters                list missing characters
# @option -p --output <FILE>                   leave output to file FILE.
# @option -P --printer <NAME>                  print output to printer NAME
# @flag -q                                     be really quiet
# @flag --quiet                                be really quiet
# @flag --silent                               be really quiet
# @flag -r --landscape                         print in landscape mode
# @flag -R --portrait                          print in portrait mode
# @option -s --baselineskip <NUM>              set baselineskip to NUM
# @option -S --statusdict <KEY[:VALUE]>        pass a statusdict definition to the output
# @option -t --title                           set banner page's job title to TITLE.
# @option -T --tabsize <NUM>                   set tabulator size to NUM
# @option -u --underlay <TEXT>                 print TEXT under every page
# @option -U --nup <NUM>                       print NUM logical pages on each output page
# @flag -v --verbose                           tell what we are doing
# @flag -V --version                           print version number
# @option -w --language <LANG>                 set output language to LANG
# @option -W --options <APP,OPTION>            pass option OPTION to helper application APP
# @option -X --encoding <NAME>                 use input encoding NAME
# @flag -z --no-formfeed                       do not interpret form feed characters
# @flag -Z --pass-through                      pass through PostScript and PCL files without any modifications
# @option --color <bool>                       create color outputs with states
# @flag --continuous-page-numbers              count page numbers across input files.
# @option --download-font <NAME>               download font NAME
# @flag --extended-return-values               enable extended return values
# @option --filter-stdin <NAME>                specify how stdin is shown to the input filter
# @option --footer                             set page footer
# @option --h-column-height <HEIGHT>           set the horizontal column height to HEIGHT
# @flag --help                                 print this help and exit
# @flag --help-highlight                       describe all supported --highlight languages and file formats
# @option --highlight-bar-gray <NUM>           print highlight bars with gray NUM (0 - 1)
# @flag --list-media                           list names of all known media
# @option --margins <LEFT:RIGHT:TOP:BOTTOM>    adjust page marginals
# @option --mark-wrapped-lines <STYLE>         mark wrapped lines in the output with STYLE
# @option --non-printable-format <FMT>         specify how non-printable chars are printed
# @flag --nup-columnwise                       layout pages in the N-up printing columnwise
# @option --nup-xpad <NUM>                     set the page x-padding of N-up printing to NUM
# @option --nup-ypad <NUM>                     set the page y-padding of N-up printing to NUM
# @option --page-label-format <FMT>            set page label format to FMT
# @option --ps-level <LEVEL>                   set the PostScript language level that enscript should use
# @option --printer-options <OPTIONS>          pass extra options to the printer command
# @flag --rotate-even-pages                    rotate even-numbered pages 180 degrees
# @option --slice <NUM>                        print vertical slice NUM
# @option --style                              use highlight style STYLE
# @flag --swap-even-page-margins               swap left and right side margins for each even numbered page
# @flag --toc                                  print table of contents
# @option --ul-angle <ANGLE>                   set underlay text's angle to ANGLE
# @option --ul-font <NAME>                     print underlays with font NAME
# @option --ul-gray <NUM>                      print underlays with gray value NUM
# @option --ul-position <POS>                  set underlay's starting position to POS
# @option --ul-style <STYLE>                   print underlays with style STYLE
# @flag --word-wrap                            wrap long lines from word boundaries
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"