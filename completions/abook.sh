#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h                         --help  show usage
# @flag -C                         --config <file>  use an alternative configuration file
# @flag -f                         --datafile <file>  use an alternative addressbook file
# @option --mutt-query <string>    make a query for mutt
# @flag --add-email                read an e-mail message from stdin and add the sender to the addressbook
# @flag --add-email-quiet          same as --add-email but doesn't require to confirm adding
# @flag --convert                  convert address book files
# @option --informat[`_choice_informat`] <format>  format for input file (default: abook)
# @option --infile <file>          source file (default: stdin)
# @option --outformat[`_choice_outformat`] <format>  format for output file (default: text)
# @option --outfile <file>         destination file (default: stdout)
# @option --outformatstr <str>     format to use for "custom" --outformat (default: "{nick} ({name}): {mobile}")
# @flag --formats                  list available formats

_choice_informat() {
    abook --formats  | sed -n '/^input formats:/,/^\s*$/ {//d; s/^\s\+//p}'
}

_choice_outformat() {
    abook --formats  | sed -n '/^output formats:/,/^\s*$/ {//d; s/^\s\+//p}'
}

command eval "$(argc --argc-eval "$0" "$@")"