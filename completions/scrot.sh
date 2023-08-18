#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --autoselect <X,Y,W,H>    Non-interactively choose a rectangle starting at position X,Y and of W by H resolution.
# @flag -b --border                    When selecting a window, grab the WM's border too.
# @option -C --class <NAME>            NAME is a window class name.
# @flag -c --count                     Display a countdown when used with -d.
# @option -D --display                 DISPLAY is the display to use; see X(7).
# @option -d --delay <SEC>             Wait SEC seconds before taking a shot.
# @option -e --exec <CMD>              Execute CMD on the saved image.
# @flag -F --file                      File name.
# @flag -f --freeze                    Freeze the screen when -s is used.
# @flag -h --help                      Display help and exit.
# @flag -i --ignorekeyboard            Don't exit for keyboard input.
# @option -k --stack <OPT>             Capture stack/overlapped windows and join them.
# @option -l --line <STYLE>            STYLE indicates the style of the line when the -s option is used; see SELECTION STYLE.
# @flag -m --multidisp                 For multiple heads, screenshot all of them in order.
# @option -n --note <OPTS>             OPTS is a collection of options which specify notes to bake into the image.
# @flag -o --overwrite                 By default scrot does not overwrite the output FILE, use this option to enable it.
# @flag -p --pointer                   Capture the mouse pointer.
# @option -q --quality <NUM>           NUM must be between 1 and 100.
# @option -S --script <CMD>            CMD is an imlib2 script.
# @option -s --select <OPT>            Interactively select a window or rectangle with the mouse, use the arrow keys to resize.
# @option -t --thumb[10|25|320x240|500x200] <NUM | GEOM>  Also generate a thumbnail.
# @flag -u --focused                   Use the currently focused window.
# @flag -v --version                   Output version information and exit.
# @flag -z --silent                    Prevent beeping.
# @arg file

command eval "$(argc --argc-eval "$0" "$@")"