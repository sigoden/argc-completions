#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -e --exact                                Enable exact-match
# @flag --regex                                   Search with regular expression instead of fuzzy match
# @option --algo[`_choice_algo`] <TYPE>           Fuzzy matching algorithm (default: skim_v2)
# @option --case[smart|respect|ignore]            To ignore case on matching or not.
# @option -n --nth <N[,..]>                       Comma-separated list of field index expressions for limiting search scope.
# @option --with-nth <N[,..]>                     Transform the presentation of each line using field index expressions
# @option -d --delimiter <STR>                    Field delimiter regex for --nth and --with-nth (default: AWK-style)
# @flag --tac                                     Reverse the order of the search result(normally used together with --no-sort)
# @flag --no-sort                                 Do not sort the search result(normally used together with --tac)
# @option --tiebreak*,[`_choice_tiebreak`] <CRI[,..]>  Comma-separated list of sort criteria to apply when the scores are tied.
# @flag -i --interactive                          Start the finder in the command query
# @option -c --cmd <cmd>                          Specify the command to invoke for fetching options
# @option -I <replstr>                            Replace replstr with the selected item
# @flag -m --multi                                Enable multi-select with tab/shift-tab
# @flag --no-multi                                Disable multi-select
# @option --bind <KEYBINDS>                       Comma-separated list of custom key bindings.
# @flag --no-hscroll                              Disable horizontal scroll
# @option --height <HEIGHT[%]>                    Display sk window below the cursor with the given height instead of using the full screen.
# @option --min-height <HEIGHT>                   Minimum height when --height is given in percent (default: 10).
# @option --layout[`_choice_layout`]              Choose the layout (default: default)
# @flag --reverse                                 A synonym for --layout=reverse
# @option --margin                                Comma-separated expression for margins around the finder.
# @flag --inline-info                             Display finder info inline with the query
# @option -p --prompt <STR>                       Input prompt (default: '> ')
# @option --cmd-prompt <STR>                      Command prompt (default: 'c> ')
# @option --header <STR>                          The given string will be printed as the sticky header.
# @option --header-lines <N>                      The first N lines of the input are treated as the sticky header.
# @flag --keep-right                              Keep the right end of the line visible when it's too long.
# @flag --skip-to-pattern                         Line will start with the start of the matched pattern.
# @flag --no-clear-if-empty                       Do not clear previous items if new command returns empty result.
# @flag --show-cmd-error                          If the command fails, send the error messages and show them as items.
# @option --tabstop <SPACES>                      Number of spaces for a tab character (default: 8)
# @option --color <[BASE_SCHEME][,COLOR:ANSI]>    Color configuration.
# @option --history <HISTORY_FILE>                Load search history from the specified file and update the file on completion.
# @option --history-size <N>                      Maximum number of entries in the history file (default: 1000).
# @option --cmd-history <HISTORY_FILE>            Load command query history from the specified file and update the file on completion.
# @option --cmd-history-size <N>                  Maximum number of command query entries in the history file (default: 1000).
# @option --preview <COMMAND>                     Execute the given command for the current line and display the result on the preview window.
# @option --preview-window <VALUE>                Determine the layout of the preview window.
# @option -q --query <STR>                        Start the finder with the given query
# @option --cmd-query <STR>                       Specify the initial query for the command query
# @flag --print-query                             Print query as the first line
# @option -f --filter <STR>                       Filter mode.
# @option --expect <KEY[,..]>                     Comma-separated list of keys that can be used to complete sk in addition to the default enter key.
# @flag --read0                                   Read input delimited by ASCII NUL characters instead of newline characters
# @flag --print0                                  Print output delimited by ASCII NUL characters instead of newline characters
# @flag --no-clear                                Do not clear finder interface on exit.
# @flag -1 --select-1                             Automatically select the only match
# @flag -0 --exit-0                               Exit immediately when there's no match
# @flag --sync                                    Synchronous search for multi-staged filtering.
# @option --pre-select-n <NUM>                    Pre-select the first NUM items in the multi-selection mode.
# @option --pre-select-pat <REGEX>                Pre-select the items that matches the REGEX specified in multi-selection mode.
# @option --pre-select-items <$'item1\nitem2'>    Pre-select the specified items (separated by newline character) in multi-selection mode.
# @option --pre-select-file <FILENAME>            Pre-select the items read from FILENAME (separated by newline character) in multi-selection mode.
# @flag --version                                 Display version information and exit

_choice_algo() {
    cat <<-'EOF'
skim_v2	Almost always the one to choose
skim_v1	The legacy algorithm
clangd	 the one used by clangd for keyword completion
EOF
}

_choice_tiebreak() {
    cat <<-'EOF'
score	Score of the fuzzy match algorithm
index	Prefers line that appeared earlier in the input stream
begin	Prefers line with matched substring closer to the beginning
end	Prefers line with matched substring closer to the end
length	Prefers line with shorter length
-score	Score of the fuzzy match algorithm
-index	Prefers line that appeared earlier in the input stream
-begin	Prefers line with matched substring closer to the beginning
-end	Prefers line with matched substring closer to the end
-length	Prefers line with shorter length
EOF
}

_choice_layout() {
    cat <<-'EOF'
default	Display from the bottom of the screen
reverse	Display from the top of the screen
reverse-list	Display from the top of the screen, prompt at the bottom
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"