#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --force-focus                  Focuses on the given <PATH>, even if it is a directory
# @flag -h --help                      Prints help information
# @flag -m --pipe-msg-in               Helps safely passing messages to the active xplr session, use %%, %s and %q as the placeholders
# @flag -M --print-msg-in              Like --pipe-msg-in, but prints the message instead of passing to the active xplr session
# @flag --print-pwd-as-result          Prints the present working directory when quitting with `PrintResultAndQuit`
# @flag --read-only                    Enables read-only mode (config.general.read_only)
# @flag --read0                        Reads paths separated using the null character (\0)
# @flag --write0                       Prints paths separated using the null character (\0)
# @flag -0 --null                      Combines --read0 and --write0
# @flag -V --version                   Prints version information
# @option -c --config <PATH>           Specifies a custom config file (default is "$HOME/.config/xplr/init.lua")
# @option -C --extra-config* <PATH>    Specifies extra config files to load
# @option --on-load* <MESSAGE>         Sends messages when xplr loads
# @option --vroot <PATH>               Treats the specified path as the virtual root
# @arg path!                           Path to focus on, or enter if directory, (default is `.`)
# @arg selection+                      Paths to select, requires <PATH> to be set explicitly

command eval "$(argc --argc-eval "$0" "$@")"