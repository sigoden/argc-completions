#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -p --print                                Print console markup.
# @flag -u --rule                                 Display a horizontal rule.
# @flag -j --json                                 Display as JSON.
# @flag -m --markdown                             Display as markdown.
# @flag --rst                                     Display restructured text.
# @flag --csv                                     Display CSV as a table.
# @flag --ipynb                                   Display Jupyter notebook.
# @flag --syntax                                  Syntax highlighting.
# @flag --inspect                                 Inspect a python object.
# @option -h --head <LINES>                       Display first LINES of the file (requires --syntax or --csv).
# @option -t --tail <LINES>                       Display last LINES of the file (requires --syntax or --csv).
# @flag --emoji                                   Enable emoji code.
# @flag -l --left                                 Align to left.
# @flag -r --right                                Align to right.
# @flag -c --center                               Align to center.
# @flag -L --text-left                            Justify text to left.
# @flag -R --text-right                           Justify text to right.
# @flag -C --text-center                          Justify text to center.
# @flag -F --text-full                            Justify text to both left and right edges.
# @flag --soft                                    Enable soft wrapping of text (requires --print).
# @flag -e --expand                               Expand to full width (requires --panel).
# @option -w --width <SIZE>                       Fit output to SIZE characters.
# @option -W --max-width <SIZE>                   Set maximum width to SIZE characters.
# @option -s --style                              Set text style to STYLE.
# @option --rule-style <STYLE>                    Set rule style to STYLE.
# @option --rule-char <CHARACTER>                 Use CHARACTER to generate a line with --rule.
# @option -d --padding <TOP,RIGHT,BOTTOM,LEFT>    Padding around output.
# @option -a --panel <BOX>                        Set panel type to BOX.
# @option -S --panel-style <STYLE>                Set the panel style to STYLE (requires --panel).
# @option --theme                                 Set syntax theme to THEME.
# @flag -n --line-numbers                         Enable line number in syntax.
# @flag -g --guides                               Enable indentation guides in syntax highlighting
# @option -x --lexer                              Use LEXER for syntax highlighting.
# @flag -y --hyperlinks                           Render hyperlinks in markdown.
# @flag --no-wrap                                 Don't word wrap syntax highlighted files.
# @option --title <TEXT>                          Set panel title to TEXT.
# @option --caption <TEXT>                        Set panel caption to TEXT.
# @flag --force-terminal                          Force terminal output when not writing to a terminal.
# @option -o --export-html <PATH>                 Write HTML to PATH.
# @option --export-svg <PATH>                     Write SVG to PATH.
# @flag --pager                                   Display in an interactive pager.
# @flag -v --version                              Print version and exit.
# @flag --help                                    Show this message and exit.
# @arg path-text-url-or! <PATH,TEXT,URL or '-'>

command eval "$(argc --argc-eval "$0" "$@")"