#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a --aggressive                   Ignores channels for latest updates
# @option --color[Auto|Never|Always]      Output coloring [default: auto] [possible values: Auto, Never, Always]
# @option -d --depth <NUM>                How deep in the dependency chain to search (Defaults to all dependencies when omitted)
# @option -x --exclude* <DEPENDENCIES>    Dependencies to exclude from building (comma separated or one per '--exclude' argument)
# @option --exit-code <NUM>               The exit code to return on new versions found [default: 0]
# @option --features*                     Space-separated list of features
# @option --format[List|Json]             Output formatting [default: list] [possible values: List, Json]
# @flag -h --help                         Prints help information
# @option -i --ignore* <DEPENDENCIES>     Dependencies to not print in the output (comma separated or one per '--ignore' argument)
# @flag -e --ignore-external-rel          Ignore relative dependencies external to workspace and check root dependencies only.
# @option -m --manifest-path <PATH>       Path to the Cargo.toml file to use (Defaults to Cargo.toml in project root)
# @flag -o --offline                      Run without accessing the network (useful for testing w/ local registries)
# @option -p --packages* <PKGS>           Packages to inspect for updates (comma separated or one per '--packages' argument)
# @flag -q --quiet                        Suppresses warnings
# @option -r --root                       Package to treat as the root package
# @flag -R --root-deps-only               Only check root dependencies (Equivalent to --depth=1)
# @flag -V --version                      Prints version information
# @flag -v --verbose                      Use verbose output
# @flag -w --workspace                    Checks updates for all workspace members rather than only the root package

command eval "$(argc --argc-eval "$0" "$@")"