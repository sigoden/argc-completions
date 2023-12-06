#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --append                     Append standard input to the selection
# @flag -f --follow                     Append to selection as standard input grows
# @flag -z --zeroflush                  Overwrites selection when zero ('\0') is received
# @flag -i --input                      Read standard input into the selection
# @flag -o --output                     Write the selection to standard output
# @flag -c --clear                      Clear the selection
# @flag -d --delete                     Request that the selection be cleared and that the application owning it delete its contents
# @flag -p --primary                    Operate on the PRIMARY selection (default)
# @flag -s --secondary                  Operate on the SECONDARY selection
# @flag -b --clipboard                  Operate on the CLIPBOARD selection
# @flag -k --keep                       Do not modify the selections, but make the PRIMARY and SECONDARY selections persist even after the programs they were selected in exit.
# @flag -x --exchange                   Exchange the PRIMARY and SECONDARY selections
# @option --display <displayname>       Specify the connection to the X server
# @option -m --name <wm>                Name with the process will be identified
# @option -t --selectionTimeout <ms>    Specify the timeout in milliseconds within which the selection must be retrieved.
# @flag --trim                          Remove newline ('\n') char from end of input / output
# @flag -l --logfile                    Specify file to log errors to when detached.
# @flag -n --nodetach                   Do not detach from the controlling terminal.
# @flag -h --help                       Display this help and exit
# @flag -v --verbose                    Print informative messages
# @flag --version                       Output version information and exit

command eval "$(argc --argc-eval "$0" "$@")"