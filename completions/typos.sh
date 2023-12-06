#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --file-list <FILE_LIST>                 Read the list of newline separated paths from file or stdin (if `-`)
# @option -j --threads                            The approximate number of threads to use [default: 0]
# @flag --force-exclude                           Respect excluded files even for paths passed explicitly
# @flag -h --help                                 Print help
# @flag -V --version                              Print version
# @option -c --config <CUSTOM_CONFIG>             Custom config file
# @flag --isolated                                Ignore implicit configuration files
# @option --exclude <GLOB>                        Ignore files & directories matching the glob
# @flag --hidden                                  Search hidden files and directories
# @flag --no-ignore                               Don't respect ignore files
# @flag --no-ignore-dot                           Don't respect .ignore files
# @flag --no-ignore-global                        Don't respect global ignore files
# @flag --no-ignore-parent                        Don't respect ignore files in parent directories
# @flag --no-ignore-vcs                           Don't respect ignore files in vcs directories
# @flag --binary                                  Search binary files
# @flag --no-check-filenames                      Skip verifying spelling in file names
# @flag --no-check-files                          Skip verifying spelling in files
# @flag --no-unicode                              Only allow ASCII characters in identifiers
# @option --locale[en|en-us|en-gb|en-ca|en-au]    Language locale to suggest corrections for
# @flag --diff                                    Print a diff of what would change
# @flag -w --write-changes                        Write fixes out
# @flag --files                                   Debug: Print each file that would be spellchecked
# @flag --file-types                              Debug: Print each file's type
# @flag --identifiers                             Debug: Print each identifier that would be spellchecked
# @flag --words                                   Debug: Print each word that would be spellchecked
# @option --dump-config <DUMP_CONFIG>             Write the current configuration to file with `-` for stdout
# @flag --type-list                               Show all supported file types
# @option --format[silent|brief|long|json]        Render style for messages [default: long]
# @option --color[auto|always|never] <WHEN>       Controls when to use color [default: auto]
# @flag -v --verbose*                             More output per occurrence
# @flag -q --quiet*                               Less output per occurrence
# @arg path*                                      Paths to check with `-` for stdin [default: .]

command eval "$(argc --argc-eval "$0" "$@")"