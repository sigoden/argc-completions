#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                help for vhs
# @option -o --output* <file>    file name(s) of video output
# @flag -p --publish             publish your GIF to vhs.charm.sh and get a shareable URL
# @flag -q --quiet               quiet do not log messages.
# @flag -v --version             version for vhs
# @arg file!

# {{ vhs new
# @cmd Create a new tape file with example tape file contents and documentation
# @flag -h --help     help for new
# @flag -q --quiet    quiet do not log messages.
# @arg name!
new() {
    :;
}
# }} vhs new

# {{ vhs publish
# @cmd Publish your GIF to vhs.charm.sh and get a shareable URL
# @flag -h --help     help for publish
# @flag -q --quiet    quiet do not log messages.
# @arg gif!
publish() {
    :;
}
# }} vhs publish

# {{ vhs record
# @cmd Create a new tape file by recording your actions
# @flag -h --help                help for record
# @option -s --shell <string>    shell for recording (default "bash")
# @flag -q --quiet               quiet do not log messages.
record() {
    :;
}
# }} vhs record

# {{ vhs serve
# @cmd Start the VHS SSH server
# @flag -h --help     help for serve
# @flag -q --quiet    quiet do not log messages.
serve() {
    :;
}
# }} vhs serve

# {{ vhs themes
# @cmd List all the available themes, one per line
# @flag -h --help     help for themes
# @flag -q --quiet    quiet do not log messages.
themes() {
    :;
}
# }} vhs themes

# {{ vhs validate
# @cmd Validate a glob file path and parses all the files to ensure they are valid without running them.
# @flag -h --help     help for validate
# @flag -q --quiet    quiet do not log messages.
# @arg file+
validate() {
    :;
}
# }} vhs validate

command eval "$(argc --argc-eval "$0" "$@")"