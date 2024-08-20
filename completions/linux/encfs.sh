#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -H                       show optional FUSE Mount Options
# @flag -s                       disable multithreaded operation
# @flag -f                       run in foreground (don't spawn daemon).
# @flag -v --verbose             verbose: output encfs debug messages
# @option -i --idle <MINUTES>    Auto unmount after period of inactivity
# @flag --anykey                 Do not verify correct key is being used
# @flag --forcedecode            decode data even if an error is detected (for filesystems using MAC block headers)
# @flag --public                 act as a typical multi-user filesystem (encfs must be run as root)
# @flag --reverse                reverse encryption
# @flag --reversewrite           reverse encryption with writes enabled
# @option -c --config <path>     specifies config file (overrides ENV variable)
# @flag -u --unmount             unmounts specified mountPoint
# @option --extpass <program>    Use external program for password prompt
# @arg rootdir
# @arg mountpath

command eval "$(argc --argc-eval "$0" "$@")"