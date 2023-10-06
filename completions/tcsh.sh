#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -b <file>            batch mode, read and execute commands from `file'
# @option -c <command>         run `command' from next argument
# @flag -d                     load directory stack from `~/.cshdirs'
# @option -D <name[=value]>    define environment variable `name' to `value' (DomainOS only)
# @flag -e                     exit on any error
# @flag -f                     start faster by ignoring the start-up file
# @flag -F                     use fork() instead of vfork() when spawning (ConvexOS only)
# @flag -i                     interactive, even when input is not from a terminal
# @flag -l                     act as a login shell, must be the only option specified
# @flag -m                     load the start-up file, whether or not owned by effective user
# @option -n <file>            no execute mode, just check syntax of the following `file'
# @flag -q                     accept SIGQUIT for running under a debugger
# @flag -s                     read commands from standard input
# @flag -t                     read one line from standard input
# @flag -v                     echo commands after history substitution
# @flag -V                     like -v but including commands read from the start-up file
# @flag -x                     echo commands immediately before execution
# @flag -X                     like -x but including commands read from the start-up file
# @flag --help                 print this message and exit
# @flag --version              print the version shell variable and exit

command eval "$(argc --argc-eval "$0" "$@")"