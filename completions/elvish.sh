#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -buildinfo                    Output information about the Elvish build and quit
# @flag -c                            Treat the first argument as code to execute
# @flag -compileonly                  Parse and compile Elvish code without executing it
# @flag -daemon                       [internal flag] Run the storage daemon instead of an Elvish shell
# @option -db <file>                  [internal flag] Path to the database file
# @option -deprecation-level <int>    Show warnings for all features deprecated as of version 0.X (default 19)
# @flag -help                         Show usage help and quit
# @flag -i                            A no-op flag, introduced for POSIX compatibility
# @flag -json                         Show the output from -buildinfo, -compileonly or -version in JSON
# @option -log <file>                 Path to a file to write debug logs
# @flag -lsp                          Run the builtin language server
# @flag -norc                         Don't read the RC file when running interactively
# @option -rc <file>                  Path to the RC file when running interactively
# @option -sock <file>                [internal flag] Path to the daemon's Unix socket
# @flag -version                      Output the Elvish version and quit
# @arg file
# @arg args*

command eval "$(argc --argc-eval "$0" "$@")"