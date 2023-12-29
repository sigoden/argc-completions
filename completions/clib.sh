#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Output this message
# @flag -V --version    Output version information

# {{ clib init
# @cmd Start a new project
# @flag -V --version                  output program version
# @flag -h --help                     output help information
# @flag -q --quiet                    disable verbose output
# @option -M --manifest <filename>    give a manifest of the manifest file.
init() {
    :;
}
# }} clib init

# {{ clib install
# @cmd Install one or more packages
# @alias i
# @flag -V --version                   output program version
# @flag -h --help                      output help information
# @option -o --out <dir>               change the output directory [deps]
# @option -P --prefix <dir>            change the prefix directory (usually '/usr/local')
# @flag -q --quiet                     disable verbose output
# @flag -d --dev                       install development dependencies
# @flag -S --save                      [DEPRECATED] save dependency in clib.json or package.json
# @flag -D --save-dev                  save development dependency in clib.json or package.json
# @flag -N --no-save                   don't save dependency in clib.json or package.json
# @flag -f --force                     force the action of something, like overwriting a file
# @flag -c --skip-cache                skip cache when installing
# @flag -g --global                    global install, don't write to output dir (default: deps/)
# @option -t --token <token>           Access token used to read private content
# @option -C --concurrency <number>    Set concurrency (default: 12)
# @arg name*
install() {
    :;
}
# }} clib install

# {{ clib up
# @cmd Update one or more packages
# @alias update
# @flag -V --version                   output program version
# @flag -h --help                      output help information
# @option -o --out <dir>               change the output directory [deps]
# @option -P --prefix <dir>            change the prefix directory (usually '/usr/local')
# @flag -q --quiet                     disable verbose output
# @flag -d --dev                       install development dependencies
# @option -t --token <token>           Access token used to read private content
# @option -C --concurrency <number>    Set concurrency (default: 12)
# @arg name*
up() {
    :;
}
# }} clib up

# {{ clib uninstall
# @cmd Uninstall executables
# @flag -V --version           output program version
# @flag -h --help              output help information
# @option -P --prefix <dir>    change the prefix directory (usually '/usr/local')
# @arg name*
uninstall() {
    :;
}
# }} clib uninstall

# {{ clib upgrade
# @cmd Upgrade clib to a specified or latest version
# @flag -V --version                   output program version
# @flag -h --help                      output help information
# @option -P --prefix <dir>            change the prefix directory (usually '/usr/local')
# @flag -q --quiet                     disable verbose output
# @flag -f --force                     force the action of something, like overwriting a file
# @option -t --token <token>           Access token used to read private content
# @option -S --slug <slug>             The slug where the clib project lives (usually 'clibs/clib')
# @option -T --tag <tag>               The tag to upgrade to (usually it is the latest)
# @option -C --concurrency <number>    Set concurrency (default: 12)
# @arg name*
upgrade() {
    :;
}
# }} clib upgrade

# {{ clib configure
# @cmd Configure one or more packages
# @flag -V --version                   output program version
# @flag -h --help                      output help information
# @option -o --out <dir>               change the output directory [deps]
# @option -P --prefix <dir>            change the prefix directory (usually '/usr/local')
# @flag -q --quiet                     disable verbose output
# @flag -d --dev                       configure development dependencies
# @flag -f --force                     force the action of something, like overwriting a file
# @flag --cflags                       output compiler flags instead of configuring
# @flag --flags                        output compiler flags instead of configuring
# @flag -c --skip-cache                skip cache when configuring
# @option -C --concurrency <number>    Set concurrency (default: 12)
# @arg name*
configure() {
    :;
}
# }} clib configure

# {{ clib build
# @cmd Build one or more packages
# @flag -V --version                   output program version
# @flag -h --help                      output help information
# @option -o --out <dir>               change the output directory [deps]
# @option -P --prefix <dir>            change the prefix directory (usually '/usr/local')
# @flag -q --quiet                     disable verbose output
# @flag -g --global                    use global target
# @option --clean <clean_target>       clean target before building (default: clean)
# @option -T --test <test_target>      test target instead of building (default: test)
# @flag -d --dev                       build development dependencies
# @flag -f --force                     force the action of something, like overwriting a file
# @flag -c --skip-cache                skip cache when configuring
# @option -C --concurrency <number>    Set concurrency (default: 12)
# @arg name*
build() {
    :;
}
# }} clib build

# {{ clib search
# @cmd Search for packages
# @flag -V --version       output program version
# @flag -h --help          output help information
# @flag -n --no-color      don't colorize output
# @flag -c --skip-cache    skip the search cache
# @flag -j --json          generate a serialized JSON output
# @arg query*
search() {
    :;
}
# }} clib search

command eval "$(argc --argc-eval "$0" "$@")"