#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                     Display the help message for this command
# @option -c --commands <String>      run the given commands and then exit
# @option -e --execute <String>       run the given commands and then enter an interactive shell
# @option -I --include-path <path>    set the NU_LIB_DIRS for the given script (delimited by char record_sep (''))
# @flag -i --interactive              start as an interactive shell
# @flag -l --login                    start as a login shell
# @option -m --table-mode <String>    the table mode to use.
# @flag -n --no-config-file           start with no config file and no env file
# @flag --no-std-lib                  start with no standard library
# @option -t --threads <Int>          threads to use for parallel commands
# @flag -v --version                  print the version
# @option --config <file>             start with an alternate config file
# @option --env-config <file>         start with an alternate environment config file
# @flag --lsp                         start nu's language server protocol
# @option --ide-goto-def <Int>        go to the definition of the item at the given position
# @option --ide-hover <Int>           give information about the item at the given position
# @option --ide-complete <Int>        list completions for the item at the given position
# @option --ide-check <Int>           run a diagnostic check on the given source and limit number of errors returned to provided number
# @flag --ide-ast                     generate the ast on the given source
# @option --plugin-config <file>      start with an alternate plugin signature file
# @option --log-level[error|warn|info|debug|trace] <String>  log level for diagnostic logs.
# @option --log-target <String>       set the target for the log to output.
# @flag --stdin                       redirect standard input to a command (with `-c`) or a script file
# @option --testbin <String>          run internal test binary
# @arg file
# @arg args*

command eval "$(argc --argc-eval "$0" "$@")"