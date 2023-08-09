#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -j <n>               Run n jobs in parallel
# @flag -k                     Keep same order
# @flag -X                     Multiple arguments with context replace
# @option --colsep <regexp>    Split input on regexp for positional replacements
# @option -S <sshlogin>        Example: foo@server.example.com
# @flag --slf*                 Use ~/.parallel/sshloginfile as the list of sshlogins
# @option --trc <{}.bar>       Shorthand for --transfer --return {}.bar --cleanup
# @flag --onall                Run the given command with argument on all sshlogins
# @flag --nonall               Run the given command with no arguments on all sshlogins
# @flag --pipe                 Split stdin (standard input) to multiple jobs.
# @option --recend <str>       Record end separator for --pipe.
# @option --recstart <str>     Record start separator for --pipe.

command eval "$(argc --argc-eval "$0" "$@")"