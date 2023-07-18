#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -b --blocks                              Force block output
# @flag --help                                   Prints help information
# @flag -m --mirror                              Display a mirror of the original image
# @flag -n --name                                Output the name of the file before displaying
# @flag -1 --once                                Only loop once through the animation
# @flag -r --recursive                           Recurse down directories if passed one
# @flag -s --static                              Show only first frame of gif
# @flag -t --transparent                         Display transparent image with transparent background
# @flag -V --version                             Prints version information
# @option -f --frame-rate <frames-per-second>    Play gif at the given frame rate
# @option -h --height <height>                   Resize the image to a provided height
# @option -w --width <width>                     Resize the image to a provided width
# @arg file+                                     The image to be displayed

command eval "$(argc --argc-eval "$0" "$@")"