#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --json-plan <JSON_PLAN>           Specify an entire build plan in json format that should be used to configure the build
# @option -i --install-cmd <INSTALL_CMD>    Specify the install command to use
# @option -b --build-cmd <BUILD_CMD>        Specify the build command to use
# @option -s --start-cmd <START_CMD>        Specify the start command to use
# @option -p --pkgs                         Provide additional nix packages to install in the environment
# @option -a --apt                          Provide additional apt packages to install in the environment
# @option --libs                            Provide additional nix libraries to install in the environment
# @option -e --env                          Provide environment variables to your build
# @option -c --config                       Path to config file
# @flag -h --help                           Print help information
# @flag -V --version                        Print version information

# {{ nixpacks plan
# @cmd Generate a build plan for an app
# @option -f --format[json|toml]            Specify the output format of the build plan [default: json]
# @option --json-plan <JSON_PLAN>           Specify an entire build plan in json format that should be used to configure the build
# @option -i --install-cmd <INSTALL_CMD>    Specify the install command to use
# @option -b --build-cmd <BUILD_CMD>        Specify the build command to use
# @option -s --start-cmd <START_CMD>        Specify the start command to use
# @option -p --pkgs                         Provide additional nix packages to install in the environment
# @option -a --apt                          Provide additional apt packages to install in the environment
# @option --libs                            Provide additional nix libraries to install in the environment
# @option -e --env                          Provide environment variables to your build
# @option -c --config                       Path to config file
# @flag -h --help                           Print help information
# @flag -V --version                        Print version information
# @arg path!                                App source
plan() {
    :;
}
# }} nixpacks plan

# {{ nixpacks detect
# @cmd List all of the providers that will be used to build the app
# @option --json-plan <JSON_PLAN>           Specify an entire build plan in json format that should be used to configure the build
# @option -i --install-cmd <INSTALL_CMD>    Specify the install command to use
# @option -b --build-cmd <BUILD_CMD>        Specify the build command to use
# @option -s --start-cmd <START_CMD>        Specify the start command to use
# @option -p --pkgs                         Provide additional nix packages to install in the environment
# @option -a --apt                          Provide additional apt packages to install in the environment
# @option --libs                            Provide additional nix libraries to install in the environment
# @option -e --env                          Provide environment variables to your build
# @option -c --config                       Path to config file
# @flag -h --help                           Print help information
# @flag -V --version                        Print version information
# @arg path!                                App source
detect() {
    :;
}
# }} nixpacks detect

# {{ nixpacks build
# @cmd Build an app
# @option -n --name                         Name for the built image
# @option -o --out                          Save output directory instead of building it with Docker
# @option --json-plan <JSON_PLAN>           Specify an entire build plan in json format that should be used to configure the build
# @option -t --tag                          Additional tags to add to the output image
# @option -i --install-cmd <INSTALL_CMD>    Specify the install command to use
# @option -l --label                        Additional labels to add to the output image
# @option -b --build-cmd <BUILD_CMD>        Specify the build command to use
# @option --platform                        Set target platform for your output image
# @option --cache-key <CACHE_KEY>           Unique identifier to key cache by.
# @option -s --start-cmd <START_CMD>        Specify the start command to use
# @flag --current-dir                       Output Nixpacks related files to the current directory
# @option -p --pkgs                         Provide additional nix packages to install in the environment
# @option -a --apt                          Provide additional apt packages to install in the environment
# @flag --no-cache                          Disable building with the cache
# @option --incremental-cache-image <INCREMENTAL_CACHE_IMAGE>  Image to hold the cached directories between builds
# @option --libs                            Provide additional nix libraries to install in the environment
# @option --cache-from <CACHE_FROM>         Image to consider as cache sources
# @option -e --env                          Provide environment variables to your build
# @option -c --config                       Path to config file
# @option --docker-host <DOCKER_HOST>       Image to consider as cache sources
# @option --docker-tls-verify <DOCKER_TLS_VERIFY>  Image to consider as cache sources
# @flag --inline-cache                      Enable writing cache metadata into the output image
# @flag --no-error-without-start            Do not error when no start command can be found
# @option --cpu-quota <CPU_QUOTA>           Limit the CPU CFS (Completely Fair Scheduler) quota.
# @option --memory                          Memory limit.
# @flag -v --verbose                        Display more info during build
# @flag -h --help                           Print help information
# @flag -V --version                        Print version information
# @arg path!                                App source
build() {
    :;
}
# }} nixpacks build

command eval "$(argc --argc-eval "$0" "$@")"