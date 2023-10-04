#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -cnf-line <string>                   Parse string as a texmf.cnf configuration line.
# @flag -enc                                   Enable the encTeX extensions.
# @flag -file-line-error                       Print error messages in the form file:line:error which is similar to the way many compilers format them.
# @flag -no-file-line-error                    Disable printing error messages in the file:line:error style.
# @flag -file-line-error-style                 This is the old name of the -file-line-error option.
# @option -fmt <format>                        Use format as the name of the format to be used, instead of the name by which TeX was called or a %& line.
# @flag -halt-on-error                         Exit with an error code when an error is encountered during processing.
# @flag -help                                  Print help message and exit.
# @flag -ini                                   Start in INI mode, which is used to dump formats.
# @option -interaction <mode>                  Sets the interaction mode.
# @flag -ipc                                   Send DVI output to a socket as well as the usual output file.
# @flag -ipc-start                             As -ipc, and starts the server at the other end as well.
# @option -jobname <name>                      Use name for the job name, instead of deriving it from the name of the input file.
# @option -kpathsea-debug <bitmask>            Sets path searching debugging flags according to the bitmask.
# @option -mktex <fmt>                         Enable mktexfmt, where fmt must be either tex or tfm.
# @flag -mltex                                 Enable MLTeX extensions.
# @option -no-mktex <fmt>                      Disable mktexfmt, where fmt must be either tex or tfm.
# @option -output-comment <string>             Use string for the DVI file comment instead of the date.
# @option -output-directory <directory>        Write output files in directory instead of the current directory.
# @flag -parse-first-line                      If the first line of the main input file begins with %& parse it to look for a dump name or a -translate-file option.
# @flag -no-parse-first-line                   Disable parsing of the first line of the main input file.
# @option -progname <name>                     Pretend to be program name.
# @flag -recorder                              Enable the filename recorder.
# @flag -shell-escape                          Enable the \write18{command} construct.
# @flag -no-shell-escape                       Disable the \write18{command} construct, even if it is enabled in the texmf.cnf file.
# @option -src-specials <where>                Insert source specials in certain places of the DVI file.
# @option -translate-file <tcxname>            Use the tcxname translation table to set the mapping of input characters and re-mapping of output characters.
# @option -default-translate-file <tcxname>    Like -translate-file except that a %& line can overrule this setting.
# @flag -version                               Print version information and exit.
# @arg files*

command eval "$(argc --argc-eval "$0" "$@")"