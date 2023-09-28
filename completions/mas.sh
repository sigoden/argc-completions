#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ mas account
# @cmd Prints the primary account Apple ID
account() {
    :;
}
# }} mas account

# {{ mas home
# @cmd Opens MAS Preview app page in a browser
# @arg app[`_choice_app`]
home() {
    :;
}
# }} mas home

# {{ mas info
# @cmd Display app information from the Mac App Store
# @arg app[`_choice_app`]
info() {
    :;
}
# }} mas info

# {{ mas install
# @cmd Install from the Mac App Store
# @flag --force
# @arg app[`_choice_app`]
install() {
    :;
}
# }} mas install

# {{ mas list
# @cmd Lists apps from the Mac App Store which are currently installed
list() {
    :;
}
# }} mas list

# {{ mas lucky
# @cmd Install the first result from the Mac App Store
# @flag --force
# @arg name
lucky() {
    :;
}
# }} mas lucky

# {{ mas open
# @cmd Opens app page in AppStore.app
# @arg app[`_choice_app`]
open() {
    :;
}
# }} mas open

# {{ mas outdated
# @cmd Lists pending updates from the Mac App Store
outdated() {
    :;
}
# }} mas outdated

# {{ mas purchase
# @cmd Purchase and download free apps from the Mac App Store
# @arg app[`_choice_app`]
purchase() {
    :;
}
# }} mas purchase

# {{ mas reset
# @cmd Resets the Mac App Store
# @flag --debug
reset() {
    :;
}
# }} mas reset

# {{ mas search
# @cmd Search for apps from the Mac App Store
# @arg name
search() {
    :;
}
# }} mas search

# {{ mas signin
# @cmd Sign in to the Mac App Store
# @arg appleid
# @arg password
signin() {
    :;
}
# }} mas signin

# {{ mas signout
# @cmd Sign out of the Mac App Store
signout() {
    :;
}
# }} mas signout

# {{ mas uninstall
# @cmd Uninstall app installed from the Mac App Store
# @flag --dry-run
# @arg app[`_choice_app`]
uninstall() {
    :;
}
# }} mas uninstall

# {{ mas upgrade
# @cmd Upgrade outdated apps from the Mac App Store
upgrade() {
    :;
}
# }} mas upgrade

# {{ mas vendor
# @cmd Opens vendor's app page in a browser
# @arg app[`_choice_app`]
vendor() {
    :;
}
# }} mas vendor

# {{ mas version
# @cmd Print version number
version() {
    :;
}
# }} mas version

_choice_app() {
    mas list | sed 's/\s\+/\t/'
}

command eval "$(argc --argc-eval "$0" "$@")"