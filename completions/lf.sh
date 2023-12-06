#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -command <value>          command to execute on client initialization
# @option -config <file>            path to the config file (instead of the usual paths)
# @option -cpuprofile <file>        path to the file to write the CPU profile
# @flag -doc                        show documentation
# @option -last-dir-path <path>     path to the file to write the last dir on exit (to use for cd)
# @option -log <file>               path to the log file to write messages
# @option -memprofile <file>        path to the file to write the memory profile
# @flag -print-last-dir             print the last dir to stdout on exit (to use for cd)
# @flag -print-selection            print the selected files to stdout on open (to use as open file dialog)
# @option -remote <string>          send remote command to server
# @option -selection-path <path>    path to the file to write selected files on open (to use as open file dialog)
# @flag -server                     start server (automatic)
# @flag -single                     start a client without server
# @flag -version                    show version
# @arg cd-or-select-path

command eval "$(argc --argc-eval "$0" "$@")"