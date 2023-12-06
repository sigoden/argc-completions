#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta combine-shorts
# @option -a --autoselect <X,Y,W,H>    Non-interactively choose a rectangle starting at position X,Y and of W by H resolution.
# @flag -b --border                    When selecting a window, grab the WM's border too.
# @option -C --class <NAME>            NAME is a window class name.
# @flag -c --count                     Display a countdown when used with -d.
# @option -D --display                 DISPLAY is the display to use; see X(7).
# @option -d --delay <[b]SEC>          Wait SEC seconds before taking a shot.
# @option -e --exec <CMD>              Execute CMD on the saved image.
# @option -F --file                    Specify the output file.
# @flag -f --freeze                    Freeze the screen when -s is used.
# @flag -h --help                      Display help and exit.
# @flag -i --ignorekeyboard            Don't exit for keyboard input.
# @option -k --stack <OPT>             Capture stack/overlapped windows and join them.
# @option -l --line <STYLE>            STYLE indicates the style of the line when the -s option is used; see SELECTION STYLE.
# @option -M --monitor <NUM>           Capture Xinerama monitor number NUM.
# @flag -m --multidisp                 For multiple heads, screenshot all of them in order.
# @flag -o --overwrite                 By default scrot does not overwrite the output FILE, use this option to enable it.
# @flag -p --pointer                   Capture the mouse pointer.
# @option -q --quality <NUM>           NUM must be within [1, 100].
# @option -s --select <OPTS>           Interactively select a window or rectangle with the mouse, use the arrow keys to resize.
# @option -t --thumb[10|25|320x240|500x200|100x0|0x480] <%> <|>  WxH Also generate a thumbnail.
# @flag -u --focused                   Use the currently focused window.
# @flag -v --version                   Output version information and exit.
# @option -w --window <WID>            Window identifier to capture.
# @option -Z --compression <LVL>       Compression level to use, LVL must be within [0, 9].
# @flag -z --silent                    Prevent beeping.
# @option --format <FMT>               Specify the output file format.
# @arg file

command eval "$(argc --argc-eval "$0" "$@")"