#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -l --lib <library>    Specify an alternative wrapper library.
# @option --faked <binary>      Specify an alternative binary to use as faked.
# @option -s <save-file>        Save the fakeroot environment to save-file on exit.
# @option -i <load-file>        Load a fakeroot environment previously saved using -s from load-file.
# @flag -u --unknown-is-real    Use the real ownership of files previously unknown to fakeroot instead of pretending they are owned by root:root.
# @option -b <fd>               Specify fd base (TCP mode only).
# @flag -h                      Display help.
# @flag -v                      Display version.
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"