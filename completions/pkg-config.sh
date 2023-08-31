#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Show help options
# @flag --version                                  output version of pkg-config
# @flag --modversion                               output version for package
# @option --atleast-pkgconfig-version <VERSION>    require given version of pkg-config
# @flag --libs                                     output all linker flags
# @flag --static                                   output linker flags for static linking
# @flag --short-errors                             print short errors
# @flag --libs-only-l                              output -l flags
# @flag --libs-only-other                          output other libs (e.g. -pthread)
# @flag --libs-only-L                              output -L flags
# @flag --cflags                                   output all pre-processor and compiler flags
# @flag --cflags-only-I                            output -I flags
# @flag --cflags-only-other                        output cflags not covered by the cflags-only-I option
# @option --variable <NAME>                        get the value of variable named NAME
# @option --define-variable <NAME=VALUE>           set variable NAME to VALUE
# @flag --exists                                   return 0 if the module(s) exist
# @flag --print-variables                          output list of variables defined by the module
# @flag --uninstalled                              return 0 if the uninstalled version of one or more module(s) or their dependencies will be used
# @option --atleast-version <VERSION>              return 0 if the module is at least version VERSION
# @option --exact-version <VERSION>                return 0 if the module is at exactly version VERSION
# @option --max-version <VERSION>                  return 0 if the module is at no newer than version VERSION
# @flag --list-all                                 list all known packages
# @flag --debug                                    show verbose debug information
# @flag --print-errors                             show verbose information about missing or conflicting packages (default unless --exists or --atleast/exact/max-version given on the command line)
# @flag --silence-errors                           be silent about errors (default when --exists or --atleast/exact/max-version given on the command line)
# @flag --errors-to-stdout                         print errors from --print-errors to stdout not stderr
# @flag --print-provides                           print which packages the package provides
# @flag --print-requires                           print which packages the package requires
# @flag --print-requires-private                   print which packages the package requires for static linking
# @flag --validate                                 validate a package's .pc file
# @flag --define-prefix                            try to override the value of prefix for each .pc file found with a guesstimated value based on the location of the .pc file
# @flag --dont-define-prefix                       don't try to override the value of prefix for each .pc file found with a guesstimated value based on the location of the .pc file
# @option --prefix-variable <PREFIX>               set the name of the variable that pkg-config automatically sets

command eval "$(argc --argc-eval "$0" "$@")"