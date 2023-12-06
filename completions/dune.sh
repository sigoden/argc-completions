#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.

# {{ dune build
# @cmd Build the given targets, or the default ones if none are given.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
build() {
    :;
}
# }} dune build

# {{ dune cache
# @cmd COMMAND … Manage Dune's shared cache of build artifacts.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
cache() {
    :;
}

# {{{ dune cache size
# @cmd Query the size of the Dune cache.
cache::size() {
    :;
}
# }}} dune cache size

# {{{ dune cache trim
# @cmd Trim the Dune cache.
cache::trim() {
    :;
}
# }}} dune cache trim
# }} dune cache

# {{ dune clean
# @cmd Clean the project.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
clean() {
    :;
}
# }} dune clean

# {{ dune coq
# @cmd COMMAND … Command group related to Coq.
coq() {
    :;
}
# }} dune coq

# {{ dune describe
# @cmd Describe the workspace.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @option --context                               Build context to use.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @option --format                                FORMAT must be either sexp or csexp
# @option --lang <VERSION>                        Behave the same as this version of Dune.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --sanitize-for-tests                      Sanitize the absolute paths in workspace items, and the associated UIDs, so that the output is reproducible.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --with-deps                               Whether the dependencies between modules should be printed.
# @flag --with-pps                                Whether the dependencies towards ppx-rewriters (that are called at compile time) should be taken into account.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
# @arg dirs*                                      prints a description of the workspace's structure.
describe() {
    :;
}

# {{{ dune describe aliases
# @cmd Print aliases in a given directory.
describe::aliases() {
    :;
}
# }}} dune describe aliases

# {{{ dune describe env
# @cmd Print the environment of a directory
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --field                                 Only print this field.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
describe::env() {
    :;
}
# }}} dune describe env

# {{{ dune describe external-lib-deps
# @cmd Print out external libraries needed to build the project.
describe::external-lib-deps() {
    :;
}
# }}} dune describe external-lib-deps

# {{{ dune describe installed-libraries
# @cmd Print out libraries installed on the system.
describe::installed-libraries() {
    :;
}
# }}} dune describe installed-libraries

# {{{ dune describe opam-files
# @cmd Print information about the opam files that have been discovered.
describe::opam-files() {
    :;
}
# }}} dune describe opam-files

# {{{ dune describe package-entries
# @cmd prints information about the entries per package
describe::package-entries() {
    :;
}
# }}} dune describe package-entries

# {{{ dune describe pkg
# @cmd COMMAND … Subcommands related to package management
describe::pkg() {
    :;
}
# }}} dune describe pkg

# {{{ dune describe pp
# @cmd Build a given FILE and print the preprocessed output.
describe::pp() {
    :;
}
# }}} dune describe pp

# {{{ dune describe rules
# @cmd Dump rules.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag -m --makefile                             Output the rules in Makefile syntax.
# @option -o <FILE>                               Output to a file instead of stdout.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag -r --recursive                            Print all rules needed to build the transitive dependencies of the given targets.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
describe::rules() {
    :;
}
# }}} dune describe rules

# {{{ dune describe targets
# @cmd Print targets in a given directory.
describe::targets() {
    :;
}
# }}} dune describe targets

# {{{ dune describe workspace
# @cmd Print a description of the workspace's structure.
describe::workspace() {
    :;
}
# }}} dune describe workspace
# }} dune describe

# {{ dune diagnostics
# @cmd Fetch and return errors from the current build.
diagnostics() {
    :;
}
# }} dune diagnostics

# {{ dune exec
# @cmd Execute a command in a similar environment as if installation was performed.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @option --context                               Run the command in this build context.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --no-build                                don't rebuild target before executing
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
exec() {
    :;
}
# }} dune exec

# {{ dune external-lib-deps
# @cmd Moved to dune describe external-lib-deps.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --missing                                 unused
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --sexp                                    unused
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag --unstable-by-dir                         unused
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
external-lib-deps() {
    :;
}
# }} dune external-lib-deps

# {{ dune fmt
# @cmd Format source code.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --preview                                 Just print the changes that would be made without actually applying them.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
fmt() {
    :;
}
# }} dune fmt

# {{ dune format-dune-file
# @cmd Format dune files.
# @option --dune-version <VERSION>                Which version of Dune language to use.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
# @arg file                                       Path to the dune file to parse.
format-dune-file() {
    :;
}
# }} dune format-dune-file

# {{ dune init
# @cmd COMMAND … Command group for initializing Dune components.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
init() {
    :;
}

# {{{ dune init executable
# @cmd A binary executable.
init::executable() {
    :;
}
# }}} dune init executable

# {{{ dune init library
# @cmd An OCaml library.
init::library() {
    :;
}
# }}} dune init library

# {{{ dune init project
# @cmd A project is a predefined composition of components arranged in a standard directory structure.
init::project() {
    :;
}
# }}} dune init project

# {{{ dune init test
# @cmd A test harness.
init::test() {
    :;
}
# }}} dune init test
# }} dune init

# {{ dune install
# @cmd Install packages defined in the workspace.
install() {
    :;
}
# }} dune install

# {{ dune installed-libraries
# @cmd Print out libraries installed on the system.
installed-libraries() {
    :;
}
# }} dune installed-libraries

# {{ dune internal
# @cmd COMMAND …
internal() {
    :;
}

# {{{ dune internal dune-internal
# @cmd
internal::dune-internal() {
    :;
}
# }}} dune internal dune-internal
# }} dune internal

# {{ dune monitor
# @cmd Connect to a Dune RPC server and monitor it.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --quit-on-disconnect                      Quit if the connection to the server is lost.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
monitor() {
    :;
}
# }} dune monitor

# {{ dune ocaml
# @cmd COMMAND … Command group related to OCaml.
ocaml() {
    :;
}
# }} dune ocaml

# {{ dune ocaml-merlin
# @cmd Start a merlin configuration server.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
ocaml-merlin() {
    :;
}
# }} dune ocaml-merlin

# {{ dune pkg
# @cmd COMMAND … Experimental package management
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
pkg() {
    :;
}

# {{{ dune pkg lock
# @cmd Create a lockfile
pkg::lock() {
    :;
}
# }}} dune pkg lock

# {{{ dune pkg outdated
# @cmd Check for outdated packages
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --all-contexts                            Check for outdated packages in all contexts
# @flag --build-info                              Show build information.
# @option --context                               Check for outdated packages in this context
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @option --opam-repository-path <PATH>           Path to a local opam repository.
# @option --opam-repository-url <URL>             URL of opam repository to download.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag --transitive                              Check for outdated packages in transitive dependencies
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
pkg::outdated() {
    :;
}
# }}} dune pkg outdated

# {{{ dune pkg print-solver-env
# @cmd Print a description of the environment that would be used to solve dependencies and then exit without attempting to solve the dependencies or generate the lockfile.
pkg::print-solver-env() {
    :;
}
# }}} dune pkg print-solver-env

# {{{ dune pkg validate-lockdir
# @cmd Validate that a lockdir contains a solution for local packages
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --all-contexts                            Validate all lockdirs
# @flag --build-info                              Show build information.
# @option --context                               Validate the lockdir associated with this context
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
pkg::validate-lockdir() {
    :;
}
# }}} dune pkg validate-lockdir
# }} dune pkg

# {{ dune promotion
# @cmd COMMAND … Control how changes are propagated back to source code.
promotion() {
    :;
}
# }} dune promotion

# {{ dune rpc
# @cmd COMMAND … Dune's RPC mechanism.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
rpc() {
    :;
}

# {{{ dune rpc build
# @cmd build a given target (requires dune to be running in passive watching mode)
rpc::build() {
    :;
}
# }}} dune rpc build

# {{{ dune rpc ping
# @cmd Ping the build server running in the current directory
rpc::ping() {
    :;
}
# }}} dune rpc ping

# {{{ dune rpc status
# @cmd show active connections
rpc::status() {
    :;
}
# }}} dune rpc status
# }} dune rpc

# {{ dune rules
# @cmd Dump rules.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag -m --makefile                             Output the rules in Makefile syntax.
# @option -o <FILE>                               Output to a file instead of stdout.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag -r --recursive                            Print all rules needed to build the transitive dependencies of the given targets.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
rules() {
    :;
}
# }} dune rules

# {{ dune runtest
# @cmd Run tests.
# @alias test
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
runtest() {
    :;
}
# }} dune runtest

# {{ dune show
# @cmd COMMAND … Command group for showing information about the workspace
show() {
    :;
}
# }} dune show

# {{ dune shutdown
# @cmd Cancel and shutdown any builds in the current workspace.
shutdown() {
    :;
}
# }} dune shutdown

# {{ dune subst
# @cmd Substitute watermarks in source files.
# @flag --build-info                              Show build information.
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
subst() {
    :;
}
# }} dune subst

# {{ dune top
# @cmd Print a list of toplevel directives for including directories and loading cma files.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @option --context                               Select context where to build/run utop.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
top() {
    :;
}
# }} dune top

# {{ dune uninstall
# @cmd Uninstall packages defined in the workspace.
uninstall() {
    :;
}
# }} dune uninstall

# {{ dune upgrade
# @cmd Upgrade projects across major Dune versions.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
upgrade() {
    :;
}
# }} dune upgrade

# {{ dune utop
# @cmd Load library in utop.
# @option --action-stderr-on-success <VAL>        Same as --action-stdout-on-success but for standard error instead of standard output.
# @option --action-stdout-on-success <VAL>        Specify how to deal with the standard output of actions when they succeed.
# @flag --build-info                              Show build information.
# @option --context                               Select context where to build/run utop.
# @flag --display-separate-messages               Separate error messages with a blank line.
# @option --error-reporting <VAL>                 Controls when the build errors are reported.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --file-watcher <VAL>                    Mechanism to detect changes in the source.
# @flag --passive-watch-mode                      Similar to [--watch], but only start a build when instructed externally by an RPC.
# @flag --react-to-insignificant-changes          React to insignificant file system changes; this is only useful for benchmarking dune.
# @option --sandbox[none|symlink|copy|hardlink] <VAL>  Set sandboxing mode.
# @flag --stop-on-first-error                     Stop the build as soon as an error is encountered.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --wait-for-filesystem-clock               Dune digest file contents for better incrementally.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune.
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Enable or disable Dune cache (either enabled or disabled).
# @option --cache-check-probability <VAL>
# @option --cache-storage-mode <VAL>              Dune cache storage mode (one of auto, hardlink or copy).
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @option --debug-cache <VAL>                     Show debug messages on cache misses for the given cache layers.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-digests                           Explain why Dune decides to re-digest some files
# @flag --debug-load-dir                          Print debugging info about directory loading
# @flag --debug-store-digest-preimage             Store digest preimage for all computed digests, so that it's possible to reverse them later, for debugging.
# @option --default-target <TARGET>               Set the default target that is used when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @option --dump-gc-stats <FILE>                  Dump the garbage collector stats to a file after the build is complete.
# @option --dump-memo-graph <FILE>                Dump the dependency graph to a file after the build is complete.
# @option --dump-memo-graph-format <FORMAT>       Set the file format used by --dump-memo-graph
# @flag --dump-memo-graph-with-timing             Re-run each cached node in the Memo graph after building and include the run duration in the output of --dump-memo-graph.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --ignore-lock-directory                   Ignore dune.lock/ directory.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages.
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @flag --print-metrics                           Print out various performance metrics after every build.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote any generated <package>.install files to the source tree.
# @flag --release                                 Put dune into a reproducible release mode.
# @option --require-dune-project-file <VAL>       Fail if a dune-project file is missing.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata.
# @option --terminal-persistence[preserve|clear-on-rebuild|clear-on-rebuild-and-flush-history] <MODE>  Change how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @flag --trace-extended                          Output extended trace data (requires trace-file).
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing).
# @flag --verbose                                 Same as --display verbose
# @flag --version                                 Show version information.
# @option --watch-exclusions <REGEX>              Adds a POSIX regular expression that will exclude matching directories from `dune build --watch`.
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
utop() {
    :;
}
# }} dune utop

command eval "$(argc --argc-eval "$0" "$@")"