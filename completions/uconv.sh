#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                    print this message
# @flag -V --version                 print the program version
# @flag -s --silent                  suppress messages
# @flag -v --verbose                 display progress information
# @flag -l --list                    list all available encodings
# @option --list-code <code>         list only the given encoding
# @flag --default-code               list only the default encoding
# @flag -L --list-transliterators    list all available transliterators
# @flag --canon                      print list in cnvrtrs.txt(5) format
# @option -x <transliteration>       run everything through transliteration
# @option --to-callback[`_choice_callback`] <callback>  use callback on destination encoding
# @flag -c                           omit invalid characters from the output
# @option --from-callback[`_choice_callback`] <callback>  use callback on original encoding
# @flag -i                           ignore invalid sequences in the input
# @option --callback <callback>      use callback on both encodings
# @option -b --block-size <size>     read size bytes blocks (default: 4096)
# @flag --fallback                   use fallback mapping
# @flag --no-fallback                do not use fallback mapping
# @option -f --from-code <code>      set the original encoding
# @option -t --to-code <code>        set the destination encoding
# @flag --add-signature              add a U+FEFF Unicode signature character (BOM)
# @flag --remove-signature           remove a U+FEFF Unicode signature character (BOM)
# @option -o --output <file>         write output to file
# @arg file*

_choice_callback() {
    printf "%s\n" substitute skip stop escape escape-icu escape-java escape-c escape-xml escape-xml-hex escape-xml-dec escape-unicode
}

command eval "$(argc --argc-eval "$0" "$@")"