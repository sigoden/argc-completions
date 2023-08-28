#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    help for slides
# @arg file-md! <file.md>

# {{ slides serve
# @cmd Start an SSH server to run slides
# @flag -h --help               help for serve
# @option --host <string>       Server host to bind to (default "localhost")
# @option --keyPath <string>    Server private key path (default "slides")
# @option --port <int>          Server port to bind to (default 53531)
# @arg file-md! <file.md>
serve() {
    :;
}
# }} slides serve

command eval "$(argc --argc-eval "$0" "$@")"