#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --colour                      Print colourised output.
# @option --csv-comma <file>          Comma separator to use when working with csv files.
# @option --csv-comment <file>        Comma separator used when reading csv files.
# @flag --csv-crlf                    True to use CRLF when writing CSV files.
# @option --csv-write-comma <file>    Comma separator used when writing csv files.
# @flag --escape-html                 Escape HTML tags when writing output.
# @option -f --file <file>            The file to query.
# @flag -h --help                     help for dasel
# @flag --pretty                      Pretty print the output.
# @option -r --read[json|yaml|toml|xml|csv] <string>  The parser to use when reading.
# @option -s --selector <string>      The selector to use when querying the data structure.
# @flag -v --version                  version for dasel
# @option -w --write <string>         The parser to use when writing.
# @arg selector

# {{ dasel completion
# @cmd Generate the autocompletion script for the specified shell
# @flag -h --help    help for completion
completion() {
    :;
}

# {{{ dasel completion bash
# @cmd Generate the autocompletion script for bash
# @flag -h --help            help for bash
# @flag --no-descriptions    disable completion descriptions
completion::bash() {
    :;
}
# }}} dasel completion bash

# {{{ dasel completion fish
# @cmd Generate the autocompletion script for fish
# @flag -h --help            help for fish
# @flag --no-descriptions    disable completion descriptions
completion::fish() {
    :;
}
# }}} dasel completion fish

# {{{ dasel completion powershell
# @cmd Generate the autocompletion script for powershell
# @flag -h --help            help for powershell
# @flag --no-descriptions    disable completion descriptions
completion::powershell() {
    :;
}
# }}} dasel completion powershell

# {{{ dasel completion zsh
# @cmd Generate the autocompletion script for zsh
# @flag -h --help            help for zsh
# @flag --no-descriptions    disable completion descriptions
completion::zsh() {
    :;
}
# }}} dasel completion zsh
# }} dasel completion

# {{ dasel delete
# @cmd Delete properties from the given file.
# @flag --colour                      Print colourised output.
# @option --csv-comma <file>          Comma separator to use when working with csv files.
# @option --csv-comment <file>        Comma separator used when reading csv files.
# @flag --csv-crlf                    True to use CRLF when writing CSV files.
# @option --csv-write-comma <file>    Comma separator used when writing csv files.
# @flag --escape-html                 Escape HTML tags when writing output.
# @option -f --file <file>            The file to query.
# @flag -h --help                     help for delete
# @option -o --out <file>             The file to write output to.
# @flag --pretty                      Pretty print the output.
# @option -r --read[json|yaml|toml|xml|csv] <string>  The parser to use when reading.
# @option -s --selector <string>      The selector to use when querying the data structure.
# @option -w --write <string>         The parser to use when writing.
# @arg selector
delete() {
    :;
}
# }} dasel delete

# {{ dasel man
# @cmd Generate manual pages for all dasel subcommands
# @flag -h --help                        help for man
# @option -o --output-directory <dir>    The directory in which man pages will be created (default ".")
# @arg dir!
man() {
    :;
}
# }} dasel man

# {{ dasel put
# @cmd Write properties to the given file.
# @flag --colour                      Print colourised output.
# @option --csv-comma <file>          Comma separator to use when working with csv files.
# @option --csv-comment <file>        Comma separator used when reading csv files.
# @flag --csv-crlf                    True to use CRLF when writing CSV files.
# @option --csv-write-comma <file>    Comma separator used when writing csv files.
# @flag --escape-html                 Escape HTML tags when writing output.
# @option -f --file <file>            The file to query.
# @flag -h --help                     help for put
# @option -o --out <file>             The file to write output to.
# @flag --pretty                      Pretty print the output.
# @option -r --read[json|yaml|toml|xml|csv] <string>  The parser to use when reading.
# @option -s --selector <string>      The selector to use when querying the data structure.
# @option -t --type[string|int|float|bool|json|yaml|toml|xml|csv] <string>  The type of variable being written.
# @option -v --value <string>         The value to write.
# @option -w --write <string>         The parser to use when writing.
# @arg selector
put() {
    :;
}
# }} dasel put

# {{ dasel validate
# @cmd Validate a list of files.
# @flag -h --help          help for validate
# @flag --include-error    Show error/validation information (default true)
# @arg file!
validate() {
    :;
}
# }} dasel validate

command eval "$(argc --argc-eval "$0" "$@")"