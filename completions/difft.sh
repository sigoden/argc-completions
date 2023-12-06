#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --background[dark|light]               Set the background brightness.
# @option --byte-limit <LIMIT>                   Use a text diff if either input file exceeds this size.
# @flag --check-only                             Report whether there are any changes, but don't calculate them.
# @option --color[always|auto|never] <WHEN>      When to use color output.
# @option --context <LINES>                      The number of contextual lines to show around changed lines.[env: DFT_CONTEXT=] [default: 3]
# @option --display[side-by-side|side-by-side-show-both|inline|json] <MODE>  Display mode for showing results.
# @flag --exit-code                              Set the exit code to 1 if there are syntactic changes in any files.
# @option --graph-limit <LIMIT>                  Use a text diff if the structural graph exceed this number of nodes in memory.
# @flag -h --help                                Print help information
# @flag --ignore-comments                        Don't consider comments when diffing.
# @flag --list-languages                         Print the all the languages supported by difftastic, along with their extensions.
# @flag --missing-as-empty                       Treat paths that don't exist as equivalent to an empty file.
# @option --override*[`_choice_override`] <GLOB:NAME>  Associate this glob pattern with this language, overriding normal language detection.
# @option --parse-error-limit <LIMIT>            Use a text diff if the number of parse errors exceeds this value.
# @flag --skip-unchanged                         Don't display anything if a file is unchanged.
# @flag --sort-paths                             When diffing a directory, output the results sorted by path.
# @flag --strip-cr                               Remove any carriage return characters before diffing.
# @option --syntax-highlight[on|off] <on/off>    Enable or disable syntax highlighting.
# @option --tab-width <NUM_SPACES>               Treat a tab as this many spaces.[env: DFT_TAB_WIDTH=] [default: 8]
# @flag -V --version                             Print version information
# @option --width <COLUMNS>                      Use this many columns when calculating line wrapping.
# @option --dump-syntax <PATH>                   Parse a single file with tree-sitter and display the difftastic syntax tree.
# @option --dump-ts <PATH>                       Parse a single file with tree-sitter and display the tree-sitter parse tree.
# @arg old-path
# @arg new-path

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_override() {
    _argc_util_mode_kv :
    if [[ -n "$argc__kv_prefix" ]]; then
        _choice_language
    fi
}

_choice_language() {
    difft --list-languages  | sed -n 's/^\(\S\+\)$/\1/p'
}

command eval "$(argc --argc-eval "$0" "$@")"