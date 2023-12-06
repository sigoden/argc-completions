#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -x --extended                            Extended-search mode (enabled by default; +x or --no-extended to disable)
# @flag -e --exact                               Enable Exact-match
# @flag -i                                       Case-insensitive match (default: smart-case match)
# @option --scheme[default|path|history]         Scoring scheme
# @flag --literal                                Do not normalize latin script letters before matching
# @option -n --nth <N[,..]>                      Comma-separated list of field index expressions for limiting search scope.
# @option --with-nth <N[,..]>                    Transform the presentation of each line using field index expressions
# @option -d --delimiter <STR>                   Field delimiter regex (default: AWK-style)
# @flag --no-sort                                Do not sort the result
# @flag --track                                  Track the current selection when the result is updated
# @flag --tac                                    Reverse the order of the input
# @flag --disabled                               Do not perform search
# @option --tiebreak[length|chunk|begin|end|index] <CRI[,..]>  Comma-separated list of sort criteria to apply when the scores are tied (default: length)
# @option -m --multi <MAX>                       Enable multi-select with tab/shift-tab
# @flag --no-mouse                               Disable mouse
# @option --bind <KEYBINDS>                      Custom key bindings.
# @flag --cycle                                  Enable cyclic scroll
# @flag --keep-right                             Keep the right end of the line visible on overflow
# @option --scroll-off <LINES>                   Number of screen lines to keep above or below when scrolling to the top or to the bottom (default: 0)
# @flag --no-hscroll                             Disable horizontal scroll
# @option --hscroll-off <COLS>                   Number of screen columns to keep to the right of the highlighted substring (default: 10)
# @flag --filepath-word                          Make word-wise movements respect path separators
# @option --jump-labels <CHARS>                  Label characters for jump and jump-accept
# @option --height <[~]HEIGHT[%]>                Display fzf window below the cursor with the given height instead of using fullscreen.
# @option --min-height <HEIGHT>                  Minimum height when --height is given in percent (default: 10)
# @option --layout[default|reverse|reverse-list]  Choose layout:
# @option --border[rounded|sharp|bold|block|thinblock|double|horizontal|vertical|top|bottom|left|right|none] <STYLE>  Draw border around the finder [rounded|sharp|bold|block|thinblock|double|horizontal|vertical|
# @option --border-label <LABEL>                 Label to print on the border
# @option --border-label-pos <COL>               Position of the border label [POSITIVE_INTEGER: columns from left|
# @option --margin                               Screen margin (TRBL | TB,RL | T,RL,B | T,R,B,L)
# @option --padding                              Padding inside border (TRBL | TB,RL | T,RL,B | T,R,B,L)
# @option --info[default|right|hidden|inline|inline-right] <STYLE>  Finder info style [default|right|hidden|inline[:SEPARATOR]|inline-right]
# @option --separator <STR>                      String to form horizontal separator on info line
# @flag --no-separator                           Hide info line separator
# @option --scrollbar <C1[C2]>                   Scrollbar character(s) (each for main and preview window)
# @flag --no-scrollbar                           Hide scrollbar
# @option --prompt <STR>                         Input prompt (default: '> ')
# @option --pointer <STR>                        Pointer to the current line (default: '>')
# @option --marker <STR>                         Multi-select marker (default: '>')
# @option --header <STR>                         String to print as header
# @option --header-lines <N>                     The first N lines of the input are treated as header
# @flag --header-first                           Print header before the prompt line
# @option --ellipsis <STR>                       Ellipsis to show when line is truncated (default: '..')
# @flag --ansi                                   Enable processing of ANSI color codes
# @option --tabstop <SPACES>                     Number of spaces for a tab character (default: 8)
# @option --color[dark|light|16|bw] <COLSPEC>    Base scheme (dark|light|16|bw) and/or custom colors
# @flag --no-bold                                Do not use bold text
# @option --history <FILE>                       History file
# @option --history-size <N>                     Maximum number of history entries (default: 1000)
# @option --preview <COMMAND>                    Command to preview highlighted line ({})
# @option --preview-window[up|down|left|right] <OPT>  Preview window layout (default: right:50%)[,SIZE[%]] [,[no]wrap][,[no]cycle][,[no]follow][,[no]hidden] [,border-BORDER_OPT] [,+SCROLL[OFFSETS][/DENOM]][,~HEADER_LINES] [,default][,<SIZE_THRESHOLD(ALTERNATIVE_LAYOUT)]
# @option --preview-label <LABEL>
# @option --preview-label-pos <N>                Same as --border-label and --border-label-pos, but for preview window
# @option -q --query <STR>                       Start the finder with the given query
# @flag -1 --select-1                            Automatically select the only match
# @flag -0 --exit-0                              Exit immediately when there's no match
# @option -f --filter <STR>                      Filter mode.
# @flag --print-query                            Print query as the first line
# @option --expect <KEYS>                        Comma-separated list of keys to complete fzf
# @flag --read0                                  Read input delimited by ASCII NUL characters
# @flag --print0                                 Print output delimited by ASCII NUL characters
# @flag --sync                                   Synchronous search for multi-staged filtering
# @option --listen <[ADDR:]PORT>                 Start HTTP server to receive actions (POST /) (To allow remote process execution, use --listen-unsafe)
# @flag --version                                Display version information and exit
# @flag +i                                       Case-sensitive match
# @flag +s                                       Do not sort the result

command eval "$(argc --argc-eval "$0" "$@")"