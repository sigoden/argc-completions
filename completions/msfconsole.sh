#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -E --environment                   Set Rails environment, defaults to RAIL_ENV environment variable or 'production'
# @option -M --migration-path <DIRECTORY>    Specify a directory containing additional DB migrations
# @flag -n --no-database                     Disable database support
# @option -y --yaml <PATH>                   Specify a YAML file containing database settings
# @option -c <FILE>                          Load the specified configuration file
# @flag -v                                   Show version
# @flag -V                                   Show version
# @flag --version                            Show version
# @flag --defer-module-loads                 Defer module loading unless explicitly asked
# @flag --no-defer-module-loads              Defer module loading unless explicitly asked
# @option -m --module-path <DIRECTORY>       Load an additional module path
# @flag -a --ask                             Ask before exiting Metasploit or accept 'exit -y'
# @option -H --history-file <FILE>           Save command history to the specified file
# @option -l --logger[TimestampColorlessFlatfile|Flatfile|Stderr|Stdout|StdoutWithoutTimestamps] <STRING>  Specify a logger to use
# @flag --readline
# @flag --no-readline
# @flag -L --real-readline                   Use the system Readline library instead of RbReadline
# @option -o --output <FILE>                 Output to the specified file
# @option -p --plugin                        Load a plugin on startup
# @flag -q --quiet                           Do not print the banner on startup
# @option -r --resource <FILE>               Execute the specified resource file (- for stdin)
# @option -x --execute-command <COMMAND>     Execute the specified console commands (use ; for multiples)
# @flag -h --help                            Show this message

command eval "$(argc --argc-eval "$0" "$@")"