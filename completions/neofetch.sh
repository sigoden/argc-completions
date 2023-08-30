#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --disable[`_choice_infoname`] <infoname>  Allows you to disable an info line from appearing in the output.
# @option --title_fqdn[on|off]                    Hide/Show Fully Qualified Domain Name in title.
# @option --package_managers[on|tiny|off] <on|off>  Hide/Show Package Manager names .
# @option --os_arch[on|off]                       Hide/Show OS architecture.
# @option --speed_type[current|min|max|bios|scaling_current|scaling_min|scaling_max] <type>  Change the type of cpu speed to display.
# @option --speed_shorthand[on|off]               Whether or not to show decimals in CPU speed.
# @option --cpu_brand[on|off]                     Enable/Disable CPU brand in output.
# @option --cpu_cores[logical|physical|off] <type>  Whether or not to display the number of CPU cores Possible values: logical, physical, off
# @option --cpu_speed[on|off]                     Hide/Show cpu speed.
# @option --cpu_temp[C|F|off] <C/F/off>           Hide/Show cpu temperature.
# @option --distro_shorthand[on|tiny|off] <on|off>  Shorten the output of distro
# @option --kernel_shorthand[on|off]              Shorten the output of kernel
# @option --uptime_shorthand[on|tiny|off] <on|off>  Shorten the output of uptime
# @option --refresh_rate[on|off]                  Whether to display the refresh rate of each monitor Unsupported on Windows
# @option --gpu_brand[on|off]                     Enable/Disable GPU brand in output.
# @option --gpu_type[all|dedicated|integrated] <type>  Which GPU to display.
# @option --de_version[on|off]                    Show/Hide Desktop Environment version
# @option --gtk_shorthand[on|off]                 Shorten output of gtk theme/icons
# @option --gtk2[on|off]                          Enable/Disable gtk2 theme/font/icons output
# @option --gtk3[on|off]                          Enable/Disable gtk3 theme/font/icons output
# @option --shell_path[on|off]                    Enable/Disable showing $SHELL path
# @option --shell_version[on|off]                 Enable/Disable showing $SHELL version
# @option --disk_show* <disk-path>                Which disks to display.
# @option --disk_subtitle[`_choice_disk_subtitle`] <type>  What information to append to the Disk subtitle.
# @option --disk_percent[on|off]                  Hide/Show disk percent.
# @option --ip_host <url>                         URL to query for public IP
# @option --ip_timeout <int>                      Public IP timeout (in seconds).
# @option --song_format <format>                  Print the song data in a specific format (see config file).
# @option --song_shorthand[on|off]                Print the Artist/Album/Title on separate lines.
# @option --memory_percent[on|off]                Display memory percentage.
# @option --memory_unit[kib|mib|gib] <kib/mib/gib>  Memory output unit.
# @option --music_player <player-name>            Manually specify a player to use.
# @flag --colors                                  x x x x x x  Changes the text colors in this order: title, @, underline, subtitle, colon, info
# @option --underline[on|off]                     Enable/Disable the underline.
# @option --underline_char <char>                 Character to use when underlining title
# @option --bold[on|off]                          Enable/Disable bold text
# @option --separator <string>                    Changes the default ':' separator to the specified string.
# @option --color_blocks[on|off]                  Enable/Disable the color blocks
# @option --col_offset <auto/num>                 Left-padding of color blocks
# @option --block_width <num>                     Width of color blocks in spaces
# @option --block_height <num>                    Height of color blocks in lines
# @option --block_range <num> <num>               Range of colors to print as blocks
# @option --bar_char <elapsed char> <total char>  Characters to use when drawing bars.
# @option --bar_border[on|off]                    Whether or not to surround the bar with '[]'
# @option --bar_length <num>                      Length in spaces to make the bars.
# @option --bar_colors[elapsed|total] <num> <num>  Colors to make the bar.
# @option --cpu_display[bar|infobar|barinfo|off] <mode>  Bar mode.
# @option --memory_display[bar|infobar|barinfo|off] <mode>  Bar mode.
# @option --battery_display[bar|infobar|barinfo|off] <mode>  Bar mode.
# @option --disk_display[bar|infobar|barinfo|off] <mode>  Bar mode.
# @option --backend[ascii|caca|chafa|jp2a|iterm2|off|sixel|tycat|w3m|kitty] <backend>  Which image backend to use.
# @option --source[`_choice_source`] <source>     Which image or ascii file to use.
# @option --ascii <source>                        Shortcut to use 'ascii' backend.
# @option --caca[`_choice_source`] <source>       Shortcut to use 'caca' backend.
# @option --chafa[`_choice_source`] <source>      Shortcut to use 'chafa' backend.
# @option --iterm2[`_choice_source`] <source>     Shortcut to use 'iterm2' backend.
# @option --jp2a[`_choice_source`] <source>       Shortcut to use 'jp2a' backend.
# @option --kitty[`_choice_source`] <source>      Shortcut to use 'kitty' backend.
# @option --pot[`_choice_source`] <source>        Shortcut to use 'pot' backend.
# @option --pixterm[`_choice_source`] <source>    Shortcut to use 'pixterm' backend.
# @option --sixel[`_choice_source`] <source>      Shortcut to use 'sixel' backend.
# @option --termpix[`_choice_source`] <source>    Shortcut to use 'termpix' backend.
# @option --tycat[`_choice_source`] <source>      Shortcut to use 'tycat' backend.
# @option --w3m[`_choice_source`] <source>        Shortcut to use 'w3m' backend.
# @flag --off                                     Shortcut to use 'off' backend (Disable ascii art).
# @flag --ascii_colors                            x x x x x x  Colors to print the ascii art
# @option --ascii_distro <distro>                 Which Distro's ascii art to print
# @option --ascii_bold[on|off]                    Whether or not to bold the ascii logo.
# @flag -L --logo                                 Hide the info text and only show the ascii logo.
# @flag --loop                                    Redraw the image constantly until Ctrl+C is used.
# @option --size[auto|00px|00%|none]              00px | --size 00%  How to size the image.
# @option --crop_mode[normal|fit|fill] <mode>     Which crop mode to use Takes the values: normal, fit, fill
# @option --crop_offset[northwest|north|northeast|west|center|east|southwest|south|southeast] <value>  Change the crop offset for normal mode.
# @option --xoffset <px>                          How close the image will be to the left edge of the window.
# @option --yoffset <px>                          How close the image will be to the top edge of the window.
# @option --bg_color <color>                      Background color to display behind transparent image.
# @option --gap <num>                             Gap between image and text.
# @flag --clean                                   Delete cached files and thumbnails.
# @option --config </path/to/config>              Specify a path to a custom config file
# @flag --no_config                               Don't create the user config file.
# @flag --print_config                            Print the default config file to stdout.
# @flag --stdout                                  Turn off all colors and disables any ASCII/image backend.
# @flag --help                                    Print this text and exit
# @flag --version                                 Show neofetch version
# @flag -v                                        Display error messages.
# @flag -vv                                       Display a verbose log for error reporting.
# @flag --gen-man                                 Generate a manpage for Neofetch in your PWD.
# @arg func_name[`_choice_infoname`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_infoname() {
    printf "%s\n" os host kernel uptime packages shell term cpu gpu memory disk \
        battery resolution wm de theme wm_theme icons
}

_choice_disk_subtitle() {
    cat <<-'EOF'
name	shows the disk's name
mount	shows the disk's mount point
dir	shows the basename of the disks's path
none	shows only 'Disk' or the configured title
EOF
}

_choice_source() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    printf "%s\n" auto ascii wallpaper,
}

command eval "$(argc --argc-eval "$0" "$@")"