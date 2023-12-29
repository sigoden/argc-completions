#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                              output the version number
# @option -i --input* <FILE>                      Input files, "-" for STDIN
# @option -s --string                             Input SVG data string
# @option -f --folder <DIR>                       Input folder, optimize and rewrite all *.svg files
# @option -o --output* <PATH>                     Output file or folder (by default the same as the input), "-" for STDOUT
# @option -p --precision <INTEGER>                Set number of digits in the fractional part, overrides plugins params
# @option --config <FILE>                         Custom config file, only .js is supported
# @option --datauri[base64|enc|unenc] <FORMAT>    Output as Data URI string (base64), URI encoded (enc) or unencoded (unenc)
# @flag --multipass                               Pass over SVGs multiple times to ensure all optimizations are applied
# @flag --pretty                                  Make SVG pretty printed
# @option --indent <INTEGER>                      Indent number when pretty printing SVGs
# @option --eol[lf|crlf]                          Line break to use when outputting SVG: lf, crlf.
# @flag --final-newline                           Ensure SVG ends with a line break
# @flag -r --recursive                            Use with '--folder'.
# @option --exclude* <PATTERN>                    Use with '--folder'.
# @flag -q --quiet                                Only output error messages, not regular status messages
# @flag --show-plugins                            Show available plugins and exit
# @flag --no-color                                Output plain text without color
# @flag -h --help                                 display help for command
# @arg input-file*                                Alias to --input

command eval "$(argc --argc-eval "$0" "$@")"