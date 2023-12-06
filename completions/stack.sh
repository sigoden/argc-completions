#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --help                              Show this help text.
# @flag --version                           Show version.
# @flag --numeric-version                   Show only version number.
# @flag --hpack-numeric-version             Show only Hpack's version number.
# @option --docker <*>                      Run 'stack --docker-help' for details.
# @option --nix <*>                         Run 'stack --nix-help' for details.
# @option --verbosity                       Set verbosity level: silent, error, warn, info or debug.
# @flag -v --verbose                        Enable verbose mode: verbosity level "debug".
# @flag --silent                            Enable silent mode: verbosity level "silent".
# @flag --time-in-log                       Enable/disable inclusion of timings in logs, for the purposes of using diff with logs.
# @flag --no-time-in-log                    Enable/disable inclusion of timings in logs, for the purposes of using diff with logs.
# @flag --rsl-in-log                        Enable/disable inclusion of raw snapshot layer (rsl) in logs.
# @flag --no-rsl-in-log                     Enable/disable inclusion of raw snapshot layer (rsl) in logs.
# @flag --plan-in-log                       Enable/disable inclusion of information about build plan construction in logs.
# @flag --no-plan-in-log                    Enable/disable inclusion of information about build plan construction in logs.
# @option --stack-root                      Absolute path to the global Stack root directory.
# @option --work-dir                        Relative path to Stack's work directory.
# @flag --system-ghc                        Enable/disable using the system installed GHC (on the PATH) if it is available and its version matches.
# @flag --no-system-ghc                     Enable/disable using the system installed GHC (on the PATH) if it is available and its version matches.
# @flag --install-ghc                       Enable/disable downloading and installing GHC if necessary.
# @flag --no-install-ghc                    Enable/disable downloading and installing GHC if necessary.
# @option --arch                            System architecture, e.g. i386, x86_64.
# @option --ghc-variant <VARIANT>           Specialized GHC variant, e.g. int-native or integersimple (incompatible with --system-ghc).
# @option --ghc-build <BUILD>               Specialized GHC build, e.g. 'gmp4' or 'standard' (usually auto-detected).
# @option -j --jobs                         Number of concurrent jobs to run.
# @flag --extra-include-dirs                DIR Extra directories to check for C header files.
# @option --extra-lib-dirs <DIR>            Extra directories to check for libraries.
# @option --custom-preprocessor-extensions <EXT>  Extensions used for custom preprocessors.
# @option --with-gcc <PATH-TO-GCC>          Use gcc found at PATH-TO-GCC.
# @option --with-hpack <HPACK>              Use HPACK executable (overrides bundled Hpack).
# @flag --skip-ghc-check                    Enable/disable skipping the GHC version and architecture check.
# @flag --no-skip-ghc-check                 Enable/disable skipping the GHC version and architecture check.
# @flag --skip-msys                         Enable/disable skipping the local MSYS installation (Windows only).
# @flag --no-skip-msys                      Enable/disable skipping the local MSYS installation (Windows only).
# @option --local-bin-path <DIR>            Override the target directory for 'stack build --copy-bins' and 'stack install'.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @flag --modify-code-page                  Enable/disable setting the codepage to support UTF-8 (Windows only).
# @flag --no-modify-code-page               Enable/disable setting the codepage to support UTF-8 (Windows only).
# @flag --allow-different-user              Enable/disable permission for users other than the owner of the Stack root directory to use a Stack installation (POSIX only).
# @flag --no-allow-different-user           Enable/disable permission for users other than the owner of the Stack root directory to use a Stack installation (POSIX only).
# @flag --dump-logs                         Enable/disable dump the build output logs for local packages to the console.
# @flag --no-dump-logs                      Enable/disable dump the build output logs for local packages to the console.
# @option --color <WHEN>                    Specify when to use color in output; WHEN is 'always', 'never', or 'auto'.
# @option --colour <WHEN>                   Specify when to use color in output; WHEN is 'always', 'never', or 'auto'.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag --script-no-run-compile             Enable/disable the use of options `--no-run --compile` with `stack script`.
# @flag --no-script-no-run-compile          Enable/disable the use of options `--no-run --compile` with `stack script`.
# @option --resolver                        Override resolver in project file.
# @option --compiler                        Use the specified compiler.
# @flag --terminal                          Enable/disable overriding terminal detection in the case of running in a false terminal.
# @flag --no-terminal                       Enable/disable overriding terminal detection in the case of running in a false terminal.
# @option --stack-colors <STYLES>           Specify Stack's output styles; STYLES is a colon-delimited sequence of key=value, where 'key' is a style name and 'value' is a semicolon-delimited list of 'ANSI' SGR (Select Graphic Rendition) control codes (in decimal).
# @option --stack-colours <STYLES>          Specify Stack's output styles; STYLES is a colon-delimited sequence of key=value, where 'key' is a style name and 'value' is a semicolon-delimited list of 'ANSI' SGR (Select Graphic Rendition) control codes (in decimal).
# @option --terminal-width <INT>            Specify the width of the terminal, used for pretty-print messages.
# @option --stack-yaml                      Override project stack.yaml file (overrides any STACK_YAML environment variable).
# @option --lock-file <ARG>                 Specify how to interact with lock files.

# {{ stack build
# @cmd Build the package(s) in this directory/configuration.
# @flag --dry-run                               Don't build anything, just prepare to.
# @flag --pedantic                              Turn on -Wall and -Werror.
# @flag --fast                                  Turn off optimizations (-O0).
# @option --ghc-options <OPTIONS>               Additional options passed to GHC (can be specified multiple times).
# @option --PROG-option <ARG>                   Pass an argument to PROG (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>              Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --dependencies-only                     A synonym for --only-dependencies.
# @flag --only-snapshot                         Only build packages for the snapshot database, not the local database.
# @flag --only-dependencies                     Only build packages that are dependencies of targets on the command line.
# @flag --only-locals                           Only build packages in the local database.
# @flag --file-watch                            Watch for changes in local files and automatically rebuild.
# @flag --file-watch-poll                       Like --file-watch, but polling the filesystem instead of using events.
# @flag --watch-all                             Watch all local files not taking targets into account.
# @option --exec <COMMAND> <ARGUMENT(S)>        Command and argument(s) to run after a successful build.
# @flag --only-configure                        Only perform the configure step, not any builds.
# @flag --trace                                 Enable profiling in libraries, executables, etc.
# @flag --profile                               Enable profiling in libraries, executables, etc.
# @flag --no-strip                              Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --library-profiling                     Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --no-library-profiling                  Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --executable-profiling                  Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --no-executable-profiling               Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --library-stripping                     Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --no-library-stripping                  Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --executable-stripping                  Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --no-executable-stripping               Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --haddock                               Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @flag --no-haddock                            Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @option --haddock-arguments <HADDOCK_ARGS>    Arguments passed to the Haddock program.
# @flag --open                                  Enable/disable opening the local Haddock documentation in the browser.
# @flag --no-open                               Enable/disable opening the local Haddock documentation in the browser.
# @flag --haddock-deps                          Enable/disable building Haddock documentation for dependencies.
# @flag --no-haddock-deps                       Enable/disable building Haddock documentation for dependencies.
# @flag --haddock-internal                      Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --no-haddock-internal                   Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --haddock-hyperlink-source              Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --no-haddock-hyperlink-source           Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --copy-bins                             Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --no-copy-bins                          Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --copy-compiler-tool                    Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --no-copy-compiler-tool                 Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --prefetch                              Enable/disable fetching packages necessary for the build immediately.
# @flag --no-prefetch                           Enable/disable fetching packages necessary for the build immediately.
# @flag --keep-going                            Enable/disable continue running after a step fails.
# @flag --no-keep-going                         Enable/disable continue running after a step fails.
# @flag --keep-tmp-files                        Enable/disable keep intermediate files and build directories.
# @flag --no-keep-tmp-files                     Enable/disable keep intermediate files and build directories.
# @flag --force-dirty                           Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --no-force-dirty                        Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --test                                  Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                               Enable/disable testing the package(s) in this directory/configuration.
# @flag --rerun-tests                           Enable/disable running already successful tests.
# @flag --no-rerun-tests                        Enable/disable running already successful tests.
# @option --ta <TEST_ARGS>                      Arguments passed in to the test suite program.
# @option --test-arguments <TEST_ARGS>          Arguments passed in to the test suite program.
# @flag --coverage                              Generate a code coverage report.
# @flag --no-run-tests                          Disable running of tests.
# @flag --test-suite-timeout                    ARG Maximum test suite run time in seconds.
# @flag --tests-allow-stdin                     Enable/disable allow standard input in test executables.
# @flag --no-tests-allow-stdin                  Enable/disable allow standard input in test executables.
# @flag --bench                                 Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                              Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --ba <BENCH_ARGS>                     Forward BENCH_ARGS to the benchmark suite.
# @option --benchmark-arguments <BENCH_ARGS>    Forward BENCH_ARGS to the benchmark suite.
# @flag --no-run-benchmarks                     Disable running of benchmarks.
# @flag --reconfigure                           Enable/disable performing the configure step, even if unnecessary.
# @flag --no-reconfigure                        Enable/disable performing the configure step, even if unnecessary.
# @option --cabal-verbosity <VERBOSITY>         Cabal verbosity (accepts Cabal's numerical and extended syntax).
# @flag --cabal-verbose                         Enable/disable asking Cabal to be verbose in its output.
# @flag --no-cabal-verbose                      Enable/disable asking Cabal to be verbose in its output.
# @flag --split-objs                            Enable/disable split-objs, to reduce output size (at the cost of build time).
# @flag --no-split-objs                         Enable/disable split-objs, to reduce output size (at the cost of build time).
# @option --skip <ARG>                          Skip given component (can be specified multiple times).
# @flag --interleaved-output                    Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @flag --no-interleaved-output                 Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @option --progress-bar <FORMAT>               Progress bar format (accepts none, count-only, capped and full).
# @option --ddump-dir <ARG>                     Specify output directory for ddump-files.
# @option --setup-info-yaml <URL>               Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>        The base location of LTS/Nightly snapshots.
# @flag -h --help                               Show this help text
# @arg target[`_choice_target`]
build() {
    :;
}
# }} stack build

# {{ stack install
# @cmd Shortcut for 'build --copy-bins'.
# @flag --dry-run                               Don't build anything, just prepare to.
# @flag --pedantic                              Turn on -Wall and -Werror.
# @flag --fast                                  Turn off optimizations (-O0).
# @option --ghc-options <OPTIONS>               Additional options passed to GHC (can be specified multiple times).
# @option --PROG-option <ARG>                   Pass an argument to PROG (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>              Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --dependencies-only                     A synonym for --only-dependencies.
# @flag --only-snapshot                         Only build packages for the snapshot database, not the local database.
# @flag --only-dependencies                     Only build packages that are dependencies of targets on the command line.
# @flag --only-locals                           Only build packages in the local database.
# @flag --file-watch                            Watch for changes in local files and automatically rebuild.
# @flag --file-watch-poll                       Like --file-watch, but polling the filesystem instead of using events.
# @flag --watch-all                             Watch all local files not taking targets into account.
# @option --exec <COMMAND> <ARGUMENT(S)>        Command and argument(s) to run after a successful build.
# @flag --only-configure                        Only perform the configure step, not any builds.
# @flag --trace                                 Enable profiling in libraries, executables, etc.
# @flag --profile                               Enable profiling in libraries, executables, etc.
# @flag --no-strip                              Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --library-profiling                     Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --no-library-profiling                  Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --executable-profiling                  Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --no-executable-profiling               Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --library-stripping                     Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --no-library-stripping                  Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --executable-stripping                  Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --no-executable-stripping               Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --haddock                               Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @flag --no-haddock                            Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @option --haddock-arguments <HADDOCK_ARGS>    Arguments passed to the Haddock program.
# @flag --open                                  Enable/disable opening the local Haddock documentation in the browser.
# @flag --no-open                               Enable/disable opening the local Haddock documentation in the browser.
# @flag --haddock-deps                          Enable/disable building Haddock documentation for dependencies.
# @flag --no-haddock-deps                       Enable/disable building Haddock documentation for dependencies.
# @flag --haddock-internal                      Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --no-haddock-internal                   Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --haddock-hyperlink-source              Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --no-haddock-hyperlink-source           Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --copy-bins                             Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --no-copy-bins                          Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --copy-compiler-tool                    Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --no-copy-compiler-tool                 Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --prefetch                              Enable/disable fetching packages necessary for the build immediately.
# @flag --no-prefetch                           Enable/disable fetching packages necessary for the build immediately.
# @flag --keep-going                            Enable/disable continue running after a step fails.
# @flag --no-keep-going                         Enable/disable continue running after a step fails.
# @flag --keep-tmp-files                        Enable/disable keep intermediate files and build directories.
# @flag --no-keep-tmp-files                     Enable/disable keep intermediate files and build directories.
# @flag --force-dirty                           Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --no-force-dirty                        Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --test                                  Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                               Enable/disable testing the package(s) in this directory/configuration.
# @flag --rerun-tests                           Enable/disable running already successful tests.
# @flag --no-rerun-tests                        Enable/disable running already successful tests.
# @option --ta <TEST_ARGS>                      Arguments passed in to the test suite program.
# @option --test-arguments <TEST_ARGS>          Arguments passed in to the test suite program.
# @flag --coverage                              Generate a code coverage report.
# @flag --no-run-tests                          Disable running of tests.
# @flag --test-suite-timeout                    ARG Maximum test suite run time in seconds.
# @flag --tests-allow-stdin                     Enable/disable allow standard input in test executables.
# @flag --no-tests-allow-stdin                  Enable/disable allow standard input in test executables.
# @flag --bench                                 Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                              Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --ba <BENCH_ARGS>                     Forward BENCH_ARGS to the benchmark suite.
# @option --benchmark-arguments <BENCH_ARGS>    Forward BENCH_ARGS to the benchmark suite.
# @flag --no-run-benchmarks                     Disable running of benchmarks.
# @flag --reconfigure                           Enable/disable performing the configure step, even if unnecessary.
# @flag --no-reconfigure                        Enable/disable performing the configure step, even if unnecessary.
# @option --cabal-verbosity <VERBOSITY>         Cabal verbosity (accepts Cabal's numerical and extended syntax).
# @flag --cabal-verbose                         Enable/disable asking Cabal to be verbose in its output.
# @flag --no-cabal-verbose                      Enable/disable asking Cabal to be verbose in its output.
# @flag --split-objs                            Enable/disable split-objs, to reduce output size (at the cost of build time).
# @flag --no-split-objs                         Enable/disable split-objs, to reduce output size (at the cost of build time).
# @option --skip <ARG>                          Skip given component (can be specified multiple times).
# @flag --interleaved-output                    Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @flag --no-interleaved-output                 Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @option --progress-bar <FORMAT>               Progress bar format (accepts none, count-only, capped and full).
# @option --ddump-dir <ARG>                     Specify output directory for ddump-files.
# @option --setup-info-yaml <URL>               Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>        The base location of LTS/Nightly snapshots.
# @flag -h --help                               Show this help text
# @arg target
install() {
    :;
}
# }} stack install

# {{ stack uninstall
# @cmd Show how to uninstall Stack or a Stack-supplied tool.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
uninstall() {
    :;
}
# }} stack uninstall

# {{ stack test
# @cmd Shortcut for 'build --test'.
# @flag --dry-run                               Don't build anything, just prepare to.
# @flag --pedantic                              Turn on -Wall and -Werror.
# @flag --fast                                  Turn off optimizations (-O0).
# @option --ghc-options <OPTIONS>               Additional options passed to GHC (can be specified multiple times).
# @option --PROG-option <ARG>                   Pass an argument to PROG (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>              Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --dependencies-only                     A synonym for --only-dependencies.
# @flag --only-snapshot                         Only build packages for the snapshot database, not the local database.
# @flag --only-dependencies                     Only build packages that are dependencies of targets on the command line.
# @flag --only-locals                           Only build packages in the local database.
# @flag --file-watch                            Watch for changes in local files and automatically rebuild.
# @flag --file-watch-poll                       Like --file-watch, but polling the filesystem instead of using events.
# @flag --watch-all                             Watch all local files not taking targets into account.
# @option --exec <COMMAND> <ARGUMENT(S)>        Command and argument(s) to run after a successful build.
# @flag --only-configure                        Only perform the configure step, not any builds.
# @flag --trace                                 Enable profiling in libraries, executables, etc.
# @flag --profile                               Enable profiling in libraries, executables, etc.
# @flag --no-strip                              Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --library-profiling                     Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --no-library-profiling                  Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --executable-profiling                  Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --no-executable-profiling               Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --library-stripping                     Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --no-library-stripping                  Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --executable-stripping                  Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --no-executable-stripping               Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --haddock                               Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @flag --no-haddock                            Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @option --haddock-arguments <HADDOCK_ARGS>    Arguments passed to the Haddock program.
# @flag --open                                  Enable/disable opening the local Haddock documentation in the browser.
# @flag --no-open                               Enable/disable opening the local Haddock documentation in the browser.
# @flag --haddock-deps                          Enable/disable building Haddock documentation for dependencies.
# @flag --no-haddock-deps                       Enable/disable building Haddock documentation for dependencies.
# @flag --haddock-internal                      Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --no-haddock-internal                   Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --haddock-hyperlink-source              Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --no-haddock-hyperlink-source           Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --copy-bins                             Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --no-copy-bins                          Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --copy-compiler-tool                    Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --no-copy-compiler-tool                 Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --prefetch                              Enable/disable fetching packages necessary for the build immediately.
# @flag --no-prefetch                           Enable/disable fetching packages necessary for the build immediately.
# @flag --keep-going                            Enable/disable continue running after a step fails.
# @flag --no-keep-going                         Enable/disable continue running after a step fails.
# @flag --keep-tmp-files                        Enable/disable keep intermediate files and build directories.
# @flag --no-keep-tmp-files                     Enable/disable keep intermediate files and build directories.
# @flag --force-dirty                           Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --no-force-dirty                        Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --test                                  Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                               Enable/disable testing the package(s) in this directory/configuration.
# @flag --rerun-tests                           Enable/disable running already successful tests.
# @flag --no-rerun-tests                        Enable/disable running already successful tests.
# @option --ta <TEST_ARGS>                      Arguments passed in to the test suite program.
# @option --test-arguments <TEST_ARGS>          Arguments passed in to the test suite program.
# @flag --coverage                              Generate a code coverage report.
# @flag --no-run-tests                          Disable running of tests.
# @flag --test-suite-timeout                    ARG Maximum test suite run time in seconds.
# @flag --tests-allow-stdin                     Enable/disable allow standard input in test executables.
# @flag --no-tests-allow-stdin                  Enable/disable allow standard input in test executables.
# @flag --bench                                 Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                              Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --ba <BENCH_ARGS>                     Forward BENCH_ARGS to the benchmark suite.
# @option --benchmark-arguments <BENCH_ARGS>    Forward BENCH_ARGS to the benchmark suite.
# @flag --no-run-benchmarks                     Disable running of benchmarks.
# @flag --reconfigure                           Enable/disable performing the configure step, even if unnecessary.
# @flag --no-reconfigure                        Enable/disable performing the configure step, even if unnecessary.
# @option --cabal-verbosity <VERBOSITY>         Cabal verbosity (accepts Cabal's numerical and extended syntax).
# @flag --cabal-verbose                         Enable/disable asking Cabal to be verbose in its output.
# @flag --no-cabal-verbose                      Enable/disable asking Cabal to be verbose in its output.
# @flag --split-objs                            Enable/disable split-objs, to reduce output size (at the cost of build time).
# @flag --no-split-objs                         Enable/disable split-objs, to reduce output size (at the cost of build time).
# @option --skip <ARG>                          Skip given component (can be specified multiple times).
# @flag --interleaved-output                    Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @flag --no-interleaved-output                 Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @option --progress-bar <FORMAT>               Progress bar format (accepts none, count-only, capped and full).
# @option --ddump-dir <ARG>                     Specify output directory for ddump-files.
# @option --setup-info-yaml <URL>               Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>        The base location of LTS/Nightly snapshots.
# @flag -h --help                               Show this help text
# @arg target[`_choice_target`]
test() {
    :;
}
# }} stack test

# {{ stack bench
# @cmd Shortcut for 'build --bench'.
# @flag --dry-run                               Don't build anything, just prepare to.
# @flag --pedantic                              Turn on -Wall and -Werror.
# @flag --fast                                  Turn off optimizations (-O0).
# @option --ghc-options <OPTIONS>               Additional options passed to GHC (can be specified multiple times).
# @option --PROG-option <ARG>                   Pass an argument to PROG (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>              Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --dependencies-only                     A synonym for --only-dependencies.
# @flag --only-snapshot                         Only build packages for the snapshot database, not the local database.
# @flag --only-dependencies                     Only build packages that are dependencies of targets on the command line.
# @flag --only-locals                           Only build packages in the local database.
# @flag --file-watch                            Watch for changes in local files and automatically rebuild.
# @flag --file-watch-poll                       Like --file-watch, but polling the filesystem instead of using events.
# @flag --watch-all                             Watch all local files not taking targets into account.
# @option --exec <COMMAND> <ARGUMENT(S)>        Command and argument(s) to run after a successful build.
# @flag --only-configure                        Only perform the configure step, not any builds.
# @flag --trace                                 Enable profiling in libraries, executables, etc.
# @flag --profile                               Enable profiling in libraries, executables, etc.
# @flag --no-strip                              Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --library-profiling                     Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --no-library-profiling                  Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --executable-profiling                  Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --no-executable-profiling               Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --library-stripping                     Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --no-library-stripping                  Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --executable-stripping                  Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --no-executable-stripping               Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --haddock                               Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @flag --no-haddock                            Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @option --haddock-arguments <HADDOCK_ARGS>    Arguments passed to the Haddock program.
# @flag --open                                  Enable/disable opening the local Haddock documentation in the browser.
# @flag --no-open                               Enable/disable opening the local Haddock documentation in the browser.
# @flag --haddock-deps                          Enable/disable building Haddock documentation for dependencies.
# @flag --no-haddock-deps                       Enable/disable building Haddock documentation for dependencies.
# @flag --haddock-internal                      Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --no-haddock-internal                   Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --haddock-hyperlink-source              Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --no-haddock-hyperlink-source           Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --copy-bins                             Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --no-copy-bins                          Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --copy-compiler-tool                    Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --no-copy-compiler-tool                 Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --prefetch                              Enable/disable fetching packages necessary for the build immediately.
# @flag --no-prefetch                           Enable/disable fetching packages necessary for the build immediately.
# @flag --keep-going                            Enable/disable continue running after a step fails.
# @flag --no-keep-going                         Enable/disable continue running after a step fails.
# @flag --keep-tmp-files                        Enable/disable keep intermediate files and build directories.
# @flag --no-keep-tmp-files                     Enable/disable keep intermediate files and build directories.
# @flag --force-dirty                           Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --no-force-dirty                        Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --test                                  Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                               Enable/disable testing the package(s) in this directory/configuration.
# @flag --rerun-tests                           Enable/disable running already successful tests.
# @flag --no-rerun-tests                        Enable/disable running already successful tests.
# @option --ta <TEST_ARGS>                      Arguments passed in to the test suite program.
# @option --test-arguments <TEST_ARGS>          Arguments passed in to the test suite program.
# @flag --coverage                              Generate a code coverage report.
# @flag --no-run-tests                          Disable running of tests.
# @flag --test-suite-timeout                    ARG Maximum test suite run time in seconds.
# @flag --tests-allow-stdin                     Enable/disable allow standard input in test executables.
# @flag --no-tests-allow-stdin                  Enable/disable allow standard input in test executables.
# @flag --bench                                 Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                              Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --ba <BENCH_ARGS>                     Forward BENCH_ARGS to the benchmark suite.
# @option --benchmark-arguments <BENCH_ARGS>    Forward BENCH_ARGS to the benchmark suite.
# @flag --no-run-benchmarks                     Disable running of benchmarks.
# @flag --reconfigure                           Enable/disable performing the configure step, even if unnecessary.
# @flag --no-reconfigure                        Enable/disable performing the configure step, even if unnecessary.
# @option --cabal-verbosity <VERBOSITY>         Cabal verbosity (accepts Cabal's numerical and extended syntax).
# @flag --cabal-verbose                         Enable/disable asking Cabal to be verbose in its output.
# @flag --no-cabal-verbose                      Enable/disable asking Cabal to be verbose in its output.
# @flag --split-objs                            Enable/disable split-objs, to reduce output size (at the cost of build time).
# @flag --no-split-objs                         Enable/disable split-objs, to reduce output size (at the cost of build time).
# @option --skip <ARG>                          Skip given component (can be specified multiple times).
# @flag --interleaved-output                    Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @flag --no-interleaved-output                 Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @option --progress-bar <FORMAT>               Progress bar format (accepts none, count-only, capped and full).
# @option --ddump-dir <ARG>                     Specify output directory for ddump-files.
# @option --setup-info-yaml <URL>               Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>        The base location of LTS/Nightly snapshots.
# @flag -h --help                               Show this help text
# @arg target[`_choice_target`]
bench() {
    :;
}
# }} stack bench

# {{ stack haddock
# @cmd Shortcut for 'build --haddock'.
# @flag --dry-run                               Don't build anything, just prepare to.
# @flag --pedantic                              Turn on -Wall and -Werror.
# @flag --fast                                  Turn off optimizations (-O0).
# @option --ghc-options <OPTIONS>               Additional options passed to GHC (can be specified multiple times).
# @option --PROG-option <ARG>                   Pass an argument to PROG (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>              Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --dependencies-only                     A synonym for --only-dependencies.
# @flag --only-snapshot                         Only build packages for the snapshot database, not the local database.
# @flag --only-dependencies                     Only build packages that are dependencies of targets on the command line.
# @flag --only-locals                           Only build packages in the local database.
# @flag --file-watch                            Watch for changes in local files and automatically rebuild.
# @flag --file-watch-poll                       Like --file-watch, but polling the filesystem instead of using events.
# @flag --watch-all                             Watch all local files not taking targets into account.
# @option --exec <COMMAND> <ARGUMENT(S)>        Command and argument(s) to run after a successful build.
# @flag --only-configure                        Only perform the configure step, not any builds.
# @flag --trace                                 Enable profiling in libraries, executables, etc.
# @flag --profile                               Enable profiling in libraries, executables, etc.
# @flag --no-strip                              Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --library-profiling                     Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --no-library-profiling                  Enable/disable library profiling for TARGETs and all its dependencies.
# @flag --executable-profiling                  Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --no-executable-profiling               Enable/disable executable profiling for TARGETs and all its dependencies.
# @flag --library-stripping                     Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --no-library-stripping                  Enable/disable library stripping for TARGETs and all its dependencies.
# @flag --executable-stripping                  Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --no-executable-stripping               Enable/disable executable stripping for TARGETs and all its dependencies.
# @flag --haddock                               Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @flag --no-haddock                            Enable/disable generating Haddock documentation for the package(s) in this directory/configuration.
# @option --haddock-arguments <HADDOCK_ARGS>    Arguments passed to the Haddock program.
# @flag --open                                  Enable/disable opening the local Haddock documentation in the browser.
# @flag --no-open                               Enable/disable opening the local Haddock documentation in the browser.
# @flag --haddock-deps                          Enable/disable building Haddock documentation for dependencies.
# @flag --no-haddock-deps                       Enable/disable building Haddock documentation for dependencies.
# @flag --haddock-internal                      Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --no-haddock-internal                   Enable/disable building Haddock documentation for internal modules (like 'cabal haddock --internal').
# @flag --haddock-hyperlink-source              Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --no-haddock-hyperlink-source           Enable/disable building hyperlinked source for Haddock documentation (like 'haddock --hyperlinked-source').
# @flag --copy-bins                             Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --no-copy-bins                          Enable/disable copying binaries to local-bin (see 'stack path').
# @flag --copy-compiler-tool                    Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --no-copy-compiler-tool                 Enable/disable copying binaries of targets to compiler-tools-bin (see 'stack path').
# @flag --prefetch                              Enable/disable fetching packages necessary for the build immediately.
# @flag --no-prefetch                           Enable/disable fetching packages necessary for the build immediately.
# @flag --keep-going                            Enable/disable continue running after a step fails.
# @flag --no-keep-going                         Enable/disable continue running after a step fails.
# @flag --keep-tmp-files                        Enable/disable keep intermediate files and build directories.
# @flag --no-keep-tmp-files                     Enable/disable keep intermediate files and build directories.
# @flag --force-dirty                           Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --no-force-dirty                        Enable/disable forcing the treatment of all local packages as having dirty files.
# @flag --test                                  Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                               Enable/disable testing the package(s) in this directory/configuration.
# @flag --rerun-tests                           Enable/disable running already successful tests.
# @flag --no-rerun-tests                        Enable/disable running already successful tests.
# @option --ta <TEST_ARGS>                      Arguments passed in to the test suite program.
# @option --test-arguments <TEST_ARGS>          Arguments passed in to the test suite program.
# @flag --coverage                              Generate a code coverage report.
# @flag --no-run-tests                          Disable running of tests.
# @flag --test-suite-timeout                    ARG Maximum test suite run time in seconds.
# @flag --tests-allow-stdin                     Enable/disable allow standard input in test executables.
# @flag --no-tests-allow-stdin                  Enable/disable allow standard input in test executables.
# @flag --bench                                 Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                              Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --ba <BENCH_ARGS>                     Forward BENCH_ARGS to the benchmark suite.
# @option --benchmark-arguments <BENCH_ARGS>    Forward BENCH_ARGS to the benchmark suite.
# @flag --no-run-benchmarks                     Disable running of benchmarks.
# @flag --reconfigure                           Enable/disable performing the configure step, even if unnecessary.
# @flag --no-reconfigure                        Enable/disable performing the configure step, even if unnecessary.
# @option --cabal-verbosity <VERBOSITY>         Cabal verbosity (accepts Cabal's numerical and extended syntax).
# @flag --cabal-verbose                         Enable/disable asking Cabal to be verbose in its output.
# @flag --no-cabal-verbose                      Enable/disable asking Cabal to be verbose in its output.
# @flag --split-objs                            Enable/disable split-objs, to reduce output size (at the cost of build time).
# @flag --no-split-objs                         Enable/disable split-objs, to reduce output size (at the cost of build time).
# @option --skip <ARG>                          Skip given component (can be specified multiple times).
# @flag --interleaved-output                    Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @flag --no-interleaved-output                 Enable/disable printing concurrent GHC output to the console with a prefix for the package name.
# @option --progress-bar <FORMAT>               Progress bar format (accepts none, count-only, capped and full).
# @option --ddump-dir <ARG>                     Specify output directory for ddump-files.
# @option --setup-info-yaml <URL>               Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>        The base location of LTS/Nightly snapshots.
# @flag -h --help                               Show this help text
# @arg target[`_choice_target`]
haddock() {
    :;
}
# }} stack haddock

# {{ stack new
# @cmd Create a new project from a template.
# @flag --bare                              Do not create a subdirectory for the project.
# @option -p --param <KEY:VALUE>            Parameter for the template in the format key:value.
# @flag --omit-packages                     Exclude conflicting or incompatible user packages, when initialising.
# @flag --force                             Force an initialisation that overwrites any existing stack.yaml file.
# @flag --ignore-subdirs                    Do not search for Cabal files in subdirectories, when initialising.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg package_name
# @arg template_name
# @arg dir*
new() {
    :;
}
# }} stack new

# {{ stack templates
# @cmd Show how to find templates available for 'stack new'.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
templates() {
    :;
}
# }} stack templates

# {{ stack init
# @cmd Create Stack project configuration from Cabal or Hpack package specifications.
# @flag --omit-packages                     Exclude conflicting or incompatible user packages, when initialising.
# @flag --force                             Force an initialisation that overwrites any existing stack.yaml file.
# @flag --ignore-subdirs                    Do not search for Cabal files in subdirectories, when initialising.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg dir*
init() {
    :;
}
# }} stack init

# {{ stack setup
# @cmd Get the appropriate GHC for your project.
# @flag --reinstall                            Enable/disable reinstalling GHC, even if available (incompatible with --system-ghc).
# @flag --no-reinstall                         Enable/disable reinstalling GHC, even if available (incompatible with --system-ghc).
# @option --ghc-bindist <URL>                  Alternate GHC binary distribution (requires custom --ghc-variant).
# @option --ghcjs-boot-options <GHCJS_BOOT>    Additional ghcjs-boot options.
# @flag --ghcjs-boot-clean                     Enable/disable Control if ghcjs-boot should have --clean option present.
# @flag --no-ghcjs-boot-clean                  Enable/disable Control if ghcjs-boot should have --clean option present.
# @option --setup-info-yaml <URL>              Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>       The base location of LTS/Nightly snapshots.
# @flag -h --help                              Show this help text
# @arg ghc_version
setup() {
    :;
}
# }} stack setup

# {{ stack path
# @cmd Print out handy path information.
# @flag --stack-root                        Global Stack root directory
# @flag --global-config                     Global Stack configuration file
# @flag --project-root                      Project root (derived from stack.yaml file)
# @flag --config-location                   Configuration location (where the stack.yaml file is)
# @flag --bin-path                          PATH environment variable
# @flag --programs                          Install location for GHC and other core tools (see 'stack ls tools' command)
# @flag --compiler-exe                      Compiler binary (e.g. ghc)
# @flag --compiler-bin                      Directory containing the compiler binary (e.g. ghc)
# @flag --compiler-tools-bin                Directory containing binaries specific to a particular compiler (e.g. intero)
# @flag --local-bin                         Directory where Stack installs executables (e.g. ~/.local/bin (Unix-like OSs) or %APPDATA%\local\bin (Windows))
# @flag --extra-include-dirs                Extra include directories
# @flag --extra-library-dirs                Extra library directories
# @flag --snapshot-pkg-db                   Snapshot package database
# @flag --local-pkg-db                      Local project package database
# @flag --global-pkg-db                     Global package database
# @flag --ghc-package-path                  GHC_PACKAGE_PATH environment variable
# @flag --snapshot-install-root             Snapshot installation root
# @flag --local-install-root                Local project installation root
# @flag --snapshot-doc-root                 Snapshot documentation root
# @flag --local-doc-root                    Local project documentation root
# @flag --local-hoogle-root                 Local project documentation root
# @flag --dist-dir                          Dist work directory, relative to package directory
# @flag --local-hpc-root                    Where HPC reports and tix files are stored
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
path() {
    :;
}
# }} stack path

# {{ stack ls
# @cmd List command.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
ls() {
    :;
}

# {{{ stack ls snapshots
# @cmd View snapshots.
# @flag -l --lts        Only show LTS Haskell snapshots.
# @flag -n --nightly    Only show Nightly snapshots.
# @flag -h --help       Show this help text
ls::snapshots() {
    :;
}

# {{{{ stack ls snapshots remote
# @cmd View remote snapshots.
# @flag -h --help    Show this help text
ls::snapshots::remote() {
    :;
}
# }}}} stack ls snapshots remote

# {{{{ stack ls snapshots local
# @cmd View local snapshots.
# @flag -h --help    Show this help text
ls::snapshots::local() {
    :;
}
# }}}} stack ls snapshots local
# }}} stack ls snapshots

# {{{ stack ls dependencies
# @cmd View the dependencies.
# @option --separator <SEP>           Separator between package name and package version.
# @flag --license                     Enable/disable printing of dependency licenses instead of versions.
# @flag --no-license                  Enable/disable printing of dependency licenses instead of versions.
# @flag --external                    Enable/disable inclusion of external dependencies.
# @flag --no-external                 Enable/disable inclusion of external dependencies.
# @flag --include-base                Enable/disable inclusion of dependencies on base.
# @flag --no-include-base             Enable/disable inclusion of dependencies on base.
# @option --depth                     Limit the depth of dependency resolution.
# @option --prune <PACKAGES>          Prune specified package(s).
# @option --flag <PACKAGE:[-]FLAG>    Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --test                        Consider dependencies of test components.
# @flag --bench                       Consider dependencies of benchmark components.
# @flag --global-hints                Do not require an install GHC; instead, use a hints file for global packages.
# @flag -h --help                     Show this help text
ls::dependencies() {
    :;
}

# {{{{ stack ls dependencies text
# @cmd Print dependencies as text (default).
ls::dependencies::text() {
    :;
}
# }}}} stack ls dependencies text

# {{{{ stack ls dependencies cabal
# @cmd Print dependencies as exact Cabal constraints.
ls::dependencies::cabal() {
    :;
}
# }}}} stack ls dependencies cabal

# {{{{ stack ls dependencies tree
# @cmd Print dependencies as tree.
ls::dependencies::tree() {
    :;
}
# }}}} stack ls dependencies tree

# {{{{ stack ls dependencies json
# @cmd Print dependencies as JSON.
ls::dependencies::json() {
    :;
}
# }}}} stack ls dependencies json
# }}} stack ls dependencies

# {{{ stack ls stack-colors
# @cmd View Stack's output styles.
# @flag --basic         Enable/disable a basic report of the styles used.
# @flag --no-basic      Enable/disable a basic report of the styles used.
# @flag --sgr           Enable/disable the provision of the equivalent SGR instructions (provided by default).
# @flag --no-sgr        Enable/disable the provision of the equivalent SGR instructions (provided by default).
# @flag --example       Enable/disable the provision of an example of the applied style (provided by default for colored output).
# @flag --no-example    Enable/disable the provision of an example of the applied style (provided by default for colored output).
# @flag -h --help       Show this help text
ls::stack-colors() {
    :;
}
# }}} stack ls stack-colors

# {{{ stack ls stack-colours
# @cmd View Stack's output styles (alias for 'stack-colors').
# @flag --basic         Enable/disable a basic report of the styles used.
# @flag --no-basic      Enable/disable a basic report of the styles used.
# @flag --sgr           Enable/disable the provision of the equivalent SGR instructions (provided by default).
# @flag --no-sgr        Enable/disable the provision of the equivalent SGR instructions (provided by default).
# @flag --example       Enable/disable the provision of an example of the applied style (provided by default for colored output).
# @flag --no-example    Enable/disable the provision of an example of the applied style (provided by default for colored output).
# @flag -h --help       Show this help text
ls::stack-colours() {
    :;
}
# }}} stack ls stack-colours

# {{{ stack ls tools
# @cmd View Stack's installed tools.
# @option --filter <TOOL_NAME>    Filter by a tool name (eg 'ghc', 'ghc-git' or 'msys2') - case sensitive.
# @flag -h --help                 Show this help text
ls::tools() {
    :;
}
# }}} stack ls tools
# }} stack ls

# {{ stack unpack
# @cmd Unpack one or more packages locally.
# @option --to <ARG>                        Optional path to unpack the package into (will unpack into subdirectory).
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg package[`_choice_dependency`]
unpack() {
    :;
}
# }} stack unpack

# {{ stack update
# @cmd Update the package index.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
update() {
    :;
}
# }} stack update

# {{ stack upgrade
# @cmd Upgrade Stack, installing to Stack's local-bin directory and, if different and permitted, the directory of the current Stack executable.
# @flag --source-only                       Do not use a binary upgrade path.
# @option --binary-platform <PLATFORM>      Platform type for archive to download.
# @flag --force-download                    Download the latest available Stack executable, even if not newer.
# @flag --only-local-bin                    Enable/disable downloading only to Stack's local binary directory (default: disabled)
# @flag --no-only-local-bin                 Enable/disable downloading only to Stack's local binary directory (default: disabled)
# @flag --binary-version                    VERSION Download a specific Stack version, even if already installed.
# @option --github-org <USER>               GitHub organization name.
# @option --github-repo <REPO>              GitHub repository name.
# @flag --binary-only                       Do not use a source upgrade path.
# @flag --git                               Clone from Git instead of downloading from Hackage (more dangerous).
# @option --git-repo <URL>                  Clone from specified Git repository.
# @option --git-branch <BRANCH>             Clone from specified Git branch.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
upgrade() {
    :;
}
# }} stack upgrade

# {{ stack upload
# @cmd Upload a package to Hackage.
# @option --pvp-bounds[none|lower|upper|both]    How PVP version bounds should be added to Cabal file: none, lower, upper, both.
# @flag --ignore-check                           Do not check package for common mistakes.
# @flag --test-tarball                           Enable/disable building of the resulting tarball.
# @flag --no-test-tarball                        Enable/disable building of the resulting tarball.
# @option --tar-dir <ARG>                        If specified, copy all the tar to this directory.
# @flag --candidate                              Upload as a package candidate.
# @option --setup-info-yaml <URL>                Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>         The base location of LTS/Nightly snapshots.
# @flag -h --help                                Show this help text
# @arg dir
upload() {
    :;
}
# }} stack upload

# {{ stack sdist
# @cmd Create source distribution tarballs.
# @option --pvp-bounds[none|lower|upper|both]    How PVP version bounds should be added to Cabal file: none, lower, upper, both.
# @flag --ignore-check                           Do not check package for common mistakes.
# @flag --test-tarball                           Enable/disable building of the resulting tarball.
# @flag --no-test-tarball                        Enable/disable building of the resulting tarball.
# @option --tar-dir <ARG>                        If specified, copy all the tar to this directory.
# @option --setup-info-yaml <URL>                Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>         The base location of LTS/Nightly snapshots.
# @flag -h --help                                Show this help text
# @arg dir
sdist() {
    :;
}
# }} stack sdist

# {{ stack dot
# @cmd Visualize your project's dependency graph using Graphviz dot.
# @flag --external                          Enable/disable inclusion of external dependencies.
# @flag --no-external                       Enable/disable inclusion of external dependencies.
# @flag --include-base                      Enable/disable inclusion of dependencies on base.
# @flag --no-include-base                   Enable/disable inclusion of dependencies on base.
# @option --depth                           Limit the depth of dependency resolution.
# @option --prune <PACKAGES>                Prune specified package(s).
# @option --flag <PACKAGE:[-]FLAG>          Override flags set in stack.yaml (applies to local packages and extra-deps).
# @flag --test                              Consider dependencies of test components.
# @flag --bench                             Consider dependencies of benchmark components.
# @flag --global-hints                      Do not require an install GHC; instead, use a hints file for global packages.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg target[`_choice_target`]
dot() {
    :;
}
# }} stack dot

# {{ stack ghc
# @cmd Run ghc.
# @flag --ghc-package-path                  Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --no-ghc-package-path               Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --stack-exe                         Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @flag --no-stack-exe                      Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @option --package                         Add a package (can be specified multiple times).
# @option --rts-options <RTSFLAG>           Explicit RTS options to pass to application.
# @option --cwd <DIR>                       Sets the working directory before executing.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
ghc() {
    :;
}
# }} stack ghc

# {{ stack hoogle
# @cmd Run hoogle, the Haskell API search engine.
# @flag --setup                             Enable/disable If needed: install Hoogle, build Haddock documentation and generate a Hoogle database.
# @flag --no-setup                          Enable/disable If needed: install Hoogle, build Haddock documentation and generate a Hoogle database.
# @flag --rebuild                           Rebuild the Hoogle database.
# @flag --server                            Start local Hoogle server.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
hoogle() {
    :;
}
# }} stack hoogle

# {{ stack exec
# @cmd Execute a command.
# @flag --ghc-package-path                  Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --no-ghc-package-path               Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --stack-exe                         Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @flag --no-stack-exe                      Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @option --package                         Add a package (can be specified multiple times).
# @option --rts-options <RTSFLAG>           Explicit RTS options to pass to application.
# @option --cwd <DIR>                       Sets the working directory before executing.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
exec() {
    :;
}
# }} stack exec

# {{ stack run
# @cmd Build and run an executable.
# @flag --ghc-package-path                  Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --no-ghc-package-path               Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --stack-exe                         Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @flag --no-stack-exe                      Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @option --package                         Add a package (can be specified multiple times).
# @option --rts-options <RTSFLAG>           Explicit RTS options to pass to application.
# @option --cwd <DIR>                       Sets the working directory before executing.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
run() {
    :;
}
# }} stack run

# {{ stack ghci
# @cmd Run ghci in the context of package(s).
# @alias repl
# @flag --pedantic                          Turn on -Wall and -Werror.
# @option --ghci-options <OPTIONS>          Additional options passed to GHCi (can be specified multiple times).
# @option --ghc-options <OPTIONS>           Additional options passed to both GHC and GHCi (can be specified multiple times).
# @option --flag <PACKAGE:[-]FLAG>          Override flags set in stack.yaml (applies to local packages and extra-deps).
# @option --with-ghc <GHC>                  Use this GHC to run GHCi.
# @flag --load                              Enable/disable load modules on start-up.
# @flag --no-load                           Enable/disable load modules on start-up.
# @option --package                         Add a package (can be specified multiple times)
# @option --main-is <TARGET>                Specify which target should contain the main module to load, such as for an executable for test suite or benchmark.
# @flag --load-local-deps                   Load all local dependencies of your targets.
# @flag --package-hiding                    Enable/disable package hiding
# @flag --no-package-hiding                 Enable/disable package hiding
# @flag --only-main                         Only load and import the main module.
# @flag --trace                             Enable profiling in libraries, executables, etc.
# @flag --profile                           Enable profiling in libraries, executables, etc.
# @flag --no-strip                          Disable DWARF debugging symbol stripping in libraries, executables, etc.
# @flag --test                              Enable/disable testing the package(s) in this directory/configuration.
# @flag --no-test                           Enable/disable testing the package(s) in this directory/configuration.
# @flag --bench                             Enable/disable benchmarking the package(s) in this directory/configuration.
# @flag --no-bench                          Enable/disable benchmarking the package(s) in this directory/configuration.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg target-file[`_choice_target_or_file`] <TARGET/FILE>
ghci() {
    :;
}
# }} stack ghci

# {{ stack runghc
# @cmd Run runghc.
# @alias runhaskell
# @flag --ghc-package-path                  Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --no-ghc-package-path               Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --stack-exe                         Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @flag --no-stack-exe                      Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @option --package                         Add a package (can be specified multiple times).
# @option --rts-options <RTSFLAG>           Explicit RTS options to pass to application.
# @option --cwd <DIR>                       Sets the working directory before executing.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
runghc() {
    :;
}
# }} stack runghc

# {{ stack script
# @cmd Run a Stack script.
# @option --package                         Add a package (can be specified multiple times).
# @flag --compile                           Compile the script without optimization and run the executable.
# @flag --optimize                          Compile the script with optimization and run the executable.
# @flag --use-root                          Enable/disable writing of all compilation outputs to a script-specific location in the scripts directory of the Stack root.
# @flag --no-use-root                       Enable/disable writing of all compilation outputs to a script-specific location in the scripts directory of the Stack root.
# @option --ghc-options <OPTIONS>           Additional options passed to GHC (can be specified multiple times).
# @option --extra-dep <PACKAGE-VERSION>     Extra dependencies to be added to the snapshot.
# @flag --no-run                            Do not run, just compile.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg file
script() {
    :;
}
# }} stack script

# {{ stack eval
# @cmd Evaluate some Haskell code inline.
# @flag --ghc-package-path                  Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --no-ghc-package-path               Enable/disable setting the GHC_PACKAGE_PATH variable for the subprocess.
# @flag --stack-exe                         Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @flag --no-stack-exe                      Enable/disable setting the STACK_EXE environment variable to the path for the stack executable.
# @option --package                         Add a package (can be specified multiple times).
# @option --rts-options <RTSFLAG>           Explicit RTS options to pass to application.
# @option --cwd <DIR>                       Sets the working directory before executing.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg code
eval_() {
    :;
}
# }} stack eval

# {{ stack clean
# @cmd Delete build artefacts for the project packages.
# @flag --full                              Delete the project's Stack working directories (.stack-work by default).
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg package
clean() {
    :;
}
# }} stack clean

# {{ stack purge
# @cmd Delete the project Stack working directories (.stack-work by default).
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
purge() {
    :;
}
# }} stack purge

# {{ stack query
# @cmd Query general build information (experimental).
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg selector*
query() {
    :;
}
# }} stack query

# {{ stack list
# @cmd List package id's in snapshot (experimental).
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg package[`_choice_dependency`]
list() {
    :;
}
# }} stack list

# {{ stack ide
# @cmd IDE-specific commands.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
ide() {
    :;
}

# {{{ stack ide packages
# @cmd List all available local loadable packages.
# @flag --stdout                            Send output to the standard output stream instead of the default, the standard error stream.
# @flag --cabal-files                       Print paths to package Cabal files instead of package names.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
ide::packages() {
    :;
}
# }}} stack ide packages

# {{{ stack ide targets
# @cmd List all targets or pick component types to list.
# @flag --exes                              Include executables.
# @flag --tests                             Include test suites.
# @flag --benchmarks                        Include benchmarks.
# @flag --stdout                            Send output to the standard output stream instead of the default, the standard error stream.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
ide::targets() {
    :;
}
# }}} stack ide targets
# }} stack ide

# {{ stack docker
# @cmd Subcommands specific to Docker use.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
docker() {
    :;
}

# {{{ stack docker pull
# @cmd Pull latest version of Docker image from registry.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
docker::pull() {
    :;
}
# }}} stack docker pull

# {{{ stack docker reset
# @cmd Reset the Docker sandbox.
# @flag --keep-home                         Do not delete sandbox's home directory.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
docker::reset() {
    :;
}
# }}} stack docker reset
# }} stack docker

# {{ stack config
# @cmd Subcommands for accessing and modifying configuration values.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
config() {
    :;
}

# {{{ stack config set
# @cmd Sets a key in YAML configuration file to value.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
config::set() {
    :;
}

# {{{{ stack config set resolver
# @cmd Change the resolver of the current project.
# @flag -h --help    Show this help text
# @arg snapshot
config::set::resolver() {
    :;
}
# }}}} stack config set resolver

# {{{{ stack config set system-ghc
# @cmd Configure whether Stack should use a system GHC installation or not.
# @flag --global     Modify the user-specific global configuration file ('config.yaml') instead of the project-level configuration file ('stack.yaml').
# @flag -h --help    Show this help text
# @arg bool[true|false]
config::set::system-ghc() {
    :;
}
# }}}} stack config set system-ghc

# {{{{ stack config set install-ghc
# @cmd Configure whether Stack should automatically install GHC when necessary.
# @flag --global     Modify the user-specific global configuration file ('config.yaml') instead of the project-level configuration file ('stack.yaml').
# @flag -h --help    Show this help text
# @arg bool[true|false]
config::set::install-ghc() {
    :;
}
# }}}} stack config set install-ghc

# {{{{ stack config set package-index
# @cmd Configure Stack's package index
# @flag -h --help    Show this help text
config::set::package-index() {
    :;
}

# {{{{{ stack config set package-index download-prefix
# @cmd Configure download prefix for Stack's package index.
# @flag --global     Modify the user-specific global configuration file ('config.yaml') instead of the project-level configuration file ('stack.yaml').
# @flag -h --help    Show this help text
# @arg url
config::set::package-index::download-prefix() {
    :;
}
# }}}}} stack config set package-index download-prefix
# }}}} stack config set package-index
# }}} stack config set

# {{{ stack config env
# @cmd Print environment variables for use in a shell.
# @flag --locals                            Enable/disable include local package information (default: enabled)
# @flag --no-locals                         Enable/disable include local package information (default: enabled)
# @flag --ghc-package-path                  Enable/disable set GHC_PACKAGE_PATH environment variable (default: enabled)
# @flag --no-ghc-package-path               Enable/disable set GHC_PACKAGE_PATH environment variable (default: enabled)
# @flag --stack-exe                         Enable/disable set STACK_EXE environment variable (default: enabled)
# @flag --no-stack-exe                      Enable/disable set STACK_EXE environment variable (default: enabled)
# @flag --locale-utf8                       Enable/disable set the GHC_CHARENC environment variable to UTF-8 (default: disabled)
# @flag --no-locale-utf8                    Enable/disable set the GHC_CHARENC environment variable to UTF-8 (default: disabled)
# @flag --keep-ghc-rts                      Enable/disable keep any GHCRTS environment variable (default: disabled)
# @flag --no-keep-ghc-rts                   Enable/disable keep any GHCRTS environment variable (default: disabled)
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
config::env() {
    :;
}
# }}} stack config env
# }} stack config

# {{ stack hpc
# @cmd Subcommands specific to Haskell Program Coverage.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
hpc() {
    :;
}

# {{{ stack hpc report
# @cmd Generate unified HPC coverage report from tix files and project targets.
# @flag --all                               Use results from all packages and components involved in previous --coverage run.
# @option --destdir <DIR>                   Output directory for HTML report.
# @flag --open                              Open the report in the browser.
# @option --setup-info-yaml <URL>           Alternate URL or path (relative or absolute) for Stack dependencies.
# @option --snapshot-location-base <URL>    The base location of LTS/Nightly snapshots.
# @flag -h --help                           Show this help text
# @arg target_or_tix
hpc::report() {
    :;
}
# }}} stack hpc report
# }} stack hpc

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_target() {
    stack ide targets
}

_choice_dependency() {
    stack ls dependencies | gawk '{print $1}'
}

_choice_target_or_file() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_target
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"