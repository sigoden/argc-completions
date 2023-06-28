#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --no-percent-bars                    No percent bars or percentages will be displayed
# @flag -c --no-colors                          No colors will be printed (Useful for commands like: watch)
# @option -d --depth <depth>                    Depth to show
# @flag -D --only-dir                           Only directories will be displayed.
# @option -e --filter <filter>                  Only include filepaths matching this regex.
# @flag -f --filecount                          Directory 'size' is number of child files/dirs not disk size
# @flag -F --only-file                          Only files will be displayed.
# @flag -h --help                               Print help information
# @flag -H --si                                 print sizes in powers of 1000 (e.g., 1.1G)
# @flag -i --ignore_hidden                      Do not display hidden files
# @flag -L --dereference-links                  dereference sym links - Treat sym links as directories and go into them
# @option -n --number-of-lines <number_of_lines>  Number of lines of output to show.
# @flag -p --full-paths                         Subdirectories will not have their path shortened
# @flag -P --no-progress                        Disable the progress indication.
# @flag -r --reverse                            Print tree upside down (biggest highest)
# @flag -R --screen-reader                      For screen readers.
# @flag -s --apparent-size                      Use file length instead of blocks
# @flag --skip-total                            No total row will be displayed
# @flag -t --file_types                         show only these file types
# @option -v --invert-filter <invert_filter>    Exclude filepaths matching this regex.
# @flag -V --version                            Print version information
# @option -w --terminal_width <width>           Specify width of output overriding the auto detection of terminal width
# @flag -x --limit-filesystem                   Only count the files and directories on the same filesystem as the supplied directory
# @option -X --ignore-directory <ignore_directory>  Exclude any file or directory with this name
# @option -z --min-size <min_size>              Minimum size file to include in output
# @arg dir+

command eval "$(argc --argc-eval "$0" "$@")"