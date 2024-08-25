#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e --edit-mode[`_choice_edit_mode`] <EDIT_MODE>  Specifies the edit mode for the interface.
# @option -i --indent                         Affect the formatting of the displayed JSON, making it more readable by adjusting the indentation level.
# @flag -n --no-hint                          When this option is enabled, it prevents the display of hints that typically guide or offer suggestions to the user.
# @option -d --expand-depth <EXPAND_DEPTH>    Specifies the initial depth to which JSON nodes are expanded in the visualization.
# @option -l --suggestion-list-length <SUGGESTION_LIST_LENGTH>  Controls the number of suggestions displayed in the list, aiding users in making selections more efficiently.
# @flag -h --help                             Print help (see a summary with '-h')
# @flag -V --version                          Print version
# @arg input                                  Optional path to a JSON file.

_choice_edit_mode() {
    cat <<-EOF
insert	inserts a new input at the cursor's position.
overwrite	mode replaces existing characters with new input at the cursor's position.
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"