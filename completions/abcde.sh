#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -1                                     Encode the whole CD in a single file.
# @option -a[cddb|cue|read|getalbumart|embedalbumart|normalize|encode|tag|move|replaygain|playlist|clean] <actions>  Comma-delimited list of actions to perform.
# @flag -b                                     Enable batch mode normalization.
# @flag -B                                     Enable automatic embedding of album art with certain containers.
# @option -c <filename>                        Specifies an additional configuration file to parse.
# @option -C <discid>                          Allows you to resume a session for discid when you no longer have the CD available (abcde will automatically resume if you still have the CD in the drive).
# @option -d <devicename | filename>           CD-ROM block device that contains audio tracks to be read.
# @flag -D                                     Capture debugging information (you'll want to redirect this - try 'abcde -D 2>logfile')
# @flag -e                                     Erase information about encoded tracks from the internal status file, to enable other encodings if the wav files have been kept.
# @flag -f                                     Force the removal of the temporary ABCDETEMPDIR directory, even when we have not finished.
# @flag -g                                     Enable lame's --nogap option.
# @flag -G                                     Download album art using the getalbumart function.
# @flag -h                                     Get help information.
# @option -j <number>                          Start [number] encoder processes at once.
# @flag -k                                     Keep the wav files after encoding.
# @flag -l                                     Use the low-diskspace algorithm.
# @flag -L                                     Use a local CDDB repository.
# @flag -m                                     Create DOS-style playlists, modifying the resulting one by adding CRLF line endings.
# @flag -n                                     Do not query CDDB database.
# @flag -N                                     Non interactive mode.
# @option -o <[filetype][:filetypeoptions]>    Select output type.
# @flag -p                                     Pads track numbers with 0´s.
# @flag -P                                     Use Unix PIPES to read and encode in one step (USEPIPES).
# @option -r* <hosts>                          Remote encode on this comma-delimited list of machines using distmp3.
# @option -s* <fields>                         List, separated by commas, the fields to be shown in the CDDB parsed entries.
# @option -S <speed>                           Set the speed of the CD drive.
# @option -t <number>                          Start the numbering of the tracks at a given number.
# @option -T <number>                          Same as -t but changes also the internal (tag) numbering.
# @flag -U                                     Set CDDBPROTO to version 5, so that we retrieve ISO-8859-15 encoded CDDB information, and we tag and add comments with Latin1 encoding.
# @flag -v                                     Show the version and exit
# @flag -V                                     Be more verbose.
# @flag -x                                     Eject the CD when all tracks have been read.
# @option -X <cue2discid>                      Use an alternative "cue2discid" implementation.
# @option -w <comment>                         Add a comment to the tracks ripped from the CD.
# @option -W <number>                          Concatenate CD´s.
# @flag -z                                     DEBUG mode: it will rip, using cdparanoia, the very first second of each track and proceed with the actions requested very quickly, also providing some "hidden" information about what happens on the background.
# @arg tracks*

command eval "$(argc --argc-eval "$0" "$@")"