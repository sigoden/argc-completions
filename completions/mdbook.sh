#!/usr/bin/env bash
# Generated with `./generate.sh --spec=clap mdbook`. DON'T MODIFY IT


# @cmd
# @flag --theme
# @flag --force
# @option --title
# @option --ignore[none|git]
# @arg dir
init() {
    :;
}


# @cmd
# @option -d --dest-dir
# @flag -o --open
# @arg dir
build() {
    :;
}


# @cmd
# @option -d --dest-dir
# @option -c --chapter
# @option -L --library-path <dir>
# @arg dir
test() {
    :;
}


# @cmd
# @option -d --dest-dir
# @option --dir
clean() {
    :;
}


# @cmd
# @arg shell[bash|elvish|fish|powershell|zsh]
completions() {
    :;
}


# @cmd
# @option -d --dest-dir
# @flag -o --open
# @arg dir
watch() {
    :;
}


# @cmd
# @option -d --dest-dir
# @option -n --hostname
# @option -p --port
# @flag -o --open
# @arg dir
serve() {
    :;
}


eval "$(argc "$0" "$@")"