#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    show this help message and exit
# @flag --version    show program's version number and exit
# @arg rec-play-cat-upload-auth <rec,play,cat,upload,auth>

# {{ asciinema rec
# @cmd Record terminal session
# @flag -h --help         show this help message and exit
# @flag --stdin           enable stdin recording, disabled by default
# @flag --append          append to existing recording
# @flag --raw             save only raw stdout output
# @flag --overwrite       overwrite the file if it already exists
# @option -c --command    command to record, defaults to $SHELL
# @option -e --env        list of environment variables to capture, defaults to SHELL,TERM
# @option -t --title      title of the asciicast
# @option -i --idle-time-limit <IDLE_TIME_LIMIT>  limit recorded idle time to given number of seconds
# @flag -y --yes          answer "yes" to all prompts (e.g. upload confirmation)
# @flag -q --quiet        be quiet, suppress all notices/warnings (implies -y)
# @arg filename
rec() {
    :;
}
# }} asciinema rec

# {{ asciinema play
# @cmd Replay terminal session
# @flag -h --help       show this help message and exit
# @option -i --idle-time-limit <IDLE_TIME_LIMIT>  limit idle time during playback to given number of seconds
# @option -s --speed    playback speedup (can be fractional)
# @arg filename
play() {
    :;
}
# }} asciinema play

# {{ asciinema cat
# @cmd Print full output of terminal session
# @flag -h --help    show this help message and exit
# @arg filename
cat_() {
    :;
}
# }} asciinema cat

# {{ asciinema upload
# @cmd Upload locally saved terminal session to asciinema.org
# @flag -h --help    show this help message and exit
# @arg filename
upload() {
    :;
}
# }} asciinema upload

# {{ asciinema auth
# @cmd Manage recordings on asciinema.org account
# @flag -h --help    show this help message and exit
auth() {
    :;
}
# }} asciinema auth

command eval "$(argc --argc-eval "$0" "$@")"