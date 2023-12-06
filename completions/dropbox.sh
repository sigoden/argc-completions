#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ dropbox autostart
# @cmd automatically start Dropbox at login
autostart() {
    :;
}

# {{{ dropbox autostart n
# @cmd Dropbox will not start automatically at login
autostart::n() {
    :;
}
# }}} dropbox autostart n

# {{{ dropbox autostart y
# @cmd Dropbox will start automatically at login (default)
autostart::y() {
    :;
}
# }}} dropbox autostart y
# }} dropbox autostart

# {{ dropbox exclude
# @cmd ignores/excludes a directory from syncing
exclude() {
    :;
}
# }} dropbox exclude

# {{ dropbox filestatus
# @cmd get current sync status of one or more files
# @flag -l --list    Prints out information in a format similar to ls.
# @flag -a --all     Do not ignore entries starting with "."
filestatus() {
    :;
}
# }} dropbox filestatus

# {{ dropbox lansync
# @cmd enables or disables LAN sync
lansync() {
    :;
}

# {{{ dropbox lansync y
# @cmd Dropbox will use LAN sync (default)
lansync::y() {
    :;
}
# }}} dropbox lansync y

# {{{ dropbox lansync n
# @cmd Dropbox will not use LAN sync
lansync::n() {
    :;
}
# }}} dropbox lansync n
# }} dropbox lansync

# {{ dropbox ls
# @cmd list directory contents with current sync status
ls() {
    :;
}
# }} dropbox ls

# {{ dropbox proxy
# @cmd set proxy settings for Dropbox
proxy() {
    :;
}
# }} dropbox proxy

# {{ dropbox puburl
# @cmd get public url of a file in your Dropbox's public folder
puburl() {
    :;
}
# }} dropbox puburl

# {{ dropbox running
# @cmd return whether Dropbox is running
running() {
    :;
}
# }} dropbox running

# {{ dropbox sharelink
# @cmd get a shared link for a file in your Dropbox
sharelink() {
    :;
}
# }} dropbox sharelink

# {{ dropbox start
# @cmd start dropboxd
# @flag -i --install    auto install dropboxd if not available on the system
start() {
    :;
}
# }} dropbox start

# {{ dropbox status
# @cmd get current status of the dropboxd
status() {
    :;
}
# }} dropbox status

# {{ dropbox stop
# @cmd stop dropboxd
stop() {
    :;
}
# }} dropbox stop

# {{ dropbox throttle
# @cmd set bandwidth limits for Dropbox
throttle() {
    :;
}
# }} dropbox throttle

# {{ dropbox update
# @cmd download latest version of dropbox
update() {
    :;
}
# }} dropbox update

# {{ dropbox version
# @cmd print version information for Dropbox
version() {
    :;
}
# }} dropbox version

command eval "$(argc --argc-eval "$0" "$@")"