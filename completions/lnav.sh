#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h             Print this message, then exit.
# @flag -H             Display the internal help text.
# @option -I <dir>     An additional configuration directory.
# @flag -W             Print warnings related to lnav's configuration.
# @flag -u             Update formats installed from git repositories.
# @option -d <file>    Write debug messages to the given file.
# @flag -V             Print version information.
# @flag -r             Recursively load files from the given directory hierarchies.
# @flag -R             Load older rotated log files as well.
# @flag -t             Prepend timestamps to the lines of data being read in from the standard input.
# @option -w <file>    Write the contents of the standard input to this file.
# @option -c <cmd>     Execute a command after the files have been loaded.
# @option -f <file>    Execute the commands in the given file.
# @flag -n             Run without the curses UI.
# @flag -N             Do not open the default syslog file if no files are given.
# @flag -q             Do not print the log messages after executing all of the commands.
# @flag -i             Install the given format files and exit.
# @flag -m             Switch to the management command-line mode.
# @arg logfilen        The log files, directories, or remote paths to view.

command eval "$(argc --argc-eval "$0" "$@")"