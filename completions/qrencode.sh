#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                       display the help message.
# @option -o --output <FILENAME>        write image to FILENAME.
# @option -r --read-from <FILENAME>     read input data from FILENAME.
# @option -s --size <NUMBER>            specify module size in dots (pixels).
# @option -l --level[L|M|Q|H] <LMQH>    specify error correction level from L (lowest) to H (highest).
# @option -v --symversion <NUMBER>      specify the minimum version of the symbol.
# @option -m --margin <NUMBER>          specify the width of the margins.
# @option -d --dpi <NUMBER>             specify the DPI of the generated PNG.
# @option -t --type[PNG|PNG32|EPS|SVG|XPM|ANSI|ANSI256|ASCII|ASCIIi|UTF8|UTF8i|ANSIUTF8|ANSIUTF8i|ANSI256UTF8]  specify the type of the generated image.
# @flag -S --structured                 make structured symbols.
# @flag -k --kanji                      assume that the input text contains kanji (shift-jis).
# @flag -c --casesensitive              encode lower-case alphabet characters in 8-bit mode.
# @flag -i --ignorecase                 ignore case distinctions and use only upper-case characters.
# @flag -8 --8bit                       encode entire data in 8-bit mode.
# @flag -M --micro                      encode in a Micro QR Code.
# @flag --rle                           enable run-length encoding for SVG.
# @flag --svg-path                      use single path to draw modules for SVG.
# @flag --inline                        only useful for SVG output, generates an SVG without the XML tag.
# @option --foreground <RRGGBB[AA]>
# @option --background <RRGGBB[AA]>     specify foreground/background color in hexadecimal notation.
# @flag --strict-version                disable automatic version number adjustment.
# @flag -V --version                    display the version number and copyrights of the qrencode.
# @flag --verbose                       display verbose information to stderr.
# @arg string

command eval "$(argc --argc-eval "$0" "$@")"