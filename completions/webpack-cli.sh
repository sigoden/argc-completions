#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config* <pathToConfigFile>    Provide path to one or more webpack configuration files to process, e.g. "./webpack.config.js".
# @option --config-name* <name>              Name(s) of particular configuration(s) to use if configuration file exports an array of multiple configurations.
# @flag -m --merge                           Merge two or more configurations using 'webpack-merge'.
# @flag --disable-interpret                  Disable interpret for loading the config file.
# @option --env* <value>                     Environment variables passed to the configuration when it is a function, e.g. "myvar" or "myvar=myval".
# @option --node-env <value>                 Sets process.env.NODE_ENV to the specified value.
# @flag --analyze                            It invokes webpack-bundle-analyzer plugin to get bundle information.
# @option --progress <value>                 Print compilation progress during build.
# @option -j --json <pathToJsonFile>         Prints result as JSON or store it in a file.
# @flag --fail-on-warnings                   Stop webpack-cli process with non-zero exit code on warnings from webpack.
# @option -e --extends* <value>              Path to the configuration to be extended (only works when using webpack-cli).
# @option -d --devtool[`_choice_devtool`] <value>  A developer tool to enhance debugging (false | eval |[nosources-][cheap-[module-]]source-map).
# @flag --no-devtool                         Negative 'devtool' option.
# @option --entry* <value>                   A module that is loaded upon startup.
# @option --mode <value>                     Enable production optimizations or development hints.
# @option --name <value>                     Name of the configuration.
# @option -o --output-path <value>           The output directory as **absolute path** (required).
# @option --stats <value>                    Stats options object or preset name.
# @flag --no-stats                           Negative 'stats' option.
# @option -t --target* <value>               Environment to build for.
# @flag --no-target                          Negative 'target' option.
# @flag -w --watch                           Enter watch mode, which rebuilds on file change.
# @flag --no-watch                           Negative 'watch' option.
# @flag --watch-options-stdin                Stop watching when stdin stream has ended.
# @flag --no-watch-options-stdin             Negative 'watch-options-stdin' option.
# @flag --color                              Enable colors on console.
# @flag --no-color                           Disable colors on console.
# @flag -v --version                         Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>                Display help for commands and options.
# @arg entries*

# {{ webpack-cli build
# @cmd Run webpack (default command, can be omitted).
# @alias bundle,b
# @option -c --config* <pathToConfigFile>    Provide path to one or more webpack configuration files to process, e.g. "./webpack.config.js".
# @option --config-name* <name>              Name(s) of particular configuration(s) to use if configuration file exports an array of multiple configurations.
# @flag -m --merge                           Merge two or more configurations using 'webpack-merge'.
# @flag --disable-interpret                  Disable interpret for loading the config file.
# @option --env* <value>                     Environment variables passed to the configuration when it is a function, e.g. "myvar" or "myvar=myval".
# @option --node-env <value>                 Sets process.env.NODE_ENV to the specified value.
# @flag --analyze                            It invokes webpack-bundle-analyzer plugin to get bundle information.
# @option --progress <value>                 Print compilation progress during build.
# @option -j --json <pathToJsonFile>         Prints result as JSON or store it in a file.
# @flag --fail-on-warnings                   Stop webpack-cli process with non-zero exit code on warnings from webpack.
# @option -e --extends* <value>              Path to the configuration to be extended (only works when using webpack-cli).
# @option -d --devtool[`_choice_devtool`] <value>  A developer tool to enhance debugging (false | eval |[nosources-][cheap-[module-]]source-map).
# @flag --no-devtool                         Negative 'devtool' option.
# @option --entry* <value>                   A module that is loaded upon startup.
# @option --mode <value>                     Enable production optimizations or development hints.
# @option --name <value>                     Name of the configuration.
# @option -o --output-path <value>           The output directory as **absolute path** (required).
# @option --stats <value>                    Stats options object or preset name.
# @flag --no-stats                           Negative 'stats' option.
# @option -t --target* <value>               Environment to build for.
# @flag --no-target                          Negative 'target' option.
# @flag -w --watch                           Enter watch mode, which rebuilds on file change.
# @flag --no-watch                           Negative 'watch' option.
# @flag --watch-options-stdin                Stop watching when stdin stream has ended.
# @flag --no-watch-options-stdin             Negative 'watch-options-stdin' option.
# @flag --color                              Enable colors on console.
# @flag --no-color                           Disable colors on console.
# @flag -v --version                         Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>                Display help for commands and options.
# @arg build-bundle <build|bundle>
# @arg paths*
build() {
    :;
}
# }} webpack-cli build

# {{ webpack-cli configtest
# @cmd Validate a webpack configuration.
# @alias t
# @flag --color                  Enable colors on console.
# @flag --no-color               Disable colors on console.
# @flag -v --version             Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>    Display help for commands and options.
# @arg config-path
configtest() {
    :;
}
# }} webpack-cli configtest

# {{ webpack-cli info
# @cmd Outputs information about your system.
# @alias i
# @option -o --output <value>                 To get the output in a specified format ( accept json or markdown )
# @option -a --additional-package* <value>    Adds additional packages to the output
# @flag --color                               Enable colors on console.
# @flag --no-color                            Disable colors on console.
# @flag -v --version                          Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>                 Display help for commands and options.
info() {
    :;
}
# }} webpack-cli info

# {{ webpack-cli serve
# @cmd Run the webpack dev server and watch for source file changes while serving.
# @alias server,s
# @flag --color                  Enable colors on console.
# @flag --no-color               Disable colors on console.
# @flag -v --version             Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>    Display help for commands and options.
# @arg serve-server <serve|server>
# @arg paths*
serve() {
    :;
}
# }} webpack-cli serve

# {{ webpack-cli version
# @cmd Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @alias v
# @option -o --output <value>                 To get the output in a specified format ( accept json or markdown )
# @option -a --additional-package* <value>    Adds additional packages to the output
# @flag --color                               Enable colors on console.
# @flag --no-color                            Disable colors on console.
# @flag -v --version                          Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>                 Display help for commands and options.
version() {
    :;
}
# }} webpack-cli version

# {{ webpack-cli watch
# @cmd Run webpack and watch for files changes.
# @alias w
# @option -c --config* <pathToConfigFile>    Provide path to one or more webpack configuration files to process, e.g. "./webpack.config.js".
# @option --config-name* <name>              Name(s) of particular configuration(s) to use if configuration file exports an array of multiple configurations.
# @flag -m --merge                           Merge two or more configurations using 'webpack-merge'.
# @flag --disable-interpret                  Disable interpret for loading the config file.
# @option --env* <value>                     Environment variables passed to the configuration when it is a function, e.g. "myvar" or "myvar=myval".
# @option --node-env <value>                 Sets process.env.NODE_ENV to the specified value.
# @flag --analyze                            It invokes webpack-bundle-analyzer plugin to get bundle information.
# @option --progress <value>                 Print compilation progress during build.
# @option -j --json <pathToJsonFile>         Prints result as JSON or store it in a file.
# @flag --fail-on-warnings                   Stop webpack-cli process with non-zero exit code on warnings from webpack.
# @option -e --extends* <value>              Path to the configuration to be extended (only works when using webpack-cli).
# @option -d --devtool[`_choice_devtool`] <value>  A developer tool to enhance debugging (false | eval |[nosources-][cheap-[module-]]source-map).
# @flag --no-devtool                         Negative 'devtool' option.
# @option --entry* <value>                   A module that is loaded upon startup.
# @option --mode <value>                     Enable production optimizations or development hints.
# @option --name <value>                     Name of the configuration.
# @option -o --output-path <value>           The output directory as **absolute path** (required).
# @option --stats <value>                    Stats options object or preset name.
# @flag --no-stats                           Negative 'stats' option.
# @option -t --target* <value>               Environment to build for.
# @flag --no-target                          Negative 'target' option.
# @flag --watch-options-stdin                Stop watching when stdin stream has ended.
# @flag --no-watch-options-stdin             Negative 'watch-options-stdin' option.
# @flag --color                              Enable colors on console.
# @flag --no-color                           Disable colors on console.
# @flag -v --version                         Output the version number of 'webpack', 'webpack-cli' and 'webpack-dev-server' and commands.
# @option -h --help <verbose>                Display help for commands and options.
# @arg paths*
watch() {
    :;
}
# }} webpack-cli watch

_choice_devtool() {
    cat <<-'EOF'
false
eval
eval-cheap-source-map
eval-cheap-module-source-map
eval-source-map
cheap-source-map
cheap-module-source-map
source-map
inline-cheap-source-map
inline-cheap-module-source-map
inline-source-map
eval-nosources-cheap-source-map
eval-nosources-cheap-module-source-map
eval-nosources-source-map
inline-nosources-cheap-source-map
inline-nosources-cheap-module-source-map
inline-nosources-source-map
nosources-cheap-source-map
nosources-cheap-module-source-map
nosources-source-map
hidden-nosources-cheap-source-map
hidden-nosources-cheap-module-source-map
hidden-nosources-source-map
hidden-cheap-source-map
hidden-cheap-module-source-map
hidden-source-map
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"