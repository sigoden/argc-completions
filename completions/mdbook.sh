#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help
# @flag -V --version

# {{ mdbook init
# @cmd
# @arg dir
# @flag --theme
# @flag --force
# @option --title <title>
# @option --ignore[none|git] <ignore>
# @flag -h --help
# @flag -V --version
init() {
    :;
}
# }} mdbook init


# {{ mdbook build
# @cmd
# @arg dir
# @option -d --dest-dir <dest-dir>
# @flag -o --open
# @flag -h --help
# @flag -V --version
build() {
    :;
}
# }} mdbook build


# {{ mdbook test
# @cmd
# @arg dir
# @option -d --dest-dir <dest-dir>
# @option -c --chapter <chapter>
# @option -L --library-path <dir>
# @flag -h --help
# @flag -V --version
test() {
    :;
}
# }} mdbook test


# {{ mdbook clean
# @cmd
# @arg dir
# @option -d --dest-dir <dest-dir>
# @flag -h --help
# @flag -V --version
clean() {
    :;
}
# }} mdbook clean


# {{ mdbook completions
# @cmd
# @arg SHELL![bash|elvish|fish|powershell|zsh]
# @flag -h --help
# @flag -V --version
completions() {
    :;
}
# }} mdbook completions


# {{ mdbook watch
# @cmd
# @option -d --dest-dir <dest-dir>
# @flag -o --open
# @flag -h --help
# @flag -V --version
# @arg dir
watch() {
    :;
}
# }} mdbook watch


# {{ mdbook serve
# @cmd
# @arg dir
# @option -d --dest-dir <dest-dir>
# @option -n --hostname <hostname>
# @option -p --port <port>
# @flag -o --open
# @flag -h --help
# @flag -V --version
serve() {
    :;
}
# }} mdbook serve


eval "$(argc --argc-eval "$0" "$@")"