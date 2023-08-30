#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version                             version
# @flag -q --quiet                               quiet mode
# @flag -D --debug                               increase debugging output, ie.
# @option -c --config <FILE>                     config file to load
# @flag -C --print-config                        print the builtin default config to stdout e.g. 'conky -C > ~/.conkyrc' will create a new default config
# @flag -d --daemonize                           daemonize, fork to background
# @flag -h --help                                help
# @option -a --alignment[`_choice_alignment`]    text alignment on screen
# @option -X --display                           X11 display to use
# @option -m --xinerama-head <N>                 Xinerama monitor index (0=first)
# @option -f --font                              font to use
# @flag -o --own-window                          create own window to draw
# @flag -b --double-buffer                       double buffer (prevents flickering)
# @option -w --window-id <WIN_ID>                window id to draw
# @option -x <X>                                 x position
# @option -y <Y>                                 y position
# @option -t --text                              text to render, remember single quotes, like -t '$uptime'
# @option -u --interval <SECS>                   update interval
# @option -i <COUNT>                             number of times to update conky (and quit)
# @option -p --pause <SECS>                      pause for SECS seconds at startup before doing anything

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_alignment() {
    _argc_util_mode_kv _
    if [[ -z "$argc__kv_prefix" ]]; then
        printf "%s_\0\n" top bottom middle
    else
        printf "%s\n" left right middle
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"