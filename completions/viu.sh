#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -w --width <width>                     Resize the image to a provided width
# @option -h --height <height>                   Resize the image to a provided height
# @option -x <x>                                 X offset [default: 0]
# @option -y <y>                                 Y offset [default: 0]
# @flag -a --absolute-offset                     Make the x and y offset be relative to the top left terminal corner.
# @flag -r --recursive                           Recurse down directories if passed one
# @flag -b --blocks                              Force block output
# @flag -n --name                                Output the name of the file before displaying
# @flag -t --transparent                         Display transparent images with transparent background
# @option -f --frame-rate <frames-per-second>    Play the gif at a given frame rate
# @flag -1 --once                                Loop only once through the gif
# @flag -s --static                              Show only the first frame of the gif
# @flag -H --help                                Print help information
# @flag -V --version                             Print version
# @arg file*                                     The images to be displayed.

command eval "$(argc --argc-eval "$0" "$@")"