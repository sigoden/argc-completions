#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --project <project>     Load the given project
# @option --command <command>     Run the given command
# @flag -n --new-window           Open a new window
# @flag --launch-or-new-window    Only open a new window if the application is open
# @flag -a --add                  Add folders to the current window
# @flag -w --wait                 Wait for the files to be closed before returning
# @flag -b --background           Don't activate the application
# @flag --safe-mode               Launch using a sandboxed (clean) environment
# @flag -h --help                 Show help (this message) and exit
# @flag -v --version              Show version and exit
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"