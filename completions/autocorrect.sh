#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --lint                          Lint and output problems.
# @flag --fix                           Automatically fix problems and rewrite file.
# @flag --debug                         Print debug information.
# @flag -q --quiet                      Do not print progress information.
# @option --format[diff|json|rdjson]    Output format.
# @option --threads                     Number of threads, 0 - use number of CPU.
# @option -c --config <FILE>            Special config file.
# @option --type <FILETYPE>             Directly use set file type.
# @flag --stdin                         Input text from <STDIN>
# @flag --no-diff-bg-color              Disable diff background color for diff output.
# @flag -h --help                       Print help
# @flag -V --version                    Print version
# @arg file*                            Target filepath or dir for format.

# {{ autocorrect init
# @cmd Initialize AutoCorrect config file.
# @flag --local       Use the built-in config file for without remote download.
# @flag -f --force    Override if the config file already exists.
# @flag -h --help     Print help
init() {
    :;
}
# }} autocorrect init

# {{ autocorrect update
# @cmd Update AutoCorrect to latest version.
# @flag -h --help    Print help
update() {
    :;
}
# }} autocorrect update

# {{ autocorrect server
# @cmd Start AutoCorrect LSP server.
# @flag -h --help    Print help
server() {
    :;
}
# }} autocorrect server

command eval "$(argc --argc-eval "$0" "$@")"