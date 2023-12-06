#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -i -in         read text into X selection from standard input or files (default)
# @flag -o -out        prints the selection to standard out (generally for piping to a file or program)
# @flag -l -loops      number of selection requests to wait for before exiting
# @flag -d -display    X display to connect to (eg localhost:0")
# @flag -h -help       usage information
# @option -selection[primary|secondary|clipboard|buffer-cut]  selection to access
# @flag -noutf8        don't treat text as utf-8, use old unicode
# @flag -target        use the given target atom
# @flag -rmlastnl      remove the last newline charater if present
# @flag -version       version information
# @flag -silent        errors only, run in background (default)
# @flag -quiet         run in foreground, show what's happening
# @flag -verbose       running commentary
# @arg file*

command eval "$(argc --argc-eval "$0" "$@")"