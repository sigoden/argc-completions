#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Show help information.

# {{ shortcuts run
# @cmd Run a shortcut.
# @option -i --input-path <input-path>      The input to provide to the shortcut.
# @option -o --output-path <output-path>    Where to write the shortcut output, if applicable.
# @option --output-type <output-type>       What type to output data in, in Universal Type Identifier format.
# @flag -h --help                           Show help information.
# @arg shortcut-name[`_choice_shortcut`]
run() {
    :;
}
# }} shortcuts run

# {{ shortcuts list
# @cmd List your shortcuts.
# @option -f --folder-name <folder-name>    The folder name or identifier to list shortcuts in, or "none" to list shortcuts not in a folder.
# @flag --folders                           List folders instead of shortcuts.
# @flag --show-identifiers                  Show identifiers with each result.
# @flag -h --help                           Show help information.
list() {
    :;
}
# }} shortcuts list

# {{ shortcuts view
# @cmd View a shortcut in Shortcuts.
# @flag -h --help    Show help information.
# @arg shortcut-name[`_choice_shortcut`]
view() {
    :;
}
# }} shortcuts view

# {{ shortcuts sign
# @cmd Sign a shortcut file.
# @option -m --mode[anyone|people-who-know-me] <mode>  The signing mode.
# @option -i --input <input>      The shortcut file to sign.
# @option -o --output <output>    Output path for the signed shortcut file.
# @flag -h --help                 Show help information.
# @arg input!
# @arg output!
sign() {
    :;
}
# }} shortcuts sign

_choice_shortcut() {
    shortcuts list   
}

command eval "$(argc --argc-eval "$0" "$@")"