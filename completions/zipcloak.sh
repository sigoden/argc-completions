#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --temp-path <path>         Use the directory given by path for the temporary zip file.
# @flag -d --decrypt                    Decrypt encrypted entries (copy if given wrong password).
# @flag -h --help                       Show a short help.
# @flag -L --license                    Show software license.
# @option -O --output-file <zipfile>    Write output to new archive zipfile, leaving original archive as is.
# @flag -q --quiet                      Quiet operation.
# @flag -v --version                    Show version information.
# @arg zipfile                          Zipfile to encrypt entries in

command eval "$(argc --argc-eval "$0" "$@")"