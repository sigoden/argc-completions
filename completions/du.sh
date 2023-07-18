#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -0 --null                     end each output line with NUL, not newline
# @flag -a --all                      write counts for all files, not just directories
# @flag --apparent-size               print apparent sizes, rather than disk usage; although the apparent size is usually smaller, it may be larger due to holes in ('sparse') files, internal fragmentation, indirect blocks, and the like
# @option -B --block-size <SIZE>      scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below
# @flag -b --bytes                    equivalent to '--apparent-size --block-size=1'
# @flag -c --total                    produce a grand total
# @flag -D --dereference-args         dereference only symlinks that are listed on the command line
# @option -d --max-depth <N>          print the total for a directory (or file, with --all) only if it is N or fewer levels below the command line argument;  --max-depth=0 is the same as --summarize
# @option --files0-from <F>           summarize disk usage of the NUL-terminated file names specified in file F; if F is -, then read names from standard input
# @flag -H                            equivalent to --dereference-args (-D)
# @flag -h --human-readable           print sizes in human readable format (e.g., 1K 234M 2G)
# @flag --inodes                      list inode usage information instead of block usage
# @flag -k                            like --block-size=1K
# @flag -L --dereference              dereference all symbolic links
# @flag -l --count-links              count sizes many times if hard linked
# @flag -m                            like --block-size=1M
# @flag -P --no-dereference           don't follow any symbolic links (this is the default)
# @flag -S --separate-dirs            for directories do not include size of subdirectories
# @flag --si                          like -h, but use powers of 1000 not 1024
# @flag -s --summarize                display only a total for each argument
# @option -t --threshold <SIZE>       exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative
# @option --time[`_choice_time`]      show time of the last modification of any file in the directory, or any of its subdirectories
# @option --time-style[`_choice_time_style`] <STYLE>  show times using STYLE, which can be: full-iso, long-iso, iso, or +FORMAT; FORMAT is interpreted like in 'date'
# @option -X --exclude-from <FILE>    exclude files that match any pattern in FILE
# @option --exclude <PATTERN>         exclude files that match PATTERN
# @flag -x --one-file-system          skip directories on different file systems
# @flag --help                        display this help and exit
# @flag --version                     output version information and exit
# @arg file*

_choice_time() {
    printf "%s\n" access atime ctime status use
}

_choice_time_style() {
    printf "%s\n" full-iso long-iso iso
}

command eval "$(argc --argc-eval "$0" "$@")"