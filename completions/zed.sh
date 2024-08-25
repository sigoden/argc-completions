#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -w --wait                                  Wait for all of the given paths to be opened/closed before exiting
# @flag -a --add                                   Add files to the currently open workspace
# @flag -n --new                                   Create a new workspace
# @flag -v --version                               Print Zed's version and the app path
# @flag --foreground                               Run zed in the foreground (useful for debugging)
# @option --zed                                    Custom path to Zed.app or the zed binary
# @option --dev-server-token <DEV_SERVER_TOKEN>    Run zed in dev-server mode
# @flag -h --help                                  Print help (see a summary with '-h')
# @arg paths_with_position*                        A sequence of space-separated paths that you want to open.

command eval "$(argc --argc-eval "$0" "$@")"