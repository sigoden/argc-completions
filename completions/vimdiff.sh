#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -g                                Run using GUI (like "gvim")
# @flag -f --nofork                       Foreground: Don't fork when starting GUI
# @flag -v                                Vi mode (like "vi")
# @flag -e                                Ex mode (like "ex")
# @flag -E                                Improved Ex mode
# @flag -d                                Diff mode (like "vimdiff")
# @flag -y                                Easy mode (like "evim", modeless)
# @flag -R                                Readonly mode (like "view")
# @flag -Z                                Restricted mode (like "rvim")
# @flag -m                                Modifications (writing files) not allowed
# @flag -M                                Modifications in text not allowed
# @flag -b                                Binary mode
# @flag -l                                Lisp mode
# @flag -C                                Compatible with Vi: 'compatible'
# @flag -N                                Not fully Vi compatible: 'nocompatible'
# @option -V <[N][fname]>                 Be verbose [level N] [log messages to fname]
# @flag -D                                Debugging mode
# @flag -n                                No swap file, use memory only
# @flag -r                                List swap files and exit
# @flag -L                                Same as -r
# @flag -A                                Start in Arabic mode
# @flag -H                                Start in Hebrew mode
# @option -T <terminal>                   Set terminal type to <terminal>
# @flag --not-a-term                      Skip warning for input/output not being a terminal
# @option --gui-dialog-file <fname>       For testing: write dialog text
# @flag --ttyfail                         Exit if input or output is not a terminal
# @option -u <vimrc-file>                 Use <vimrc> instead of any .vimrc
# @option -U <gvimrc-file>                Use <gvimrc> instead of any .gvimrc
# @flag --noplugin                        Don't load plugin scripts
# @option -p <N>                          Open N tab pages (default: one for each file)
# @option -o <N>                          Open N windows (default: one for each file)
# @option -O <N>                          Like -o but split vertically
# @option --cmd <command>                 Execute <command> before loading any vimrc file
# @option -c <command>                    Execute <command> after loading the first file
# @option -S <session-file>               Source file <session> after loading the first file
# @option -s <scriptin-file>              Read Normal mode commands from file <scriptin>
# @option -w <scriptout-file>             Append all typed commands to file <scriptout>
# @option -W <scriptout-file>             Write all typed commands to file <scriptout>
# @flag -x                                Edit encrypted files
# @flag -X                                Do not connect to X server
# @option --remote <files>                Edit <files> in a Vim server if possible
# @option --remote-silent <files>         Same, don't complain if there is no server
# @option --remote-wait <files>           As --remote but wait for files to have been edited
# @option --remote-wait-silent <files>    Same, don't complain if there is no server
# @option --remote-tab <[-wait][-silent]> <files>  As --remote but use tab page per file
# @option --remote-send <keys>            Send <keys> to a Vim server and exit
# @option --remote-expr <expr>            Evaluate <expr> in a Vim server and print result
# @flag --serverlist                      List available Vim server names and exit
# @option --servername <name>             Send to/become the Vim server <name>
# @option --startuptime <file>            Write startup timing messages to <file>
# @option --log <file>                    Start logging to <file> early
# @option -i <viminfo-file>               Use <viminfo> instead of .viminfo
# @flag --clean                           'nocompatible', Vim defaults, no plugins, no viminfo
# @flag -h --help                         Print Help (this message) and exit
# @flag --version                         Print version information and exit
# @option -bg <color>                     Use <color> for the background
# @option -background <color>             Use <color> for the background
# @option -fg <color>                     Use <color> for normal text
# @option -foreground <color>             Use <color> for normal text
# @option -fn <font>                      Use <font> for normal text
# @option -font <font>                    Use <font> for normal text
# @option -geom <geom>                    Use <geom> for initial geometry
# @option -geometry <geom>                Use <geom> for initial geometry
# @flag -iconic                           Start Vim iconified
# @flag -rv                               Use reverse video
# @flag -reverse                          Use reverse video
# @option --display <display>             Run Vim on <display>
# @option -display <display>              Run Vim on <display>
# @option --role <role>                   Set a unique role to identify the main window
# @option --socketid <xid>                Open Vim inside another GTK widget
# @flag --echo-wid                        Make gvim echo the Window ID on stdout
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"