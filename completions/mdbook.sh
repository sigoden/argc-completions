#!/usr/bin/env bash
# Generated with `./generate.sh mdbook`. DON'T MODIFY IT


# {{ mdbook init
# @cmd
# @flag --theme
# @flag --force
# @option --title <title>
# @option --ignore[none|git] <ignore>
# @arg dir
init() {
    :;
}
# }} mdbook init


# {{ mdbook build
# @cmd
# @option -d --dest-dir <dest-dir>
# @flag -o --open
# @arg dir
build() {
    :;
}
# }} mdbook build


# {{ mdbook test
# @cmd
# @option -d --dest-dir <dest-dir>
# @option -c --chapter <chapter>
# @option -L --library-path <dir>
# @arg dir
test() {
    :;
}
# }} mdbook test


# {{ mdbook clean
# @cmd
# @option -d --dest-dir <dest-dir>
# @arg dir
clean() {
    :;
}
# }} mdbook clean


# {{ mdbook completions
# @cmd
# @arg SHELL[bash|elvish|fish|powershell|zsh]
completions() {
    :;
}
# }} mdbook completions


# {{ mdbook watch
# @cmd
# @option -d --dest-dir <dest-dir>
# @flag -o --open
# @arg dir
watch() {
    :;
}
# }} mdbook watch


# {{ mdbook serve
# @cmd
# @option -d --dest-dir <dest-dir>
# @option -n --hostname <hostname>
# @option -p --port <port>
# @flag -o --open
# @arg dir
serve() {
    :;
}
# }} mdbook serve


eval "$(argc "$0" "$@")"