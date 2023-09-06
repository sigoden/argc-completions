#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                     Show this help
# @flag --version                     Show package version
# @flag --no-pager                    Do not pipe output into a pager
# @flag --no-ask-password             Do not prompt for password
# @option -H --host <[USER@]HOST>     Operate on remote host
# @option -M --machine <CONTAINER>    Operate on local container
# @flag --no-convert                  Don't convert keyboard mappings

# {{ localectl status
# @cmd Show current locale settings
status() {
    :;
}
# }} localectl status

# {{ localectl set-locale
# @cmd Set system locale
# @arg loacle*[`_choice_locale`]
set-locale() {
    :;
}
# }} localectl set-locale

# {{ localectl list-locales
# @cmd Show known locales
list-locales() {
    :;
}
# }} localectl list-locales

# {{ localectl set-keymap
# @cmd Set console and X11 keyboard mappings
# @arg map*[`_choice_map`]
set-keymap() {
    :;
}
# }} localectl set-keymap

# {{ localectl list-keymaps
# @cmd Show known virtual console keyboard mappings
list-keymaps() {
    :;
}
# }} localectl list-keymaps

# {{ localectl set-x11-keymap
# @cmd Set X11 and console keyboard mappings
# @arg layout[`_choice_x11_layout`]
# @arg model[`_choice_x11_model`]
# @arg options*,[`_choice_x11_options`]
# @arg variant[`_choice_x11_variant`]
set-x11-keymap() {
    :;
}
# }} localectl set-x11-keymap

# {{ localectl list-x11-keymap-models
# @cmd Show known X11 keyboard mapping models
list-x11-keymap-models() {
    :;
}
# }} localectl list-x11-keymap-models

# {{ localectl list-x11-keymap-layouts
# @cmd Show known X11 keyboard mapping layouts
list-x11-keymap-layouts() {
    :;
}
# }} localectl list-x11-keymap-layouts

# {{ localectl list-x11-keymap-variants
# @cmd Show known X11 keyboard mapping variants
list-x11-keymap-variants() {
    :;
}
# }} localectl list-x11-keymap-variants

# {{ localectl list-x11-keymap-options
# @cmd Show known X11 keyboard mapping options
list-x11-keymap-options() {
    :;
}
# }} localectl list-x11-keymap-options

_choice_locale() {
    localectl list-locales
}

_choice_map() {
    localectl list-keymaps
}

_choice_x11_layout() {
    localectl list-x11-keymap-layouts
}

_choice_x11_model() {
    localectl list-x11-keymap-models
}

_choice_x11_options() {
    localectl list-x11-keymap-options
}

_choice_x11_variant() {
    localectl list-x11-keymap-variants
}

command eval "$(argc --argc-eval "$0" "$@")"