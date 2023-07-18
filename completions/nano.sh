#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A --smarthome                 Enable smart home key
# @flag -B --backup                    Save backups of existing files
# @option -C --backupdir <dir>         Directory for saving unique backup files
# @flag -D --boldtext                  Use bold instead of reverse video text
# @flag -E --tabstospaces              Convert typed tabs to spaces
# @flag -F --multibuffer               Read a file into a new buffer by default
# @flag -G --locking                   Use (vim-style) lock files
# @flag -H --historylog                Save & reload old search/replace strings
# @flag -I --ignorercfiles             Don't look at nanorc files
# @option -J --guidestripe <number>    Show a guiding bar at this column
# @flag -K --rawsequences              Fix numeric keypad key confusion problem
# @flag -L --nonewlines                Don't add an automatic newline
# @flag -M --trimblanks                Trim tail spaces when hard-wrapping
# @flag -N --noconvert                 Don't convert files from DOS/Mac format
# @flag -O --bookstyle                 Leading whitespace means new paragraph
# @flag -P --positionlog               Save & restore position of the cursor
# @option -Q --quotestr <regex>        Regular expression to match quoting
# @flag -R --restricted                Restrict access to the filesystem
# @flag -S --softwrap                  Display overlong lines on multiple rows
# @option -T --tabsize <number>        Make a tab this number of columns wide
# @flag -U --quickblank                Wipe status bar upon next keystroke
# @flag -V --version                   Print version information and exit
# @flag -W --wordbounds                Detect word boundaries more accurately
# @option -X --wordchars <string>      Which other characters are word parts
# @option -Y --syntax <name>           Syntax definition to use for coloring
# @flag -Z --zap                       Let Bsp and Del erase a marked region
# @flag -a --atblanks                  When soft-wrapping, do it at whitespace
# @flag -b --breaklonglines            Automatically hard-wrap overlong lines
# @flag -c --constantshow              Constantly show cursor position
# @flag -d --rebinddelete              Fix Backspace/Delete confusion problem
# @flag -e --emptyline                 Keep the line below the title bar empty
# @option -f --rcfile <file>           Use only this file for configuring nano
# @flag -g --showcursor                Show cursor in file browser & help text
# @flag -h --help                      Show this help text and exit
# @flag -i --autoindent                Automatically indent new lines
# @flag -j --jumpyscrolling            Scroll per half-screen, not per line
# @flag -k --cutfromcursor             Cut from cursor to end of line
# @flag -l --linenumbers               Show line numbers in front of the text
# @flag -m --mouse                     Enable the use of the mouse
# @flag -n --noread                    Do not read the file (only write it)
# @option -o --operatingdir <dir>      Set operating directory
# @flag -p --preserve                  Preserve XON (^Q) and XOFF (^S) keys
# @flag -q --indicator                 Show a position+portion indicator
# @option -r --fill <number>           Set width for hard-wrap and justify
# @option -s --speller <program>       Use this alternative spell checker
# @flag -t --saveonexit                Save changes on exit, don't prompt
# @flag -u --unix                      Save a file by default in Unix format
# @flag -v --view                      View mode (read-only)
# @flag -w --nowrap                    Don't hard-wrap long lines [default]
# @flag -x --nohelp                    Don't show the two help lines
# @flag -y --afterends                 Make Ctrl+Right stop at word ends
# @flag -% --stateflags                Show some states on the title bar
# @flag -_ --minibar                   Show a feedback bar at the bottom
# @flag -0 --zero                      Hide all bars, use whole terminal
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"