#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                 Prints help information
# @flag -V --version                              Prints version information
# @flag -v --verbose*                             Increases the logging verbosity
# @flag -i --init                                 Writes the default configuration file to cliff.toml
# @flag -l --latest                               Processes the commits starting from the latest tag
# @flag --current                                 Processes the commits that belong to the current tag
# @flag -u --unreleased                           Processes the commits that do not belong to a tag
# @flag --topo-order                              Sorts the tags topologically
# @flag --context                                 Prints changelog context as JSON
# @option -c --config <PATH>                      Sets the configuration file [env: GIT_CLIFF_CONFIG=] [default: cliff.toml]
# @option -w --workdir <PATH>                     Sets the working directory [env: GIT_CLIFF_WORKDIR=]
# @option -r --repository* <PATH>                 Sets the git repository [env: GIT_CLIFF_REPOSITORY=]
# @option --include-path* <PATTERN>               Sets the path to include related commits [env: GIT_CLIFF_INCLUDE_PATH=]
# @option --exclude-path* <PATTERN>               Sets the path to exclude related commits [env: GIT_CLIFF_EXCLUDE_PATH=]
# @option --with-commit* <MSG>                    Sets custom commit messages to include in the changelog [env: GIT_CLIFF_WITH_COMMIT=]
# @option -p --prepend <PATH>                     Prepends entries to the given changelog file [env: GIT_CLIFF_PREPEND=]
# @option -o --output <PATH>                      Writes output to the given file [env: GIT_CLIFF_OUTPUT=]
# @option -t --tag                                Sets the tag for the latest version [env: GIT_CLIFF_TAG=]
# @option -b --body <TEMPLATE>                    Sets the template for the changelog body [env: GIT_CLIFF_TEMPLATE=]
# @option -s --strip[header|footer|all] <PART>    Strips the given parts from the changelog
# @option --sort[oldest|newest]                   Sets sorting of the commits inside sections [default: oldest]
# @arg range                                      Sets the commit range to process

command eval "$(argc --argc-eval "$0" "$@")"