#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -o --output                            Output file (stdout if not specified)
# @flag --rename-export-conflicts              Rename exports to avoid conflicts (rather than error)
# @flag -rec                                   Rename exports to avoid conflicts (rather than error)
# @flag --skip-export-conflicts                Skip exports that conflict with previous ones
# @flag -sec                                   Skip exports that conflict with previous ones
# @flag -S --emit-text                         Emit text instead of binary for the output file
# @flag -g --debuginfo                         Emit names section and debug info
# @flag --mvp-features                         Disable all non-MVP features
# @flag -mvp                                   Disable all non-MVP features
# @flag --all-features                         Enable all features
# @flag -all                                   Enable all features
# @flag --detect-features                      (deprecated - this flag does nothing)
# @flag -q --quiet                             Emit less verbose output and hide trivial warnings.
# @flag --experimental-poppy                   Parse wast files as Poppy IR for testing purposes.
# @flag --enable-sign-ext                      Enable sign extension operations
# @flag --disable-sign-ext                     Disable sign extension operations
# @flag --enable-threads                       Enable atomic operations
# @flag --disable-threads                      Disable atomic operations
# @flag --enable-mutable-globals               Enable mutable globals
# @flag --disable-mutable-globals              Disable mutable globals
# @flag --enable-nontrapping-float-to-int      Enable nontrapping float-to-int operations
# @flag --disable-nontrapping-float-to-int     Disable nontrapping float-to-int operations
# @flag --enable-simd                          Enable SIMD operations and types
# @flag --disable-simd                         Disable SIMD operations and types
# @flag --enable-bulk-memory                   Enable bulk memory operations
# @flag --disable-bulk-memory                  Disable bulk memory operations
# @flag --enable-exception-handling            Enable exception handling operations
# @flag --disable-exception-handling           Disable exception handling operations
# @flag --enable-tail-call                     Enable tail call operations
# @flag --disable-tail-call                    Disable tail call operations
# @flag --enable-reference-types               Enable reference types
# @flag --disable-reference-types              Disable reference types
# @flag --enable-multivalue                    Enable multivalue functions
# @flag --disable-multivalue                   Disable multivalue functions
# @flag --enable-gc                            Enable garbage collection
# @flag --disable-gc                           Disable garbage collection
# @flag --enable-memory64                      Enable memory64
# @flag --disable-memory64                     Disable memory64
# @flag --enable-relaxed-simd                  Enable relaxed SIMD
# @flag --disable-relaxed-simd                 Disable relaxed SIMD
# @flag --enable-extended-const                Enable extended const expressions
# @flag --disable-extended-const               Disable extended const expressions
# @flag --enable-strings                       Enable strings
# @flag --disable-strings                      Disable strings
# @flag --enable-multimemory                   Enable multimemory
# @flag --disable-multimemory                  Disable multimemory
# @flag --enable-typed-function-references     Deprecated compatibility flag
# @flag --disable-typed-function-references    Deprecated compatibility flag
# @flag -n --no-validation                     Disables validation, assumes inputs are correct
# @flag --pass-arg                             An argument passed along to optimization passes being run.
# @flag -pa                                    An argument passed along to optimization passes being run.
# @flag --closed-world                         Assume code outside of the module does not inspect or interact with GC and function references, even if they are passed out.
# @flag -cw                                    Assume code outside of the module does not inspect or interact with GC and function references, even if they are passed out.
# @flag --version                              Output version information and exit
# @flag -h --help                              Show this help message and exit
# @flag -d --debug                             Print debug information to stderr

command eval "$(argc --argc-eval "$0" "$@")"