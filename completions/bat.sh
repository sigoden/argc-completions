#!/usr/bin/env bash
# Generated with `./generate.sh clap bat`. DON'T MODIFY IT

# @flag  -A  --show-all
# @flag  -p  --plain
# @option -l --language[`__choice___language`]
# @option -H --highlight-line <N:M>
# @option --file-name <name>
# @flag  -d  --diff
# @option --diff-context <N>
# @option --tabs <T>
# @option --wrap <mode>
# @option --terminal-width <width>
# @flag  -n  --number
# @option --color[auto|never|always] <when>
# @option --italic-text[always|never] <when>
# @option --decorations[auto|never|always] <when>
# @flag  -f  --force-colorization
# @option --paging[auto|never|always] <when>
# @option --pager <command>
# @option --map-syntax <glob:syntax>
# @option --ignored-suffix
# @option --theme[`__choice___theme`]
# @flag  --list-themes
# @option --style[default|full|auto|plain|changes|header|header-filename|header-filesize|grid|rule|numbers|snip] <components>
# @option -r --line-range <N:M>
# @flag  -L  --list-languages
# @flag  -u  --unbuffered
# @flag  --diagnostic
# @flag  --acknowledgements
# @arg file*

# @cmd
# @flag  -b  --build
# @flag  -c  --clear
# @option --source <dir>
# @option --target <dir>
# @flag  --blank
# @flag  --acknowledgements
cache() {
    :;
}


__choice___language() {
    bat --list-languages  | cut -d: -f1
}


__choice___theme() {
    bat --list-themes | cat
}


eval "$(argc "$0" "$@")"