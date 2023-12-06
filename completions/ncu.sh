#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --cache                               Cache versions to a local cache file.
# @flag --cacheClear                          Clear the default cache, or the cache file specified by --cacheFile.
# @option --cacheExpiration <min>             Cache expiration in minutes.
# @option --cacheFile <path>                  Filepath for the cache file.
# @flag --color                               Force color in terminal.
# @option --concurrency <n>                   Max number of concurrent HTTP requests to registry.
# @option --configFileName <s>                Config file name.
# @option --configFilePath <path>             Directory of .ncurc config file.
# @option --cwd <path>                        Working directory in which npm will be executed.
# @flag --deep                                Run recursively in current working directory.
# @option --dep[prod|dev|optional] <value>    Check one or more sections of dependencies only: dev, optional, peer, prod, or packageManager (comma-delimited).
# @flag --deprecated                          Include deprecated packages.
# @flag -d --doctor                           Iteratively installs upgrades and runs tests to identify breaking upgrades.
# @option --doctorInstall <command>           Specifies the install script to use in doctor mode.
# @option --doctorTest <command>              Specifies the test script to use in doctor mode.
# @flag --enginesNode                         Include only packages that satisfy engines.node as specified in the package file.
# @option -e --errorLevel <n>                 Set the error level.
# @option -f --filter <p>                     Include only package names matching the given string, wildcard, glob, comma-or-space-delimited list, /regex/, or predicate function.
# @option --filterVersion <p>                 Filter on package version using comma-or-space-delimited list, /regex/, or predicate function.
# @option --format[group|ownerChanged|repo|time|lines] <value>  Modify the output formatting or show additional information.
# @flag -g --global                           Check global packages instead of in the current project.
# @option --install[always|never|prompt] <value>  Control the auto-install behavior: always, never, prompt.
# @flag -i --interactive                      Enable interactive prompts for each dependency; implies -u unless one of the json options are set.
# @flag -j --jsonAll                          Output new package file instead of human-readable message.
# @flag --jsonDeps                            Like jsonAll but only lists dependencies, devDependencies, optionalDependencies, etc of the new package data.
# @flag --jsonUpgraded                        Output upgraded dependencies in json.
# @option -l --loglevel[silent|error|minimal|warn|info|verbose|silly] <n>  Amount to log: silent, error, minimal, warn, info, verbose, silly.
# @flag --mergeConfig                         Merges nested configs with the root config file for --deep or --packageFile options.
# @flag -m --minimal                          Do not upgrade newer versions that are already satisfied by the version range according to semver.
# @option --packageData <value>               Package file data (you can also use stdin).
# @option --packageFile <path|glob>           Package file(s) location.
# @option -p --packageManager <s>             npm, yarn, pnpm, deno, bun, staticRegistry (default: npm).
# @flag --peer                                Check peer dependencies of installed packages and filter updates to compatible versions.
# @option --pre <n>                           Include prerelease versions, e.g. -alpha.0, -beta.5, -rc.2.
# @option --prefix <path>                     Current working directory of npm.
# @option -r --registry <uri>                 Specify the registry to use when looking up package versions.
# @option --registryType[npm|json] <type>     Specify whether --registry refers to a full npm registry or a simple JSON file or url: npm, json.
# @option -x --reject <p>                     Exclude packages matching the given string, wildcard, glob, comma-or-space-delimited list, /regex/, or predicate function.
# @option --rejectVersion <p>                 Exclude package.json versions using comma-or-space-delimited list, /regex/, or predicate function.
# @flag --removeRange                         Remove version ranges from the final package version.
# @option --retry <n>                         Number of times to retry failed requests for package info.
# @flag --root                                Runs updates on the root project in addition to specified workspaces.
# @flag -s --silent                           Don't output anything.
# @flag --stdin                               Read package.json from stdin.
# @option -t --target <value>                 Determines the version to upgrade to: latest, newest, greatest, minor, patch, semver, @[tag], or [function].
# @option --timeout <ms>                      Global timeout in milliseconds.
# @flag -u --upgrade                          Overwrite package file with upgraded versions instead of just outputting to console.
# @flag --verbose                             Log additional information for debugging.
# @option -w --workspace <s>                  Run on one or more specified workspaces.
# @flag -ws                                   Run on all workspaces.
# @flag --workspaces                          Run on all workspaces.
# @flag -v                                    Output the version number of npm-check-updates.
# @flag -V                                    Output the version number of npm-check-updates.
# @flag --version                             Output the version number of npm-check-updates.
# @flag -h --help                             You're lookin' at it.
# @arg filter

command eval "$(argc --argc-eval "$0" "$@")"