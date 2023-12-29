#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --config-file                      Show the path of silicon config file
# @flag --from-clipboard                   Read input from clipboard
# @flag -h --help                          Prints help information
# @flag --list-fonts                       List all available fonts in your system
# @flag --list-themes                      List all themes
# @flag --no-line-number                   Hide the line number
# @flag --no-round-corner                  Don't round the corner
# @flag --no-window-controls               Hide the window controls
# @flag -c --to-clipboard                  Copy the output image to clipboard
# @flag -V --version                       Prints version information
# @option -b --background <COLOR>          Background color of the image [default: ♯aaaaff]
# @option --background-image <IMAGE>       Background image
# @option --build-cache <OUTPUT_DIR>       build syntax definition and theme cache
# @option -f --font                        The fallback font list.
# @option --highlight-lines <LINES>        Lines to high light.
# @option -l --language <LANG>             The language for syntax highlighting.
# @option --line-offset <OFFSET>           Line number offset [default: 1]
# @option --line-pad <PAD>                 Pad between lines [default: 2]
# @option -o --output <PATH>               Write output image to specific location instead of cwd
# @option --pad-horiz <PAD>                Pad horiz [default: 80]
# @option --pad-vert <PAD>                 Pad vert [default: 100]
# @option --shadow-blur-radius <R>         Blur radius of the shadow.
# @option --shadow-color <COLOR>           Color of shadow [default: ♯555555]
# @option --shadow-offset-x <X>            Shadow's offset in X axis [default: 0]
# @option --shadow-offset-y <Y>            Shadow's offset in Y axis [default: 0]
# @option --tab-width <WIDTH>              Tab width [default: 4]
# @option --theme[`_choice_theme`]         The syntax highlight theme.
# @option --window-title <WINDOW_TITLE>    Show window title
# @arg file!                               File to read.

_choice_theme() {
    silicon --list-themes
}

command eval "$(argc --argc-eval "$0" "$@")"