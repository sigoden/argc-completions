#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --source <path-or-url>    path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings             print out messages in format good for machine parsing
# @flag --verbose                   display verbose output
# @flag --debug                     display debug output

# {{ asr version
# @cmd Show version
# @option --source <path-or-url>    path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings             print out messages in format good for machine parsing
# @flag --verbose                   display verbose output
# @flag --debug                     display debug output
version() {
    :;
}
# }} asr version

# {{ asr restore
# @cmd restores a disk image or volume to another volume (including a mounted disk image)
# @option --source <path-or-url>     path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings              print out messages in format good for machine parsing
# @flag --verbose                    display verbose output
# @flag --debug                      display debug output
# @option --target <target-path>     path to volume or mountpoint
# @flag --erase                      formats target volume
# @option --format <HFS+|HFSX>       target format when erasing (defaults to source)
# @flag --noprompt                   don't require confirmation on erase
# @flag --noverify                   don't checksum results
# @option --buffers <num>            number of buffers to use in block copy
# @option --buffersize <size>        size of buffers to use in block copy
# @option --csumbuffers <num>        number of buffers for the checksum if different
# @option --csumbuffersize <size>    size of buffers for the checksum if different
# @option --timeout <seconds>        max wait for stream in multicast client mode
# @flag --SHA256                     force asr to verify with a SHA2-256 hash
restore() {
    :;
}
# }} asr restore

# {{ asr server
# @cmd multicasts source over the network.
# @option --source <path-or-url>      path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings               print out messages in format good for machine parsing
# @flag --verbose                     display verbose output
# @flag --debug                       display debug output
# @option --interface <if>            Use 'if' as the interface for the server's outgoing stream
# @option --config <configuration>    server configuration file in plist format
server() {
    :;
}
# }} asr server

# {{ asr imagescan
# @cmd calculate checksums of the data in the provided image and store them in the image.
# @option --source <path-or-url>    path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings             print out messages in format good for machine parsing
# @flag --verbose                   display verbose output
# @flag --debug                     display debug output
# @flag --filechecksum              calculate file checksum
# @flag --nostream                  don't reorder file for multicast streaming
imagescan() {
    :;
}
# }} asr imagescan

# {{ asr info
# @cmd report the image metadata which was placed in the image by a previous use of the imagescan verb.
# @option --source <path-or-url>    path or url to disk image file, mountpoint, or web accessible disk image
# @flag --puppetstrings             print out messages in format good for machine parsing
# @flag --verbose                   display verbose output
# @flag --debug                     display debug output
# @flag --plist                     writes its output as an XML-formatted plist, suitable for parsing by another program.
info() {
    :;
}
# }} asr info

command eval "$(argc --argc-eval "$0" "$@")"