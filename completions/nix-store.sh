#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ nix-store --realise
# @cmd realise specified store paths
# @flag --dry-run                    Print on standard error a description of what packages would be built or downloaded, without actually performing the operation.
# @flag --ignore-unknown             If a non-derivation path does not have a substitute, then silently ignore it.
# @flag --check                      This option allows you to check whether a derivation is deterministic.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--realise() {
    :;
}
# }} nix-store --realise

# {{ nix-store --serve
# @cmd serve local Nix store over SSH
# @flag --write                      Allow the connected client to request the realization of derivations.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--serve() {
    :;
}
# }} nix-store --serve

# {{ nix-store --gc
# @cmd run garbage collection
# @flag --print-roots                This operation prints on standard output the set of roots used by the garbage collector.
# @flag --print-live                 This operation prints on standard output the set of “live” store paths, which are all the store paths reachable from the roots.
# @flag --print-dead                 This operation prints out on standard output the set of “dead” store paths, which is just the opposite of the set of live paths: any path in the store that is not live (with respect to the roots) is dead.
# @option --max-freed <bytes>        Keep deleting paths until at least bytes bytes have been deleted, then stop.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--gc() {
    :;
}
# }} nix-store --gc

# {{ nix-store --delete
# @cmd delete store paths
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--delete() {
    :;
}
# }} nix-store --delete

# {{ nix-store --query
# @cmd display information about store paths
# @option -u --use-output <;>        For each argument to the query that is a store derivation, apply the query to the output path of the derivation instead.
# @option -f --force-realise <;>     Realise each argument to the query first (see nix-store --realise).
# @flag --outputs                    Prints out the [output paths] of the store derivations paths.
# @option -R --requisites <;>        Prints out the [closure] of the store path paths.
# @flag --references                 Prints the set of [references] of the store paths paths, that is, their immediate dependencies.
# @flag --referrers                  Prints the set of referrers of the store paths paths, that is, the store paths currently existing in the Nix store that refer to one of paths.
# @flag --referrers-closure          Prints the closure of the set of store paths paths under the referrers relation; that is, all store paths that directly or indirectly refer to one of paths.
# @option -d --deriver <;>           Prints the [deriver] that was used to build the store paths paths.
# @flag --valid-derivers             Prints a set of derivation files (.drv) which are supposed produce said paths when realized.
# @flag --graph                      Prints the references graph of the store paths paths in the format of the dot tool of AT&T’s Graphviz package.
# @flag --tree                       Prints the references graph of the store paths paths as a nested ASCII tree.
# @flag --graphml                    Prints the references graph of the store paths paths in the GraphML file format.
# @option -b --binding <name>        Prints the value of the attribute name (i.e., environment variable) of the store derivations paths.
# @flag --hash                       Prints the SHA-256 hash of the contents of the store paths paths (that is, the hash of the output of nix-store --dump on the given paths).
# @flag --size                       Prints the size in bytes of the contents of the store paths paths — to be precise, the size of the output of nix-store --dump on the given paths.
# @flag --roots                      Prints the garbage collector roots that point, directly or indirectly, at the store paths paths.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--query() {
    :;
}
# }} nix-store --query

# {{ nix-store --add
# @cmd add paths to Nix store
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--add() {
    :;
}
# }} nix-store --add

# {{ nix-store --add-fixed
# @cmd add paths to store using given hashing algorithm
# @flag --recursive                  Use recursive instead of flat hashing mode, used when adding directories to the store.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg algorithm
# @arg paths*
--add-fixed() {
    :;
}
# }} nix-store --add-fixed

# {{ nix-store --verify
# @cmd check Nix database for consistency
# @flag --check-contents             Checks that the contents of every valid store path has not been altered by computing a SHA-256 hash of the contents and comparing it with the hash stored in the Nix database at build time.
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--verify() {
    :;
}
# }} nix-store --verify

# {{ nix-store --verify-path
# @cmd check path contents against Nix database
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--verify-path() {
    :;
}
# }} nix-store --verify-path

# {{ nix-store --dump
# @cmd write a single path to a Nix Archive
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg path
--dump() {
    :;
}
# }} nix-store --dump

# {{ nix-store --restore
# @cmd extract a Nix archive
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg path
--restore() {
    :;
}
# }} nix-store --restore

# {{ nix-store --export
# @cmd export store paths to a Nix Archive
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--export() {
    :;
}
# }} nix-store --export

# {{ nix-store --import
# @cmd import Nix Archive into the store
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--import() {
    :;
}
# }} nix-store --import

# {{ nix-store --optimise
# @cmd reduce disk space usage
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--optimise() {
    :;
}
# }} nix-store --optimise

# {{ nix-store --read-log
# @cmd print build log
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--read-log() {
    :;
}
# }} nix-store --read-log

# {{ nix-store --dump-db
# @cmd export Nix database
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg paths*
--dump-db() {
    :;
}
# }} nix-store --dump-db

# {{ nix-store --load-db
# @cmd import Nix database
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
--load-db() {
    :;
}
# }} nix-store --load-db

# {{ nix-store --print-env
# @cmd print the build environment of a derivation
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg drvpath
--print-env() {
    :;
}
# }} nix-store --print-env

# {{ nix-store --generate-binary-cache-key
# @cmd generate key pair to use for a binary cache
# @option --add-root <path>          Causes the result of a realisation (--realise and --force-realise) to be registered as a root of the garbage collector.
# @flag --help                       Prints out a summary of the command syntax and exits.
# @flag --version                    Prints out the Nix version number on standard output and exits.
# @flag -v --verbose                 Increases the level of verbosity of diagnostic messages printed on standard error.
# @flag --quiet                      Decreases the level of verbosity of diagnostic messages printed on standard error.
# @option --log-format <format>      This option can be used to change the output of the log format, with format being one of:
# @flag -Q --no-build-output         By default, output written by builders to standard output and standard error is echoed to the Nix command’s standard error.
# @option -j --max-jobs <number>     Sets the maximum number of build jobs that Nix will perform in parallel to the specified number.
# @flag --cores                      Sets the value of the NIX_BUILD_CORES environment variable in the invocation of builders.
# @flag --max-silent-time            Sets the maximum number of seconds that a builder can go without producing any data on standard output or standard error.
# @flag --timeout                    Sets the maximum number of seconds that a builder can run.
# @flag -k --keep-going              Keep going in case of failed builds, to the greatest extent possible.
# @flag -K --keep-failed             Specifies that in case of a build failure, the temporary directory (usually in /tmp) in which the build takes place should not be deleted.
# @flag --fallback                   Whenever Nix attempts to build a derivation for which substitutes are known for each output path, but realising the output paths through the substitutes fails, fall back on building the derivation.
# @flag --readonly-mode              When this option is used, no attempt is made to open the Nix database.
# @option --arg <name> <value>       This option is accepted by nix-env, nix-instantiate, nix-shell and nix-build.
# @option --argstr <name> <value>    This option is like --arg, only the value is not a Nix expression but a string.
# @option -A --attr <attrPath>       Select an attribute from the top-level Nix expression being evaluated.
# @flag -E --expr                    Interpret the command line arguments as a list of Nix expressions to be parsed and evaluated, rather than as a list of file names of Nix expressions.
# @option -I <path>                  Add an entry to the Nix expression search path.
# @option --option <name> <value>    Set the Nix configuration option name to value.
# @flag --repair                     Fix corrupted or missing store paths by redownloading or rebuilding them.
# @arg key-name
# @arg secret-key-file
# @arg public-key-file
--generate-binary-cache-key() {
    :;
}
# }} nix-store --generate-binary-cache-key

command eval "$(argc --argc-eval "$0" "$@")"