#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                      Print this help message and exit.
# @flag -v --version                   Print version number and exit.
# @flag --read                         Read, but do not parse nor evaluate, the input.
# @flag --format                       Format the source code and print it to standard output.
# @flag --write                        Replace the file with the formatted source code.
# @flag --parse                        Read and parse, but do not evaluate, the input.
# @flag --evaluate                     Read, parse, and evaluate the input (default unless --lint in effect).
# @option --exit-to-repl <socket>      After successfully processing --eval or --file, drop into repl instead of exiting.
# @option --error-to-repl <socket>     After failure processing --eval or --file, drop into repl instead of exiting.
# @flag --no-readline                  Disable readline functionality in the repl.
# @flag --no-repl-history              Do not read or save repl command history to a file.
# @option --working-dir <directory>    Specify directory to lint or working directory for lint configuration if linting single file (requires --lint).
# @flag --report-globally-unused       Report globally unused namespaces and public vars when linting directories (requires --lint and --working-dir).
# @option --dialect[clj|cljs|joker|edn] <dialect>  Set input dialect for linting; default is inferred from <filename> suffix, if any.
# @option --hashmap-threshold <n>      Set HASHMAP_THRESHOLD accordingly (internal magic of some sort).
# @option --profiler <type>            Specify type of profiler to use (default 'runtime/pprof' or 'pkg/profile').
# @option --cpuprofile <name>          Write CPU profile to specified file or directory (depending on profiler chosen).
# @option --cpuprofile-rate <rate>     Specify rate (hz, aka samples per second) for the 'runtime/pprof' CPU profiler to use.
# @option --memprofile <name>          Write memory profile to specified file.
# @option --memprofile-rate <rate>     Specify rate (one sample per <rate>) for the memory profiler to use.

command eval "$(argc --argc-eval "$0" "$@")"