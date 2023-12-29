#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --autocalc                           Set variable 'autocalc'.
# @flag --copy_to_clipboard_delimited_tab    Set variable 'copy_to_clipboard_delimited_tab'
# @flag --debug                              Set variable 'debug'
# @option --default_copy_to_clipboard_cmd <COMMAND>  set variable 'default_copy_from_clipboard_cmd'
# @option --default_paste_from_clipboard_cmd <COMMAND>  set variable 'default_paste_from_clipboard_cmd'
# @option --default_open_file_under_cursor_cmd <COMMAND>  set variable 'default_open_file_under_cursor_cmd'
# @flag --export_csv                         Export to csv without interaction
# @flag --export_tab                         Export to tab without interaction
# @flag --export_txt                         Export to txt without interaction
# @flag --export_mkd                         Export to markdown without interaction
# @flag --external_functions                 Set variable 'external_functions'
# @flag --half_page_scroll                   Set variable 'half_page_scroll'
# @flag --ignorecase                         Set variable 'ignorecase'
# @flag --import_delimited_as_text           Import text as
# @option --newline_action[j|l] <j or l>     Set variable 'newline_action'
# @flag --nocurses                           Run interactive but without ncurses interface.
# @flag --numeric                            Set variable 'numeric'
# @flag --numeric_decimal                    Set variable 'numeric_decimal'
# @option --output <FILE>                    Save the results in FILE
# @flag --overlap                            Set variable 'overlap variable'
# @flag --quit_afterload                     Quit after loading all the files
# @flag --show_cursor                        Make the screen cursor follow the active cell
# @option --tm_gmtoff <seconds>              set gmt offset used for converting datetimes to localtime.
# @option --txtdelim[`_choice_txtdelim`] <"," or ";" or "t" or "|">  Sets delimiter when opening a .tab of .csv file
# @option --sheet                            Open SHEET when loading xlsx file.
# @flag --xlsx_readformulas                  Set variable 'xlsx_readformulas'
# @flag --version                            Print version information and exit
# @flag --help                               Print Help (this message) and exit
# @arg file

_choice_txtdelim() {
    echo ','
    echo ';'
    echo '\t'
    echo '|'
}

command eval "$(argc --argc-eval "$0" "$@")"