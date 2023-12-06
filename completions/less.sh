#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -? --help                       Display help (from command line).
# @flag -a --search-skip-screen         Search skips current screen.
# @flag -A --SEARCH-SKIP-SCREEN         Search starts just after target line.
# @option -b --buffers <N>              Number of buffers.
# @flag -B --auto-buffers               Don't automatically allocate buffers for pipes.
# @flag -c --clear-screen               Repaint by clearing rather than scrolling.
# @flag -d --dumb                       Dumb terminal.
# @option -D --color <xcolor>           Set screen colors.
# @flag -e                              Quit at end of file.
# @flag -E                              Quit at end of file.
# @flag --quit-at-eof                   Quit at end of file.
# @flag --QUIT-AT-EOF                   Quit at end of file.
# @flag -f --force                      Force open non-regular files.
# @flag -F --quit-if-one-screen         Quit if entire file fits on first screen.
# @flag -g --hilite-search              Highlight only last match for searches.
# @flag -G --HILITE-SEARCH              Don't highlight any matches for searches.
# @option -h --max-back-scroll <N>      Backward scroll limit.
# @flag -i --ignore-case                Ignore case in searches that do not contain uppercase.
# @flag -I --IGNORE-CASE                Ignore case in all searches.
# @option -j --jump-target <N>          Screen position of target lines.
# @flag -J --status-column              Display a status column at left edge of screen.
# @option -k --lesskey-file <file>      Use a lesskey file.
# @flag -K --quit-on-intr               Exit less in response to ctrl-C.
# @flag -L --no-lessopen                Ignore the LESSOPEN environment variable.
# @flag -m                              Set prompt style.
# @flag -M                              Set prompt style.
# @flag --long-prompt                   Set prompt style.
# @flag --LONG-PROMPT                   Set prompt style.
# @flag -n--line-numbers                Suppress line numbers in prompts and messages.
# @flag -N--LINE-NUMBERS                Display line number at start of each line.
# @option -o --log-file <file>          Copy to log file (standard input only).
# @option -O --LOG-FILE <file>          Copy to log file (unconditionally overwrite).
# @option -p --pattern <pattern>        Start at pattern (from command line).
# @option -P <prompt>                   --prompt=[prompt] Define new prompt.
# @flag -q                              Quiet the terminal bell.
# @flag -Q                              Quiet the terminal bell.
# @flag --quiet                         Quiet the terminal bell.
# @flag --QUIET                         Quiet the terminal bell.
# @flag --silent                        Quiet the terminal bell.
# @flag --SILENT                        Quiet the terminal bell.
# @flag -r                              Output "raw" control characters.
# @flag -R                              Output "raw" control characters.
# @flag --raw-control-chars             Output "raw" control characters.
# @flag --RAW-CONTROL-CHARS             Output "raw" control characters.
# @flag -s --squeeze-blank-lines        Squeeze multiple blank lines.
# @flag -S --chop-long-lines            Chop (truncate) long lines rather than wrapping.
# @option -t --tag <tag>                Find a tag.
# @option -T --tag-file <tagsfile>      Use an alternate tags file.
# @flag -u                              Change handling of backspaces, tabs and carriage returns.
# @flag -U                              Change handling of backspaces, tabs and carriage returns.
# @flag --underline-special             Change handling of backspaces, tabs and carriage returns.
# @flag --UNDERLINE-SPECIAL             Change handling of backspaces, tabs and carriage returns.
# @flag -V --version                    Display the version number of "less".
# @flag -w --hilite-unread              Highlight first new line after forward-screen.
# @flag -W --HILITE-UNREAD              Highlight first new line after any forward movement.
# @option -x --tabs <N[,...]>           Set tab stops.
# @flag -X --no-init                    Don't use termcap init/deinit strings.
# @option -y --max-forw-scroll <N>      Forward scroll limit.
# @option -z --window <N>               Set size of window.
# @flag -~ --tilde                      Don't display tildes after end of file.
# @option -# --shift <N>                Set horizontal scroll amount (0 = one half screen width).
# @flag --exit-follow-on-close          Exit F command on a pipe when writer closes pipe.
# @flag --file-size                     Automatically determine the size of the input file.
# @flag --follow-name                   The F command changes files if the input file is renamed.
# @option --header <N[,M]>              Use N lines and M columns to display file headers.
# @flag --incsearch                     Search file as each pattern character is typed in.
# @option --intr <C>                    Use C instead of ^X to interrupt a read.
# @option --line-num-width <N>          Set the width of the -N line number field to N characters.
# @option --modelines <N>               Read N lines from the input file and look for vim modelines.
# @flag --mouse                         Enable mouse input.
# @flag --no-keypad                     Don't send termcap keypad init/deinit strings.
# @flag --no-histdups                   Remove duplicates from command history.
# @flag --no-number-headers             Don't give line numbers to header lines.
# @flag --no-search-headers             Don't search in header lines or columns.
# @flag --no-vbell                      Disable the terminal's visual bell.
# @flag --redraw-on-quit                Redraw final screen when quitting.
# @option --rscroll <C>                 Set the character used to mark truncated lines.
# @flag --save-marks                    Retain marks across invocations of less.
# @option --search-options <EFKNRW->    Set default options for every search.
# @flag --show-preproc-errors           Display a message if preprocessor exits with an error status.
# @flag --proc-backspace                Process backspaces for bold/underline.
# @flag --SPECIAL-BACKSPACE             Treat backspaces as control characters.
# @flag --proc-return                   Delete carriage returns before newline.
# @flag --SPECIAL-RETURN                Treat carriage returns as control characters.
# @flag --proc-tab                      Expand tabs to spaces.
# @flag --SPECIAL-TAB                   Treat tabs as control characters.
# @option --status-col-width <N>        Set the width of the -J status column to N characters.
# @flag --status-line                   Highlight or color the entire line containing a mark.
# @flag --use-backslash                 Subsequent options use backslash as escape char.
# @flag --use-color                     Enables colored text.
# @option --wheel-lines <N>             Each click of the mouse wheel moves N lines.
# @flag --wordwrap                      Wrap lines at spaces.
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"