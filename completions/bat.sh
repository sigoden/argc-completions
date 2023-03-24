#!/usr/bin/env bash
# Generated with `./generate.sh bat`. DON'T MODIFY IT

# @flag -A --show-all
# @flag -p --plain
# @option -l --language[`_choice_language`] <language>
# @option -H --highlight-line <N:M>
# @option --file-name <name>
# @flag -d --diff
# @option --diff-context <N>
# @option --tabs <T>
# @option --wrap <mode>
# @option --terminal-width <width>
# @flag -n --number
# @option --color[always|never|auto] <when>
# @option --italic-text[always|never] <when>
# @option --decorations[auto|never|always] <when>
# @flag -f --force-colorization
# @option --paging[auto|never|always] <when>
# @option --pager <command>
# @option -m --map-syntax <glob:syntax>
# @option --ignored-suffix <ignored-suffix>
# @option --theme[`_choice_theme`] <theme>
# @flag --list-themes
# @option --style[default|full|auto|plain|changes|header|header-filename|header-filesize|grid|rule|numbers|snip] <components>
# @option -r --line-range <N:M>
# @flag -L --list-languages
# @flag -u --unbuffered
# @flag --diagnostic
# @flag --acknowledgements
# @arg FILE*

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}


eval "$(argc "$0" "$@")"