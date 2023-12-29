#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -r --root      Directory to use as root of project [default: .]
# @option -c --config    Path to a config file other than config.toml in the root of project [default: config.toml]
# @flag -h --help        Print help
# @flag -V --version     Print version

# {{ zola init
# @cmd Create a new Zola project
# @flag -f --force    Force creation of project even if directory is non-empty
# @flag -h --help     Print help
# @arg name           Name of the project.
init() {
    :;
}
# }} zola init

# {{ zola build
# @cmd Deletes the output directory if there is one and builds the site
# @option -u --base-url <BASE_URL>        Force the base URL to be that value (defaults to the one in config.toml)
# @option -o --output-dir <OUTPUT_DIR>    Outputs the generated site in the given path (by default 'public' dir in project root)
# @flag -f --force                        Force building the site even if output directory is non-empty
# @flag --drafts                          Include drafts when loading the site
# @flag -h --help                         Print help
build() {
    :;
}
# }} zola build

# {{ zola serve
# @cmd Serve the site.
# @option -i --interface                  Interface to bind on [default: 127.0.0.1]
# @option -p --port                       Which port to use [default: 1111]
# @option -o --output-dir <OUTPUT_DIR>    Outputs assets of the generated site in the given path (by default 'public' dir in project root).
# @flag --force                           Force use of the directory for serving the site even if output directory is non-empty
# @option -u --base-url <BASE_URL>        Changes the base_url [default: 127.0.0.1]
# @flag --drafts                          Include drafts when loading the site
# @flag -O --open                         Open site in the default browser
# @flag -f --fast                         Only rebuild the minimum on change - useful when working on a specific page/section
# @flag --no-port-append                  Default append port to the base url
# @flag -h --help                         Print help
serve() {
    :;
}
# }} zola serve

# {{ zola check
# @cmd Try to build the project without rendering it.
# @flag --drafts     Include drafts when loading the site
# @flag -h --help    Print help
check() {
    :;
}
# }} zola check

# {{ zola completion
# @cmd Generate shell completion
# @flag -h --help                                 Print help
# @arg shell![bash|elvish|fish|powershell|zsh]    Shell to generate completion for
completion() {
    :;
}
# }} zola completion

command eval "$(argc --argc-eval "$0" "$@")"