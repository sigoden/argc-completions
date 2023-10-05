#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -v --verbose                        Give verbose output
# @flag -q --quiet                          Suppress status message
# @flag --no-status                         synonym for --quiet
# @option -h --host <host>                  Connect to server on <host>
# @option -P --password <password>          Connect to server using password <password>
# @option -p --port <port>                  Connect to server port <port>
# @option -f --format <format>              Print status with format <format>
# @flag -w --wait                           Wait for operation to finish (e.g. database update)
# @option -r --range <[<start>]:[<end>]>    Operate on a range (e.g. when loading a playlist)

# {{ mpc add
# @cmd Add a song to the queue
# @arg uri![`_choice_song`]
add() {
    :;
}
# }} mpc add

# {{ mpc crop
# @cmd Remove all but the currently playing song
crop() {
    :;
}
# }} mpc crop

# {{ mpc current
# @cmd Show the currently playing song
current() {
    :;
}
# }} mpc current

# {{ mpc del
# @cmd Remove a song from the queue
# @arg position!
del() {
    :;
}
# }} mpc del

# {{ mpc play
# @cmd Start playing at <position>
# @arg position
play() {
    :;
}
# }} mpc play

# {{ mpc next
# @cmd Play the next song in the queue
next() {
    :;
}
# }} mpc next

# {{ mpc prev
# @cmd Play the previous song in the queue
prev() {
    :;
}
# }} mpc prev

# {{ mpc pause
# @cmd Pauses the currently playing song
pause() {
    :;
}
# }} mpc pause

# {{ mpc pause-if-playing
# @cmd Pauses the currently playing song; exits with failure if not playing
pause-if-playing() {
    :;
}
# }} mpc pause-if-playing

# {{ mpc toggle
# @cmd Toggles Play/Pause, plays if stopped
toggle() {
    :;
}
# }} mpc toggle

# {{ mpc cdprev
# @cmd Compact disk player-like previous command
cdprev() {
    :;
}
# }} mpc cdprev

# {{ mpc stop
# @cmd Stop playback
stop() {
    :;
}
# }} mpc stop

# {{ mpc seek
# @cmd Seeks to the specified position
# @arg hh-mm-ss-0-100 <[+-][HH:MM:SS]|<0-100>%>
seek() {
    :;
}
# }} mpc seek

# {{ mpc seekthrough
# @cmd Seeks by an amount of time within the song and playlist
# @arg hh-mm-ss <[+-][HH:MM:SS]>
seekthrough() {
    :;
}
# }} mpc seekthrough

# {{ mpc clear
# @cmd Clear the queue
clear() {
    :;
}
# }} mpc clear

# {{ mpc outputs
# @cmd Show the current outputs
outputs() {
    :;
}
# }} mpc outputs

# {{ mpc enable
# @cmd Enable output(s)
# @arg only
# @arg output-or-name! <output # or name>
enable() {
    :;
}
# }} mpc enable

# {{ mpc disable
# @cmd Disable output(s)
# @arg only
# @arg output-or-name! <output # or name>
disable() {
    :;
}
# }} mpc disable

# {{ mpc toggleoutput
# @cmd Toggle output(s)
# @arg output-or-name! <output # or name>
toggleoutput() {
    :;
}
# }} mpc toggleoutput

# {{ mpc outputset
# @cmd Set output attributes
# @arg output-or-name! <output # or name>
# @arg name-value <<name>=<value>>
outputset() {
    :;
}
# }} mpc outputset

# {{ mpc queued
# @cmd Show the next queued song
queued() {
    :;
}
# }} mpc queued

# {{ mpc shuffle
# @cmd Shuffle the queue
shuffle() {
    :;
}
# }} mpc shuffle

# {{ mpc move
# @cmd Move song in queue
# @arg from!
# @arg to!
move() {
    :;
}
# }} mpc move

# {{ mpc playlist
# @cmd Print <playlist>
# @arg playlist[`_choice_playlist`]
playlist() {
    :;
}
# }} mpc playlist

# {{ mpc listall
# @cmd List all songs in the music dir
# @arg file
listall() {
    :;
}
# }} mpc listall

# {{ mpc ls
# @cmd List the contents of <directory>
# @arg directory
ls() {
    :;
}
# }} mpc ls

# {{ mpc lsplaylists
# @cmd List currently available playlists
lsplaylists() {
    :;
}
# }} mpc lsplaylists

# {{ mpc load
# @cmd Load <file> into the queue
# @arg file!
load() {
    :;
}
# }} mpc load

# {{ mpc insert
# @cmd Insert a song to the queue after the current track
# @arg uri![`_choice_song`]
insert() {
    :;
}
# }} mpc insert

# {{ mpc prio
# @cmd Change song priorities in the queue
# @arg prio!
# @arg position-range+ <position/range>
prio() {
    :;
}
# }} mpc prio

# {{ mpc save
# @cmd Save a queue as <file>
# @arg file!
save() {
    :;
}
# }} mpc save

# {{ mpc rm
# @cmd Remove a playlist
# @arg file!
rm() {
    :;
}
# }} mpc rm

# {{ mpc volume
# @cmd Set volume to <num> or adjusts by [+-]<num>
# @arg num <[+-]<num>>
volume() {
    :;
}
# }} mpc volume

# {{ mpc repeat
# @cmd Toggle repeat mode, or specify state
# @arg enum[on|off]
repeat() {
    :;
}
# }} mpc repeat

# {{ mpc random
# @cmd Toggle random mode, or specify state
# @arg enum[on|off]
random() {
    :;
}
# }} mpc random

# {{ mpc single
# @cmd Toggle single mode, or specify state
# @arg enum[on|once|off]
single() {
    :;
}
# }} mpc single

# {{ mpc consume
# @cmd Toggle consume mode, or specify state
# @arg enum[on|off]
consume() {
    :;
}
# }} mpc consume

# {{ mpc search
# @cmd Search for a song
# @arg type!
# @arg query!
search() {
    :;
}
# }} mpc search

# {{ mpc searchadd
# @cmd Search songs and add them to the queue
# @arg type!
# @arg query!
searchadd() {
    :;
}
# }} mpc searchadd

# {{ mpc find
# @cmd Find a song (exact match)
# @arg type!
# @arg query!
find() {
    :;
}
# }} mpc find

# {{ mpc findadd
# @cmd Find songs and add them to the queue
# @arg type!
# @arg query!
findadd() {
    :;
}
# }} mpc findadd

# {{ mpc searchplay
# @cmd Find and play a song in the queue
# @arg pattern!
searchplay() {
    :;
}
# }} mpc searchplay

# {{ mpc list
# @cmd Show all tags of <type>
# @arg type!
# @arg type-query <<type> <query>>
list() {
    :;
}
# }} mpc list

# {{ mpc crossfade
# @cmd Set and display crossfade settings
# @arg seconds
crossfade() {
    :;
}
# }} mpc crossfade

# {{ mpc clearerror
# @cmd Clear the current error
clearerror() {
    :;
}
# }} mpc clearerror

# {{ mpc mixrampdb
# @cmd Set and display mixrampdb settings
# @arg db
mixrampdb() {
    :;
}
# }} mpc mixrampdb

# {{ mpc mixrampdelay
# @cmd Set and display mixrampdelay settings
# @arg seconds
mixrampdelay() {
    :;
}
# }} mpc mixrampdelay

# {{ mpc update
# @cmd Scan music directory for updates
# @arg path
update() {
    :;
}
# }} mpc update

# {{ mpc rescan
# @cmd Rescan music directory (including unchanged files)
# @arg path
rescan() {
    :;
}
# }} mpc rescan

# {{ mpc sticker
# @cmd Sticker management
# @arg uri!
# @arg enum![get|set|list|delete|find]
# @arg args*
# @arg sticker
# @arg management
sticker() {
    :;
}
# }} mpc sticker

# {{ mpc stats
# @cmd Display statistics about MPD
stats() {
    :;
}
# }} mpc stats

# {{ mpc version
# @cmd Report version of MPD
version() {
    :;
}
# }} mpc version

# {{ mpc idle
# @cmd Idle until an event occurs
# @arg events*
idle() {
    :;
}
# }} mpc idle

# {{ mpc idleloop
# @cmd Continuously idle until an event occurs
# @arg events*
idleloop() {
    :;
}
# }} mpc idleloop

# {{ mpc replaygain
# @cmd Set or display the replay gain mode
# @arg enum[off|track|album]
replaygain() {
    :;
}
# }} mpc replaygain

# {{ mpc channels
# @cmd List the channels that other clients have subscribed to.
channels() {
    :;
}
# }} mpc channels

# {{ mpc sendmessage
# @cmd Send a message to the specified channel.
# @arg channel!
# @arg message!
sendmessage() {
    :;
}
# }} mpc sendmessage

# {{ mpc waitmessage
# @cmd Wait for at least one message on the specified channel.
# @arg channel!
waitmessage() {
    :;
}
# }} mpc waitmessage

# {{ mpc subscribe
# @cmd Subscribe to the specified channel and continuously receive messages.
# @arg channel!
subscribe() {
    :;
}
# }} mpc subscribe

# {{ mpc listneighbors
# @cmd List neighbors.
listneighbors() {
    :;
}
# }} mpc listneighbors

# {{ mpc mount
# @cmd List mounts or add a new mount.
# @arg mount-path-storage-uri <<mount-path> <storage-uri>>
mount() {
    :;
}
# }} mpc mount

# {{ mpc unmount
# @cmd Remove a mount.
# @arg mount-path!
unmount() {
    :;
}
# }} mpc unmount

# {{ mpc albumart
# @cmd Download album art for the given song and write to stdout.
# @arg uri!
albumart() {
    :;
}
# }} mpc albumart

# {{ mpc readpicture
# @cmd Download a picture from the given song and write to stdout.
# @arg uri!
readpicture() {
    :;
}
# }} mpc readpicture

_choice_song() {
    mpc listall
}

_choice_playlist() {
    mpc lsplaylists
}

command eval "$(argc --argc-eval "$0" "$@")"