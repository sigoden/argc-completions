#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -B --batch-recursive <wildcard>      convert all files matching the wildcard (uses recursive search)
# @option -D --data-dir <path>                 set path to highlight data directory
# @option --config-file <file>                 set path to a lang or theme file
# @option -h --help[syntax|theme|plugin|config] <topic>  print this help or a topic description <topic> =
# @option -i --input <file>                    name of input file
# @option -o --output <file>                   name of output file
# @option -d --outdir <output directory>       name of output directory
# @flag -P --progress                          print progress bar in batch mode
# @option -S --syntax <type|path>              set type of source code, necessary if input file suffix is missing.
# @option --syntax-by-name <name>              specify type of source code by given name.
# @flag --syntax-supported                     test if the given syntax can be loaded and print the result  (assumes -S or --syntax-by-name)
# @flag -v --verbose                           print debug info to stderr; repeat to show more information
# @flag -q --quiet                             suppress progress info in batch mode
# @option --force <syntax>                     generate output if input syntax is unknown.
# @option --list-scripts[langs|themes|plugins] <type>  list installed scripts <type> =
# @option --list-cat <categories>              filter the scripts by the given categories (example: --list-cat='source;script')
# @option --max-size <size>                    set maximum input file size (examples: 512M, 1G; default: 256M)
# @option --plug-in <script>                   execute Lua plug-in script; repeat option to apply multiple plug-ins
# @flag --plug-in-param                        set plug-in input parameter.
# @flag --print-config                         print path configuration
# @flag --print-style                          print stylesheet only (see --style-outfile)
# @option --skip <list>                        ignore listed unknown file types (example: --skip='bak;c~;h~')
# @flag --stdout                               output to stdout (batch mode, --print-style)
# @flag --validate-input                       test if input is a valid text file
# @flag --service-mode                         run in service mode, not stopping until signaled
# @flag --version                              print version and copyright info
# @option -O --out-format[html|xhtml|latex|tex|rtf|odt|ansi|xterm256|truecolor|bbcode|pango|svg] <format>  output file in given format <format>=
# @option -c --style-outfile <file>            name of style definition file
# @flag -T --doc-title                         document title
# @option -e --style-infile <file>             name of file to be included in style-outfile
# @flag -f --fragment                          omit header and footer of the output document (see --keep-injections)
# @option -F --reformat[allman|gnu|google|horstmann|java|kr|linux|lisp|mozilla|otbs|pico|vtk|ratliff|stroustrup|webkit|whitesmith] <style>  reformat output in given style.
# @flag -I --include-style                     include style definition in output
# @option -J --line-length <num>               line length before wrapping (see -V, -W)
# @option -j --line-number-length <num>        line number length incl.
# @option -k --font <font>                     set font (specific to output format)
# @option -K --font-size <num?>                set font size (specific to output format)
# @flag -l --line-numbers                      print line numbers in output file
# @option -m --line-number-start <cnt>         start line numbering with cnt (assumes -l)
# @option --line-range <start-end>             output only lines from number <start> to <end>
# @option -s --style <style name|path>         set highlighting style (theme).
# @option -t --replace-tabs <num>              replace tabs by num spaces
# @option -u --encoding <enc>                  set output encoding which matches input file encoding; omit encoding information if set to "NONE"
# @flag -V --wrap-simple                       wrap lines after 80 (default) characters without indenting function parameters and statements.
# @flag -W --wrap                              wrap lines after 80 (default) characters (use with caution).
# @flag -z --zeroes                            fill leading space of line numbers with zeroes
# @flag --isolate                              output each syntax token in separate tags (verbose output)
# @flag --keep-injections                      output plug-in header and footer injections in spite of -f
# @option --kw-case[upper|lower|capitalize]    output all keywords in given case if language is not case sensitive
# @option --no-trailing-nl <mode>              omit trailing newline.
# @flag --no-version-info                      omit version info comment
# @flag --wrap-no-numbers                      omit line numbers of wrapped lines (assumes -l)
# @flag -a --anchors                           attach anchors to line numbers (HTML only)
# @option -y --anchor-prefix <str>             set anchor name prefix
# @flag -N --anchor-filename                   use input file name as anchor name
# @flag -C --print-index                       print index file with links to all output files
# @flag -n --ordered-list                      print lines as ordered list items
# @option --class-name <str>                   set CSS class name prefix; omit class name if set to "NONE"
# @flag --inline-css                           output CSS within each tag (verbose output)
# @flag --enclose-pre                          enclose fragmented output with pre tag (assumes -f)
# @flag -b --babel                             disable Babel package shorthands
# @flag -r --replace-quotes                    replace double quotes by \dq
# @flag --beamer                               adapt output for the Beamer package
# @flag --pretty-symbols                       improve appearance of brackets and other symbols
# @flag --page-color                           include page color attributes
# @option -x --page-size[a3|a4|a5|b4|b5|b6|letter] <size>  set page size, <size>=
# @flag --char-styles                          include character stylesheets
# @option --height <h>                         set image height (units allowed)
# @option --width <w>                          set image size (see --height)
# @option --canvas <width>                     set background colour padding (default: 80)
# @option --ls-profile <server>                load LSP configuration from lsp.conf
# @option --ls-delay <ms>                      set server initialization delay in milliseconds
# @option --ls-exec <bin>                      set server executable name
# @option --ls-option <option>                 set server CLI option (can be repeated)
# @flag --ls-hover                             execute hover requests (HTML output only)
# @flag --ls-semantic                          query server for semantic token types (requires LSP 3.16)
# @option --ls-syntax <lang>                   set syntax which is understood by the server
# @flag --ls-syntax-error                      retrieve syntax error information (assumes --ls-hover or --ls-semantic)
# @option --ls-workspace <dir>                 set workspace directory to initialize the server
# @flag --ls-legacy                            do not require a server capabilities response
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"