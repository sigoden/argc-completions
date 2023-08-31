#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --filename <filename>        filename to use when reading from stdin - this will be used in source-maps, errors etc
# @option --config-file <path>            Path to a .swcrc file to use
# @option --env-name <name>               The name of the 'env' to use when loading configs and plugins.
# @flag --no-swcrc                        Whether or not to look up .swcrc files
# @flag --delete-dir-on-start             Whether or not delete output directory on start
# @option --ignore <list>                 list of glob paths to **not** compile
# @option --only <list>                   list of glob paths to **only** compile
# @flag -w --watch                        Recompile files on changes
# @flag -q --quiet                        Suppress compilation output
# @option -s --source-maps[true|false|inline|both]  generate source maps
# @option --source-map-target <string>    set `file` on returned source map
# @option --source-file-name <string>     set `sources[0]` on returned source map
# @option --source-root <filename>        the root from which all sources are relative
# @option -o --out-file <out>             Compile all input files into a single file
# @option -d --out-dir <out>              Compile an input directory of modules into an output directory
# @flag -D --copy-files                   When compiling a directory copy over non-compilable files
# @flag --include-dotfiles                Include dotfiles when compiling and copying non-compilable files
# @option -C --config <config>            Override a config from .swcrc file.
# @flag --sync                            Invoke swc synchronously.
# @flag --log-watch-compilation           Log a message when a watched file is successfully compiled (default: true)
# @option --extensions <list>             Use specific extensions
# @flag -V --version                      output the version number
# @flag -h --help                         display help for command
# @arg files+

command eval "$(argc --argc-eval "$0" "$@")"