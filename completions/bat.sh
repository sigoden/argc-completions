#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A --show-all                  Show non-printable characters like space, tab or newline.
# @flag -p --plain                     Only show plain style, no decorations.
# @option -l --language[`_choice_language`] <language>  Explicitly set the language for syntax highlighting.
# @option -H --highlight-line <N:M>    Highlight the specified line ranges with a different background color.
# @option --file-name <name>           Specify the name to display for a file.
# @flag -d --diff                      Only show lines that have been added/removed/modified with respect to the Git index.
# @option --diff-context <N>           Include N lines of context around added/removed/modified lines when using '--diff'.
# @option --tabs <T>                   Set the tab width to T spaces. Use a width of 0 to pass tabs through directly
# @option --wrap <mode>                Specify the text-wrapping mode (*auto*, never, character).
# @option --terminal-width <width>     Explicitly set the width of the terminal instead of determining it automatically.
# @flag -n --number                    Only show line numbers, no other decorations.
# @option --color <when>               Specify when to use colored output.
# @option --italic-text <when>         Specify when to use ANSI sequences for italic text in the output.
# @option --decorations <when>         Specify when to use the decorations that have been specified via '--style'.
# @flag -f --force-colorization        Alias for '--decorations=always --color=always'.
# @option --paging <when>              Specify when to use the pager.
# @option --pager <command>            Determine which pager is used.
# @option -m --map-syntax <glob:syntax>  Map a glob pattern to an existing syntax name.
# @option --ignored-suffix <ignored-suffix>  Ignore extension.
# @option --theme[`_choice_theme`] <theme>  Set the theme for syntax highlighting.
# @flag --list-themes                  Display a list of supported themes for syntax highlighting.
# @option --style <components>         Configure which elements (line numbers, file headers, grid borders, Git modifications, ..) to display in addition to the file contents.
# @option -r --line-range <N:M>        Only print the specified range of lines for each file.
# @flag -L --list-languages            Display a list of supported languages for syntax highlighting.
# @flag -u --unbuffered                This option exists for POSIX-compliance reasons ('u' is for 'unbuffered').
# @flag --diagnostic                   Show diagnostic information for bug reports.
# @flag --acknowledgements             Show acknowledgements.
# @flag -h --help                      Print this help message.
# @flag -V --version                   Print version information
# @arg FILE+                           File(s) to print / concatenate.

_choice_language() {
    bat --list-languages  | cut -d: -f1
}

_choice_theme() {
    bat --list-themes | cat
}


eval "$(argc --argc-eval "$0" "$@")"