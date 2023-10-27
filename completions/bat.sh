#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A --show-all                            Show non-printable characters like space, tab or newline.
# @option --nonprintable-notation <notation>     Set notation for non-printable characters.
# @flag -p --plain*                              Only show plain style, no decorations.
# @option -l --language[`_choice_language`] <language>  Explicitly set the language for syntax highlighting.
# @option -H --highlight-line <N:M>              Highlight the specified line ranges with a different background color For example: '--highlight-line 40' highlights line 40 '--highlight-line 30:40' highlights lines 30 to 40 '--highlight-line :40' highlights lines 1 to 40 '--highlight-line 40:' highlights lines 40 to the end of the file '--highlight-line 30:+10' highlights lines 30 to 40
# @option --file-name <name>                     Specify the name to display for a file.
# @flag -d --diff                                Only show lines that have been added/removed/modified with respect to the Git index.
# @option --diff-context <N>                     Include N lines of context around added/removed/modified lines when using '--diff'.
# @option --tabs <T>                             Set the tab width to T spaces.
# @option --wrap[auto|never|character] <mode>    Specify the text-wrapping mode.
# @flag -S --chop-long-lines                     Truncate all lines longer than screen width.
# @option --terminal-width <width>               Explicitly set the width of the terminal instead of determining it automatically.
# @flag -n --number                              Only show line numbers, no other decorations.
# @option --color[auto|never|always] <when>      Specify when to use colored output.
# @option --italic-text[always|never] <when>     Specify when to use ANSI sequences for italic text in the output.
# @option --decorations[auto|never|always] <when>  Specify when to use the decorations that have been specified via '--style'.
# @flag -f --force-colorization                  Alias for '--decorations=always --color=always'.
# @option --paging[auto|never|always] <when>     Specify when to use the pager.
# @option --pager <command>                      Determine which pager is used.
# @option -m --map-syntax <glob:syntax>          Map a glob pattern to an existing syntax name.
# @option --ignored-suffix <ignored-suffix>      Ignore extension.
# @option --theme[`_choice_theme`] <theme>       Set the theme for syntax highlighting.
# @flag --list-themes                            Display a list of supported themes for syntax highlighting.
# @option --style <components>                   Configure which elements (line numbers, file headers, grid borders, Git modifications, ..) to display in addition to the file contents.
# @option -r --line-range <N:M>                  Only print the specified range of lines for each file.
# @flag -L --list-languages                      Display a list of supported languages for syntax highlighting.
# @flag -u --unbuffered                          This option exists for POSIX-compliance reasons ('u' is for 'unbuffered').
# @flag --diagnostic                             Show diagnostic information for bug reports.
# @flag --acknowledgements                       Show acknowledgements.
# @flag -h --help                                Print help (see a summary with '-h')
# @flag -V --version                             Print version
# @arg file*                                     File(s) to print / concatenate.

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}

command eval "$(argc --argc-eval "$0" "$@")"