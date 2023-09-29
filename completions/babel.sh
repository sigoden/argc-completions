#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -f --filename <filename>               The filename to use when reading from stdin.
# @option --presets <list>                       A comma-separated list of preset names.
# @option --plugins <list>                       A comma-separated list of plugin names.
# @option --config-file <path>                   Path to a .babelrc file to use.
# @option --env-name <name>                      The name of the 'env' to use when loading configs and plugins.
# @option --root-mode <mode>                     The project-root resolution mode.
# @option --source-type <script|module>
# @flag --no-babelrc                             Whether or not to look up .babelrc and .babelignore files.
# @option --ignore <list>                        List of glob paths to **not** compile.
# @option --only <list>                          List of glob paths to **only** compile.
# @flag --no-highlight-code                      Enable or disable ANSI syntax highlighting of code frames.
# @flag --no-comments                            Write comments to generated output.
# @flag --retain-lines                           Retain line numbers.
# @option --compact[true|false|auto]             Do not include superfluous whitespace characters and line terminators.
# @flag --minified                               Save as many bytes when printing.
# @option --auxiliary-comment-before <string>    Print a comment before any injected non-user code.
# @option --auxiliary-comment-after <string>     Print a comment after any injected non-user code.
# @option -s --source-maps[true|false|inline|both]
# @option --source-map-target <string>           Set `file` on returned source map.
# @option --source-file-name <string>            Set `sources[0]` on returned source map.
# @option --source-root <filename>               The root from which all sources are relative.
# @option --module-root <filename>               Optional prefix for the AMD module formatter that will be prepended to the filename on module definitions.
# @flag -M --module-ids                          Insert an explicit id for modules.
# @option --module-id <string>                   Specify a custom name for module ids.
# @option -x --extensions <extensions>           List of extensions to compile when a directory has been the input.
# @flag --keep-file-extension                    Preserve the file extensions of the input files.
# @flag -w --watch                               Recompile files on changes.
# @flag --skip-initial-build                     Do not compile files before watching.
# @option -o --out-file <out>                    Compile all input files into a single file.
# @option -d --out-dir <out>                     Compile an input directory of modules into an output directory.
# @flag --relative                               Compile into an output directory relative to input directory or file.
# @flag -D --copy-files                          When compiling a directory copy over non-compilable files.
# @flag --include-dotfiles                       Include dotfiles when compiling and copying non-compilable files.
# @flag --no-copy-ignored                        Exclude ignored files when copying non-compilable files.
# @flag --verbose                                Log everything.
# @flag --quiet                                  Don't log anything.
# @flag --delete-dir-on-start                    Delete the out directory before compilation.
# @option --out-file-extension <string>          Use a specific extension for the output files
# @flag -V --version                             output the version number
# @flag -h --help                                output usage information
# @arg files+

command eval "$(argc --argc-eval "$0" "$@")"