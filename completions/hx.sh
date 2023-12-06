#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Prints help information
# @flag --tutor                                    Loads the tutorial
# @option --health[`_choice_health`] <CATEGORY>    Checks for potential errors in editor setup CATEGORY can be a language or one of 'clipboard', 'languages' or 'all'.
# @option -g --grammar[fetch|build]                Fetches or builds tree-sitter grammars listed in languages.toml
# @option -c --config <file>                       Specifies a file to use for configuration
# @flag -v                                         Increases logging verbosity each use for up to 3 times
# @option --log <file>                             Specifies a file to use for logging (default file: /home/sigo/.cache/helix/helix.log)
# @flag -V --version                               Prints version information
# @flag --vsplit                                   Splits all given files vertically into different windows
# @flag --hsplit                                   Splits all given files horizontally into different windows
# @option -w --working-dir <path>                  Specify an initial working directory
# @arg files+                                      Sets the input file to use, position can also be specified via file[:row[:col]]

_choice_health() {
    hx --health | gawk '{if ($1 == "Language" && $2 == "LSP") {p=1;next;}; if(p==1){print $1}}'
}

command eval "$(argc --argc-eval "$0" "$@")"