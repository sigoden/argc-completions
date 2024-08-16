#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -d --depth                        Depth to show
# @option -T --threads <threads>            Number of threads to use
# @option -n --number-of-lines <NUMBER>     Number of lines of output to show.
# @flag -p --full-paths                     Subdirectories will not have their path shortened
# @option -X --ignore-directory <PATH>      Exclude any file or directory with this name
# @option -I --ignore-all-in-file <FILE>    Exclude any file or directory with a regex matching that listed in this file, the file entries will be added to the ignore regexs provided by --invert_filter
# @flag -L --dereference-links              dereference sym links - Treat sym links as directories and go into them
# @flag -x --limit-filesystem               Only count the files and directories on the same filesystem as the supplied directory
# @flag -s --apparent-size                  Use file length instead of blocks
# @flag -r --reverse                        Print tree upside down (biggest highest)
# @flag -c --no-colors                      No colors will be printed (Useful for commands like: watch)
# @flag -C --force-colors                   Force colors print
# @flag -b --no-percent-bars                No percent bars or percentages will be displayed
# @flag -B --bars-on-right                  percent bars moved to right side of screen
# @option -z --min-size <MIN_SIZE>          Minimum size file to include in output
# @flag -R --screen-reader                  For screen readers.
# @flag --skip-total                        No total row will be displayed
# @flag -f --filecount                      Directory 'size' is number of child files instead of disk size
# @flag -i --ignore_hidden                  Do not display hidden files
# @option -v --invert-filter <REGEX>        Exclude filepaths matching this regex.
# @option -e --filter <REGEX>               Only include filepaths matching this regex.
# @flag -t --file_types                     show only these file types
# @option -w --terminal_width <WIDTH>       Specify width of output overriding the auto detection of terminal width
# @flag -P --no-progress                    Disable the progress indication.
# @flag --print-errors                      Print path with errors.
# @flag -D --only-dir                       Only directories will be displayed.
# @flag -F --only-file                      Only files will be displayed.
# @option -o --output-format[si|b|k|m|g|t|kb|mb|gb|tb] <FORMAT>  Changes output display size.
# @option -S --stack-size <STACK_SIZE>      Specify memory to use as stack size - use if you see: 'fatal runtime error: stack overflow' (default low memory=1048576, high memory=1073741824)
# @flag -j --output-json                    Output the directory tree as json to the current directory
# @option -M --mtime <mtime>                +/-n matches files modified more/less than n days ago , and n matches files modified exactly n days ago, days are rounded down.That is +n => (−∞, curr−(n+1)), n => [curr−(n+1), curr−n), and -n => (𝑐𝑢𝑟𝑟−𝑛, +∞)
# @option -A --atime <atime>                just like -mtime, but based on file access time
# @option -y --ctime <ctime>                just like -mtime, but based on file change time
# @option --files0-from <files0_from>       run dust on NUL-terminated file names specified in file; if argument is -, then read names from standard input
# @flag -h --help                           Print help
# @flag -V --version                        Print version
# @arg dir+

command eval "$(argc --argc-eval "$0" "$@")"