#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.

# {{ dune build
# @cmd Build the given targets, or all installable targets if none are given.
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
build() {
    :;
}
# }} dune build

# {{ dune cache
# @cmd Manage the shared artifacts cache
# @flag --exit-no-client                          Whether to exit once all clients have disconnected
# @flag -f --foreground                           Whether to start in the foreground or as a daemon
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --port-file <PATH>                      The file to read/write the daemon port from/to.
# @option --root <PATH>                           Root of the dune cache
# @option --size <BYTES>                          size to trim the cache to
# @option --trimmed-size <BYTES>                  size to trim from the cache
# @flag --version                                 Show version information.
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --no-config                               Do not load the configuration file
# @flag --verbose                                 Same as --display verbose
# @arg action                                     The cache-daemon action to perform (one of `start', `stop' or `trim')
cache() {
    :;
}

# {{{ dune cache start
# @cmd starts the daemon if not already running.
cache::start() {
    :;
}
# }}} dune cache start

# {{{ dune cache stop
# @cmd stops the daemon.
cache::stop() {
    :;
}
# }}} dune cache stop

# {{{ dune cache trim
# @cmd removes oldest files from the cache to free space.
cache::trim() {
    :;
}
# }}} dune cache trim
# }} dune cache

# {{ dune clean
# @cmd Clean the project.
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
clean() {
    :;
}
# }} dune clean

# {{ dune compute
# @cmd Compute internal function.
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
# @arg function                                   Compute FUNCTION for a given input.
# @arg input                                      Use INPUT as the input to the function.
compute() {
    :;
}
# }} dune compute

# {{ dune describe
# @cmd Describe the workspace.
# @flag --build-info                              Show build information.
# @option --context                               Build context to use.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --format                                Output format.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --lang <VERSION>                        Behave the same as this version of Dune.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
# @arg string                                     What to describe.
describe() {
    :;
}
# }} dune describe

# {{ dune exec
# @cmd Execute a command in a similar environment as if installation was performed.
# @flag --build-info                              Show build information.
# @option --context                               Run the command in this build context.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --no-build                                don't rebuild target before executing
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
exec() {
    :;
}
# }} dune exec

# {{ dune external-lib-deps
# @cmd Print out external libraries needed to build the given targets.
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --missing                                 Only print out missing dependencies
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --sexp                                    Produce a s-expression output
# @flag --unstable-by-dir                         Print dependencies per directory (this feature is currently unstable)
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
external-lib-deps() {
    :;
}
# }} dune external-lib-deps

# {{ dune format-dune-file
# @cmd Format dune files
# @option --dune-version <VERSION>                Which version of Dune language to use.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
# @arg file                                       Path to the dune file to parse.
format-dune-file() {
    :;
}
# }} dune format-dune-file

# {{ dune init
# @cmd Initialize dune components
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --inline-tests                            Whether to use inline tests.
# @option --kind[library|executable] <PROJECT_KIND>  The kind of project to initialize.
# @option --libs <LIBRARIES>                      A comma separated list of libraries on which the component depends
# @option --pkg <PACKAGE_MANAGER>                 Which package manager to use.
# @option --ppx <PREPROCESSORS>                   A comma separated list of ppx preprocessors used by the component
# @option --public <PUBLIC_NAME>                  If called with an argument, make the component public under the given PUBLIC_NAME.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
init() {
    :;
}
# }} dune init

# {{ dune install
# @cmd Install packages.
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

# {{ dune ocaml-merlin
# @cmd Start a merlin configuration server
# @flag --build-info                              Show build information.
# @option --dump-config <VAL>                     Prints the entire content of the merlin configuration for the given folder in a user friendly form.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
ocaml-merlin() {
    :;
}
# }} dune ocaml-merlin

# {{ dune printenv
# @cmd Print the environment of a directory
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --field                                 Only print this field.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
printenv() {
    :;
}
# }} dune printenv

# {{ dune promote
# @cmd Promote files from the last run
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
promote() {
    :;
}
# }} dune promote

# {{ dune rules
# @cmd Dump internal rules.
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag -m --makefile                             Output the rules in Makefile syntax.
# @option -o <FILE>                               Output to a file instead of stdout.
# @flag -r --recursive                            Print all rules needed to build the transitive dependencies of the given targets.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
rules() {
    :;
}
# }} dune rules

# {{ dune runtest
# @cmd Run tests.
# @alias test
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
runtest() {
    :;
}
# }} dune runtest

# {{ dune subst
# @cmd Substitute watermarks in source files.
# @flag --build-info                              Show build information.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @flag --version                                 Show version information.
# @flag --debug-backtraces                        Always print exception backtraces.
subst() {
    :;
}
# }} dune subst

# {{ dune top
# @cmd Print a list of toplevel directives for including directories and loading cma files.
# @flag --build-info                              Show build information.
# @option --context                               Select context where to build/run utop.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
top() {
    :;
}
# }} dune top

# {{ dune uninstall
# @cmd Uninstall packages.
uninstall() {
    :;
}
# }} dune uninstall

# {{ dune upgrade
# @cmd Upgrade jbuilder projects to dune
# @flag --build-info                              Show build information.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
upgrade() {
    :;
}
# }} dune upgrade

# {{ dune utop
# @cmd Load library in utop
# @flag --build-info                              Show build information.
# @option --context                               Select context where to build/run utop.
# @flag -f --force                                Force actions associated to aliases to be re-executed even if their dependencies haven't changed.
# @option --help[auto|pager|groff|plain] <FMT>    Show this help in format FMT.
# @option --sandbox[none|symlink|copy] <VAL>      Sandboxing mode to use by default.
# @flag --version                                 Show version information.
# @flag -w --watch                                Instead of terminating build after completion, wait continuously for file changes.
# @flag --always-show-command-line                Always show the full command lines of programs executed by dune
# @flag --auto-promote                            Automatically promote files.
# @option --build-dir <FILE>                      Specified build directory.
# @option --cache <VAL>                           Activate binary cache (either `disabled' or `enabled').
# @option --cache-check-probability <VAL>         Probability cached rules are rerun to check for reproducibility
# @option --cache-duplication <VAL>               Binary cache duplication mode
# @option --cache-transport <VAL>                 Binary cache protocol
# @option --config-file <FILE>                    Load this configuration file instead of the default one.
# @flag --debug-artifact-substitution             Print debugging info about artifact substitution
# @flag --debug-backtraces                        Always print exception backtraces.
# @flag --debug-dependency-path                   In case of error, print the dependency path from the targets on the command line to the rule that failed.
# @flag --debug-findlib                           Debug the findlib sub-system.
# @option --default-target <TARGET>               Set the default target that when none is specified to dune build.
# @option --diff-command <VAL>                    Shell command to use to diff files.
# @flag --disable-promotion                       Disable all promotion rules
# @option --display <MODE>                        Control the display mode of Dune.
# @flag --ignore-promoted-rules                   Ignore rules with (mode promote), except ones with (only ...).
# @option --instrument-with <BACKENDS>            "Enable instrumentation by BACKENDS.
# @option -j <JOBS>                               Run no more than JOBS commands simultaneously.
# @flag --no-buffer                               Do not buffer the output of commands executed by dune.
# @flag --no-config                               Do not load the configuration file
# @flag --no-print-directory                      Suppress "Entering directory" messages
# @option --only-packages <PACKAGES>              Ignore stanzas referring to a package that is not in PACKAGES.
# @option -p --for-release-of-packages <PACKAGES>  Shorthand for --release --only-packages PACKAGE.
# @option --profile <VAL>                         Select the build profile, for instance dev or release.
# @option --promote-install-files <VAL>           Promote the generated <package>.install files to the source tree
# @flag --release                                 Put dune into a reproducible release mode.
# @option --root <DIR>                            Use this directory as workspace root instead of guessing it.
# @flag --store-orig-source-dir                   Store original source location in dune-package metadata
# @option --terminal-persistence[preserve|clear-on-rebuild] <MODE>  Changes how the log of build results are displayed to the console between rebuilds while in --watch mode.
# @option --trace-file <FILE>                     Output trace data in catapult format (compatible with chrome://tracing)
# @flag --verbose                                 Same as --display verbose
# @option --workspace <FILE>                      Use this specific workspace file instead of looking it up.
# @option -x <VAL>                                Cross-compile using this toolchain.
utop() {
    :;
}
# }} dune utop

command eval "$(argc --argc-eval "$0" "$@")"