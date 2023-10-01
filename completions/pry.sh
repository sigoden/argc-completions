#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e --exec <code>               A line of code to execute in context before the session starts
# @flag --no-pager                       Disable pager for long output
# @flag --no-history                     Disable history loading
# @flag --no-color                       Disable syntax highlighting for session
# @flag -f                               Suppress loading of pryrc
# @option -s --select-plugin <value>     Only load specified plugin (and no others).
# @option -d --disable-plugin <value>    Disable a specific plugin.
# @flag --no-plugins                     Suppress loading of plugins.
# @flag --plugins                        List installed plugins.
# @flag --simple-prompt                  Enable simple prompt mode
# @flag --noprompt                       No prompt mode
# @option -r --require <file>            `require` a Ruby script at startup
# @option -I <path>                      Add a path to the $LOAD_PATH
# @option --gem <value>                  Shorthand for -I./lib -rgemname
# @flag -v --version                     Display the Pry version
# @option -c --context <value>           Start the session in the specified context.
# @flag -h --help                        Display this help message.

command eval "$(argc --argc-eval "$0" "$@")"