#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       Show context-sensitive help.
# @flag -v --version    Print the version number

# {{ gum choose
# @cmd Choose an option from a list of choices
# @flag -h --help                        Show context-sensitive help.
# @flag -v --version                     Print the version number
# @flag --ordered                        Maintain the order of the selected options ($GUM_CHOOSE_ORDERED)
# @option --height <10>                  Height of the list ($GUM_CHOOSE_HEIGHT)
# @option --cursor <value>               Prefix to show on item that corresponds to the cursor position ($GUM_CHOOSE_CURSOR)
# @option --header <value>               Header value ($GUM_CHOOSE_HEADER)
# @option --cursor-prefix <○>            Prefix to show on the cursor item (hidden if limit is 1) ($GUM_CHOOSE_CURSOR_PREFIX)
# @option --selected-prefix <◉>          Prefix to show on selected items (hidden if limit is 1) ($GUM_CHOOSE_SELECTED_PREFIX)
# @option --unselected-prefix <○>        Prefix to show on unselected items (hidden if limit is 1) ($GUM_CHOOSE_UNSELECTED_PREFIX)
# @option --selected* <,>                Options that should start as selected ($GUM_CHOOSE_SELECTED)
# @option --timeout <0>                  Timeout until choose returns selected element ($GUM_CCHOOSE_TIMEOUT)
# @option --limit <1>                    Maximum number of options to pick
# @flag --no-limit                       Pick unlimited number of options (ignores limit)
# @option --cursor.foreground <212>      Foreground Color ($GUM_CHOOSE_CURSOR_FOREGROUND)
# @option --header.foreground <240>      Foreground Color ($GUM_CHOOSE_HEADER_FOREGROUND)
# @option --item.foreground <value>      Foreground Color ($GUM_CHOOSE_ITEM_FOREGROUND)
# @option --selected.foreground <212>    Foreground Color ($GUM_CHOOSE_SELECTED_FOREGROUND)
choose() {
    :;
}
# }} gum choose

# {{ gum confirm
# @cmd Ask a user to confirm an action
# @flag -h --help                          Show context-sensitive help.
# @flag -v --version                       Print the version number
# @flag --default                          Default confirmation action
# @option --affirmative <Yes>              The title of the affirmative action
# @option --negative <No>                  The title of the negative action
# @option --timeout <0>                    Timeout until confirm returns selected value or default if provided ($GUM_CONFIRM_TIMEOUT)
# @option --prompt.foreground <value>      Foreground Color ($GUM_CONFIRM_PROMPT_FOREGROUND)
# @option --selected.foreground <230>      Foreground Color ($GUM_CONFIRM_SELECTED_FOREGROUND)
# @option --unselected.foreground <254>    Foreground Color ($GUM_CONFIRM_UNSELECTED_FOREGROUND)
# @arg prompt                              Prompt to display.
confirm() {
    :;
}
# }} gum confirm

# {{ gum file
# @cmd Pick a file from a folder
# @flag -h --help                           Show context-sensitive help.
# @flag -v --version                        Print the version number
# @option -c --cursor <value>               The cursor character ($GUM_FILE_CURSOR)
# @flag -a --all                            Show hidden and 'dot' files ($GUM_FILE_ALL)
# @flag --file                              Allow files selection ($GUM_FILE_FILE)
# @flag --directory                         Allow directories selection ($GUM_FILE_DIRECTORY)
# @option --height <0>                      Maximum number of files to display ($GUM_FILE_HEIGHT)
# @option --timeout <0>                     Timeout until command aborts without a selection ($GUM_FILE_TIMEOUT)
# @option --cursor.foreground <212>         Foreground Color ($GUM_FILE_CURSOR_FOREGROUND)
# @option --symlink.foreground <36>         Foreground Color ($GUM_FILE_SYMLINK_FOREGROUND)
# @option --directory.foreground <99>       Foreground Color ($GUM_FILE_DIRECTORY_FOREGROUND)
# @option --file.foreground <value>         Foreground Color ($GUM_FILE_FILE_FOREGROUND)
# @option --permissions.foreground <244>    Foreground Color ($GUM_FILE_PERMISSIONS_FOREGROUND)
# @option --selected.foreground <212>       Foreground Color ($GUM_FILE_SELECTED_FOREGROUND)
# @option --file-size.foreground <240>      Foreground Color ($GUM_FILE_FILE_SIZE_FOREGROUND)
# @arg path                                 The path to the folder to begin traversing ($GUM_FILE_PATH)
file() {
    :;
}
# }} gum file

# {{ gum filter
# @cmd Filter items from a list
# @flag -h --help                                  Show context-sensitive help.
# @flag -v --version                               Print the version number
# @option --indicator <•>                          Character for selection ($GUM_FILTER_INDICATOR)
# @option --selected-prefix <◉>                    Character to indicate selected items (hidden if limit is 1) ($GUM_FILTER_SELECTED_PREFIX)
# @option --unselected-prefix <○>                  Character to indicate unselected items (hidden if limit is 1) ($GUM_FILTER_UNSELECTED_PREFIX)
# @option --header <value>                         Header value ($GUM_FILTER_HEADER)
# @option --placeholder* <Filter>                  Placeholder value ($GUM_FILTER_PLACEHOLDER)
# @option --prompt <value>                         Prompt to display ($GUM_FILTER_PROMPT)
# @option --width <20>                             Input width ($GUM_FILTER_WIDTH)
# @option --height <0>                             Input height ($GUM_FILTER_HEIGHT)
# @option --value <value>                          Initial filter value ($GUM_FILTER_VALUE)
# @flag --reverse                                  Display from the bottom of the screen ($GUM_FILTER_REVERSE)
# @flag --fuzzy                                    Enable fuzzy matching ($GUM_FILTER_FUZZY)
# @flag --no-fuzzy                                 Enable fuzzy matching ($GUM_FILTER_FUZZY)
# @flag --sort                                     Sort the results ($GUM_FILTER_SORT)
# @flag --no-sort                                  Sort the results ($GUM_FILTER_SORT)
# @option --timeout <0>                            Timeout until filter command aborts ($GUM_FILTER_TIMEOUT)
# @option --indicator.foreground <212>             Foreground Color ($GUM_FILTER_INDICATOR_FOREGROUND)
# @option --selected-indicator.foreground <212>    Foreground Color ($GUM_FILTER_SELECTED_PREFIX_FOREGROUND)
# @option --unselected-prefix.foreground <240>     Foreground Color ($GUM_FILTER_UNSELECTED_PREFIX_FOREGROUND)
# @option --header.foreground <240>                Foreground Color ($GUM_FILTER_HEADER_FOREGROUND)
# @option --text.foreground <value>                Foreground Color ($GUM_FILTER_TEXT_FOREGROUND)
# @option --cursor-text.foreground <value>         Foreground Color ($GUM_FILTER_CURSOR_TEXT_FOREGROUND)
# @option --match.foreground <212>                 Foreground Color ($GUM_FILTER_MATCH_FOREGROUND)
# @option --prompt.foreground <240>                Foreground Color ($GUM_FILTER_PROMPT_FOREGROUND)
# @option --limit <1>                              Maximum number of options to pick
# @flag --no-limit                                 Pick unlimited number of options (ignores limit)
# @flag --strict                                   Only returns if anything matched.
# @flag --no-strict                                Only returns if anything matched.
filter() {
    :;
}
# }} gum filter

# {{ gum format
# @cmd Format a string using a template
# @flag -h --help                  Show context-sensitive help.
# @flag -v --version               Print the version number
# @option --theme <pink>           Glamour theme to use for markdown formatting ($GUM_FORMAT_THEME)
# @option -l --language <value>    Programming language to parse code ($GUM_FORMAT_LANGUAGE)
# @option -t --type[markdown|template|code|emoji] <markdown>  Format to use ($GUM_FORMAT_TYPE)
# @arg template*                   Template string to format (can also be provided via stdin)
format() {
    :;
}
# }} gum format

# {{ gum input
# @cmd Prompt for some input
# @flag -h --help                            Show context-sensitive help.
# @flag -v --version                         Print the version number
# @option --placeholder* <Type something>    Placeholder value ($GUM_INPUT_PLACEHOLDER)
# @option --prompt <value>                   Prompt to display ($GUM_INPUT_PROMPT)
# @option --cursor.mode <blink>              Cursor mode ($GUM_INPUT_CURSOR_MODE)
# @option --value <value>                    Initial value (can also be passed via stdin)
# @option --char-limit <400>                 Maximum value length (0 for no limit)
# @option --width <40>                       Input width (0 for terminal width) ($GUM_INPUT_WIDTH)
# @flag --password                           Mask input characters
# @option --header <value>                   Header value ($GUM_INPUT_HEADER)
# @option --timeout <0>                      Timeout until input aborts ($GUM_INPUT_TIMEOUT)
# @option --prompt.foreground <value>        Foreground Color ($GUM_INPUT_PROMPT_FOREGROUND)
# @option --cursor.foreground <212>          Foreground Color ($GUM_INPUT_CURSOR_FOREGROUND)
# @option --header.foreground <240>          Foreground Color ($GUM_INPUT_HEADER_FOREGROUND)
input() {
    :;
}
# }} gum input

# {{ gum join
# @cmd Join text vertically or horizontally
# @flag -h --help           Show context-sensitive help.
# @flag -v --version        Print the version number
# @option --align <left>    Text alignment
# @flag --horizontal        Join (potentially multi-line) strings horizontally
# @flag --vertical          Join (potentially multi-line) strings vertically
# @arg text+                Text to join.
join() {
    :;
}
# }} gum join

# {{ gum pager
# @cmd Scroll through a file
# @flag -h --help                               Show context-sensitive help.
# @flag -v --version                            Print the version number
# @flag --show-line-numbers                     Show line numbers
# @flag --soft-wrap                             Soft wrap lines
# @option --timeout <0>                         Timeout until command exits ($GUM_PAGER_TIMEOUT)
# @option --help.foreground <241>               Foreground Color ($GUM_PAGER_HELP_FOREGROUND)
# @option --line-number.foreground <237>        Foreground Color ($GUM_PAGER_LINE_NUMBER_FOREGROUND)
# @option --match.foreground <212>              Foreground Color ($GUM_PAGER_MATCH_FOREGROUND)
# @option --match-highlight.foreground <235>    Foreground Color ($GUM_PAGER_MATCH_HIGH_FOREGROUND)
# @arg content                                  Display content to scroll
pager() {
    :;
}
# }} gum pager

# {{ gum spin
# @cmd Display spinner while running a command
# @flag -h --help                       Show context-sensitive help.
# @flag -v --version                    Print the version number
# @flag --show-output                   Show or pipe output of command during execution ($GUM_SPIN_SHOW_OUTPUT)
# @option -s --spinner <dot>            Spinner type ($GUM_SPIN_SPINNER)
# @option --title* <Loading>            Text to display to user while spinning ($GUM_SPIN_TITLE)
# @option -a --align <left>             Alignment of spinner with regard to the title ($GUM_SPIN_ALIGN)
# @option --timeout <0>                 Timeout until spin command aborts ($GUM_SPIN_TIMEOUT)
# @option --spinner.foreground <212>    Foreground Color ($GUM_SPIN_SPINNER_FOREGROUND)
# @option --title.foreground <value>    Foreground Color ($GUM_SPIN_TITLE_FOREGROUND)
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
spin() {
    :;
}
# }} gum spin

# {{ gum style
# @cmd Apply coloring, borders, spacing to text
# @flag -h --help                        Show context-sensitive help.
# @flag -v --version                     Print the version number
# @option --background <value>           Background Color ($BACKGROUND)
# @option --foreground <value>           Foreground Color ($FOREGROUND)
# @option --border <none>                Border Style ($BORDER)
# @option --border-background <value>    Border Background Color ($BORDER_BACKGROUND)
# @option --border-foreground <value>    Border Foreground Color ($BORDER_FOREGROUND)
# @option --align <left>                 Text Alignment ($ALIGN)
# @option --height <0>                   Text height ($HEIGHT)
# @option --width <0>                    Text width ($WIDTH)
# @option --margin <0 0>                 Text margin ($MARGIN)
# @option --padding <0 0>                Text padding ($PADDING)
# @flag --bold                           Bold text ($BOLD)
# @flag --faint                          Faint text ($FAINT)
# @flag --italic                         Italicize text ($ITALIC)
# @flag --strikethrough                  Strikethrough text ($STRIKETHROUGH)
# @flag --underline                      Underline text ($UNDERLINE)
# @arg text*                             Text to which to apply the style
style() {
    :;
}
# }} gum style

# {{ gum table
# @cmd Render a table of data
# @flag -h --help                        Show context-sensitive help.
# @flag -v --version                     Print the version number
# @option -s --separator <,>             Row separator
# @option -c --columns* <COLUMNS,>       Column names
# @option -w --widths* <WIDTHS,>         Column widths
# @option --height <10>                  Table height
# @flag -p --print                       static print
# @option -f --file <value>              file path
# @option -b --border <rounded>          border style
# @option --border.foreground <value>    Foreground Color ($GUM_TABLE_BORDER_FOREGROUND)
# @option --cell.foreground <value>      Foreground Color ($GUM_TABLE_CELL_FOREGROUND)
# @option --header.foreground <value>    Foreground Color ($GUM_TABLE_HEADER_FOREGROUND)
# @option --selected.foreground <212>    Foreground Color ($GUM_TABLE_SELECTED_FOREGROUND)
table() {
    :;
}
# }} gum table

# {{ gum write
# @cmd Prompt for long-form text
# @flag -h --help                                Show context-sensitive help.
# @flag -v --version                             Print the version number
# @option --width <50>                           Text area width (0 for terminal width) ($GUM_WRITE_WIDTH)
# @option --height <5>                           Text area height ($GUM_WRITE_HEIGHT)
# @option --header <value>                       Header value ($GUM_WRITE_HEADER)
# @option --placeholder* <Write something>       Placeholder value ($GUM_WRITE_PLACEHOLDER)
# @option --prompt <┃>                           Prompt to display ($GUM_WRITE_PROMPT)
# @flag --show-cursor-line                       Show cursor line ($GUM_WRITE_SHOW_CURSOR_LINE)
# @flag --show-line-numbers                      Show line numbers ($GUM_WRITE_SHOW_LINE_NUMBERS)
# @option --value <value>                        Initial value (can be passed via stdin) ($GUM_WRITE_VALUE)
# @option --char-limit <400>                     Maximum value length (0 for no limit)
# @option --cursor.mode <blink>                  Cursor mode ($GUM_WRITE_CURSOR_MODE)
# @option --base.foreground <value>              Foreground Color ($GUM_WRITE_BASE_FOREGROUND)
# @option --cursor-line-number.foreground <7>    Foreground Color ($GUM_WRITE_CURSOR_LINE_NUMBER_FOREGROUND)
# @option --cursor-line.foreground <value>       Foreground Color ($GUM_WRITE_CURSOR_LINE_FOREGROUND)
# @option --cursor.foreground <212>              Foreground Color ($GUM_WRITE_CURSOR_FOREGROUND)
# @option --end-of-buffer.foreground <0>         Foreground Color ($GUM_WRITE_END_OF_BUFFER_FOREGROUND)
# @option --line-number.foreground <7>           Foreground Color ($GUM_WRITE_LINE_NUMBER_FOREGROUND)
# @option --header.foreground <240>              Foreground Color ($GUM_WRITE_HEADER_FOREGROUND)
# @option --placeholder.foreground <240>         Foreground Color ($GUM_WRITE_PLACEHOLDER_FOREGROUND)
# @option --prompt.foreground <7>                Foreground Color ($GUM_WRITE_PROMPT_FOREGROUND)
write() {
    :;
}
# }} gum write

# {{ gum log
# @cmd Log messages to output
# @flag -h --help                           Show context-sensitive help.
# @flag -v --version                        Print the version number
# @option -o --file <STRING>                Log to file
# @flag -f --format                         Format message using printf
# @option --formatter <text>                The log formatter to use
# @option -l --level <none>                 The log level to use
# @option --prefix <STRING>                 Prefix to print before the message
# @flag -s --structured                     Use structured logging
# @option -t --time <value>                 The time format to use (kitchen, layout, ansic, rfc822, etc...)
# @option --level.foreground <value>        Foreground Color ($GUM_LOG_LEVEL_FOREGROUND)
# @option --time.foreground <value>         Foreground Color ($GUM_LOG_TIME_FOREGROUND)
# @option --prefix.foreground <value>       Foreground Color ($GUM_LOG_PREFIX_FOREGROUND)
# @option --message.foreground <value>      Foreground Color ($GUM_LOG_MESSAGE_FOREGROUND)
# @option --key.foreground <value>          Foreground Color ($GUM_LOG_KEY_FOREGROUND)
# @option --value.foreground <value>        Foreground Color ($GUM_LOG_VALUE_FOREGROUND)
# @option --separator.foreground <value>    Foreground Color ($GUM_LOG_SEPARATOR_FOREGROUND)
# @arg text+                                Text to log
log() {
    :;
}
# }} gum log

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

command eval "$(argc --argc-eval "$0" "$@")"