#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @flag -a                    Use active file for getting new news.
# @option -f <newsrc-file>    Name of the newsrc file to use.
# @flag -C                    use colors.
# @flag -Dname                Add 'name' to list of predefined preprocessing tokens.
# @flag -d                    Get new text descriptions of each group from server.
# @option -i <init-file>      Name of initialization file to use (default: .slrnrc)
# @flag -k                    Do not process score file.
# @flag -k0                   Process score file but inhibit expensive scores.
# @flag -m                    Force XTerm mouse reporting
# @flag -n                    Do not check for new groups.
# @flag -w                    Wait for key before switching to full screen mode
# @flag -w0                   Wait for key (only when warnings / errors occur)
# @flag --create              Create a newsrc file by getting list of groups from server.
# @option --debug <FILE>      Write debugging information to FILE
# @flag --help                Print this usage.
# @flag --kill-log            FILE Keep a log of all killed articles in FILE
# @flag --show-config         Print configuration
# @flag --version             Show version and supported features

command eval "$(argc --argc-eval "$0" "$@")"