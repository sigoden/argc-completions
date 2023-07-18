#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            Show context-sensitive help.
# @flag --version                            Show version.
# @flag --list                               List lexers, styles and formatters.
# @flag --unbuffered                         Do not buffer output.
# @flag --trace                              Trace lexer states as they are traversed.
# @flag --check                              Do not format, check for tokenisation errors instead.
# @option --filename <STRING>                Filename to use for selecting a lexer when reading from stdin.
# @flag --fail                               Exit silently with status 1 if no specific lexer was found.
# @option -l --lexer[`_choice_lexer`] <"autodetect">  Lexer to use when formatting or path to an XML file to load.
# @option -s --style[`_choice_style`] <"swapoff">  Style to use for formatting or path to an XML file to load.
# @option -f --formatter[`_choice_formatter`] <"terminal">  Formatter to use.
# @flag --json                               Convenience flag to use JSON formatter.
# @flag --html                               Convenience flag to use HTML formatter.
# @flag --svg                                Convenience flag to use SVG formatter.
# @option --html-prefix <PREFIX>             HTML CSS class prefix.
# @flag --html-styles                        Output HTML CSS styles.
# @flag --html-all-styles                    Output all HTML CSS styles, including redundant ones.
# @flag --html-only                          Output HTML fragment.
# @flag --html-inline-styles                 Output HTML with inline styles (no classes).
# @option --html-tab-width <8>               Set the HTML tab width.
# @flag --html-lines                         Include line numbers in output.
# @flag --html-lines-table                   Split line numbers and code in a HTML table
# @option --html-lines-style <STRING>        Style for line numbers.
# @option --html-highlight <N[:M][,...]>     Highlight these lines.
# @option --html-highlight-style <STRING>    Style used for highlighting lines.
# @option --html-base-line <1>               Base line number.
# @flag --html-prevent-surrounding-pre       Prevent the surrounding pre tag.
# @flag --html-linkable-lines                Make the line numbers linkable and be a link to themselves.
# @arg files*                                Files to highlight.

_choice_lexer() {
    chroma --list | sed -n 's/^\s\+aliases: \(.*\)/\1/p' | tr ' ' '\n'
}

_choice_style() {
    chroma --list | sed -n 's/^styles: \(.*\)/\1/p' | tr ' ' '\n'
}

_choice_formatter() {
    chroma --list | sed -n 's/^formatters: \(.*\)/\1/p' | tr ' ' '\n'
}

command eval "$(argc --argc-eval "$0" "$@")"