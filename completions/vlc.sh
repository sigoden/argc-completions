#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --audio                                    Enable audio (default enabled)
# @flag --no-audio                                 Enable audio (default enabled)
# @option --force-dolby-surround[`_choice_dolby_surround`] <value>  Force detection of Dolby Surround
# @option --audio-replay-gain-mode[none|track|album]  Replay gain mode
# @option --audio-replay-gain-preamp <float>       Replay preamp
# @option --audio-replay-gain-default <float>      Default replay gain
# @flag --audio-time-stretch                       Enable time stretching audio (default enabled)
# @flag --no-audio-time-stretch                    Enable time stretching audio (default enabled)
# @option --audio-filter <string>                  Audio filters
# @option --audio-visual[any|glspectrum|visual|none]  Audio visualizations
# @flag -f                                         Fullscreen video output (default disabled)
# @flag --fullscreen                               Fullscreen video output (default disabled)
# @flag --no-fullscreen                            Fullscreen video output (default disabled)
# @flag --video-on-top                             Always on top (default disabled)
# @flag --no-video-on-top                          Always on top (default disabled)
# @flag --video-wallpaper                          Enable wallpaper mode (default disabled)
# @flag --no-video-wallpaper                       Enable wallpaper mode (default disabled)
# @flag --video-title-show                         Show media title on video (default enabled)
# @flag --no-video-title-show                      Show media title on video (default enabled)
# @option --video-title-timeout <integer>          Show video title for x milliseconds
# @option --video-title-position[`_choice_title_position`] <value>  Position of video title
# @option --mouse-hide-timeout <integer>           Hide cursor and fullscreen controller after x milliseconds
# @option --snapshot-path <string>                 Video snapshot directory (or filename)
# @option --snapshot-prefix <string>               Video snapshot file prefix
# @option --snapshot-format[png|jpg|tiff]          Video snapshot format
# @flag --snapshot-preview                         Display video snapshot preview (default enabled)
# @flag --no-snapshot-preview                      Display video snapshot preview (default enabled)
# @flag --snapshot-sequential                      Use sequential numbers instead of timestamps (default disabled)
# @flag --no-snapshot-sequential                   Use sequential numbers instead of timestamps (default disabled)
# @option --crop <string>                          Video cropping
# @option --custom-crop-ratios <string>            Custom crop ratios list
# @option --aspect-ratio <string>                  Source aspect ratio
# @flag --autoscale                                Video Auto Scaling (default enabled)
# @flag --no-autoscale                             Video Auto Scaling (default enabled)
# @option --custom-aspect-ratios <string>          Custom aspect ratios list
# @option --deinterlace <{0 (Off) -1 <value> # Deinterlace # [`_choice_deinterlace`]>
# @option --deinterlace-mode[auto|discard|blend|mean|bob|linear|x|yadif|yadif2x|phosphor|ivtc]  Deinterlace mode
# @option --video-filter <string>                  Video filter module
# @option --video-splitter <string>                Video splitter module
# @flag --spu                                      Enable sub-pictures (default enabled)
# @flag --no-spu                                   Enable sub-pictures (default enabled)
# @flag --osd                                      On Screen Display (default enabled)
# @flag --no-osd                                   On Screen Display (default enabled)
# @option --sub-file <string>                      Use subtitle file
# @flag --sub-autodetect-file                      Autodetect subtitle files (default enabled)
# @flag --no-sub-autodetect-file                   Autodetect subtitle files (default enabled)
# @option --sub-text-scale <integer [10 .. 500]>   Subtitles text scaling factor
# @option --sub-source <string>                    Subpictures source module
# @option --sub-filter <string>                    Subpictures filter module
# @option --audio-language <string>                Audio language
# @option --sub-language <string>                  Subtitle language
# @option --menu-language <string>                 Menu language
# @option --preferred-resolution[`_choice_resolution`] <value>  Preferred video resolution
# @option --input-repeat <integer [0 .. 65535]>    Input repetitions
# @flag --input-fast-seek                          Fast seek (default disabled)
# @flag --no-input-fast-seek                       Fast seek (default disabled)
# @option --rate <float>                           Playback speed
# @option --dvd <string>                           DVD device
# @option --vcd <string>                           VCD device
# @option --input-title-format <string>            Change title according to current media
# @option --stream-filter <string>                 Stream filter module
# @flag -Z                                         Play files randomly forever (default disabled)
# @flag --random                                   Play files randomly forever (default disabled)
# @flag --no-random                                Play files randomly forever (default disabled)
# @flag -L                                         Repeat all (default disabled)
# @flag --loop                                     Repeat all (default disabled)
# @flag --no-loop                                  Repeat all (default disabled)
# @flag -R                                         Repeat current item (default disabled)
# @flag --repeat                                   Repeat current item (default disabled)
# @flag --no-repeat                                Repeat current item (default disabled)
# @flag --play-and-exit                            Play and exit (default disabled)
# @flag --no-play-and-exit                         Play and exit (default disabled)
# @flag --play-and-stop                            Play and stop (default disabled)
# @flag --no-play-and-stop                         Play and stop (default disabled)
# @flag --start-paused                             Start paused (default disabled)
# @flag --no-start-paused                          Start paused (default disabled)
# @flag --playlist-autostart                       Auto start (default enabled)
# @flag --no-playlist-autostart                    Auto start (default enabled)
# @flag --playlist-cork                            Pause on audio communication (default enabled)
# @flag --no-playlist-cork                         Pause on audio communication (default enabled)
# @flag --media-library                            Use media library (default disabled)
# @flag --no-media-library                         Use media library (default disabled)
# @flag --playlist-tree                            Display playlist tree (default disabled)
# @flag --no-playlist-tree                         Display playlist tree (default disabled)
# @option --open <string>                          Default stream
# @flag --auto-preparse                            Automatically preparse items (default enabled)
# @flag --no-auto-preparse                         Automatically preparse items (default enabled)
# @option --preparse-timeout <integer>             Preparsing timeout
# @flag --metadata-network-access                  Allow metadata network access (default disabled)
# @flag --no-metadata-network-access               Allow metadata network access (default disabled)
# @option --recursive[none|collapse|expand]        Subdirectory behavior
# @option --ignore-filetypes <string>              Ignored extensions
# @flag --show-hiddenfiles                         Show hidden files (default disabled)
# @flag --no-show-hiddenfiles                      Show hidden files (default disabled)
# @option -v --verbose[0|1|2] <integer>            Verbosity
# @option --pidfile <string>                       Write process id to file
# @flag --advanced                                 Show advanced options (default disabled)
# @flag --no-advanced                              Show advanced options (default disabled)
# @flag --interact                                 Interface interaction (default enabled)
# @flag --no-interact                              Interface interaction (default enabled)
# @option -I --intf <string>                       Interface module
# @option --extraintf <string>                     Extra interface modules
# @option --control <string>                       Control interfaces
# @option --hotkeys-y-wheel-mode[`_choice_wheel_mode`] <value>  Mouse wheel vertical axis control
# @option --hotkeys-x-wheel-mode[`_choice_wheel_mode`] <value>  Mouse wheel horizontal axis control
# @option --global-key-toggle-fullscreen <string>  Fullscreen
# @option --key-toggle-fullscreen <string>         Fullscreen
# @option --global-key-leave-fullscreen <string>   Exit fullscreen
# @option --key-leave-fullscreen <string>          Exit fullscreen
# @option --global-key-play-pause <string>         Play/Pause
# @option --key-play-pause <string>                Play/Pause
# @option --global-key-faster <string>             Faster
# @option --key-faster <string>                    Faster
# @option --global-key-slower <string>             Slower
# @option --key-slower <string>                    Slower
# @option --global-key-rate-normal <string>        Normal rate
# @option --key-rate-normal <string>               Normal rate
# @option --global-key-rate-faster-fine <string>   Faster (fine)
# @option --key-rate-faster-fine <string>          Faster (fine)
# @option --global-key-rate-slower-fine <string>   Slower (fine)
# @option --key-rate-slower-fine <string>          Slower (fine)
# @option --global-key-next <string>               Next
# @option --key-next <string>                      Next
# @option --global-key-prev <string>               Previous
# @option --key-prev <string>                      Previous
# @option --global-key-stop <string>               Stop
# @option --key-stop <string>                      Stop Very short backwards jump Very short forward jump
# @option --global-key-frame-next <string>         Next frame
# @option --key-frame-next <string>                Next frame
# @option --global-key-quit <string>               Quit
# @option --key-quit <string>                      Quit
# @option --global-key-vol-up <string>             Volume up
# @option --key-vol-up <string>                    Volume up
# @option --global-key-vol-down <string>           Volume down
# @option --key-vol-down <string>                  Volume down
# @option --global-key-vol-mute <string>           Mute
# @option --key-vol-mute <string>                  Mute
# @option --global-key-audio-track <string>        Cycle audio track
# @option --key-audio-track <string>               Cycle audio track
# @option --global-key-audiodevice-cycle <string>  Cycle through audio devices
# @option --key-audiodevice-cycle <string>         Cycle through audio devices
# @option --global-key-subtitle-revtrack <string>  Cycle subtitle track in reverse order
# @option --key-subtitle-revtrack <string>         Cycle subtitle track in reverse order
# @option --global-key-subtitle-track <string>     Cycle subtitle track
# @option --key-subtitle-track <string>            Cycle subtitle track
# @option --global-key-subtitle-toggle <string>    Toggle subtitles
# @option --key-subtitle-toggle <string>           Toggle subtitles
# @option --global-key-program-sid-next <string>   Cycle next program Service ID
# @option --key-program-sid-next <string>          Cycle next program Service ID
# @option --global-key-program-sid-prev <string>   Cycle previous program Service ID
# @option --key-program-sid-prev <string>          Cycle previous program Service ID
# @option --global-key-aspect-ratio <string>       Cycle source aspect ratio
# @option --key-aspect-ratio <string>              Cycle source aspect ratio
# @option --global-key-crop <string>               Cycle video crop
# @option --key-crop <string>                      Cycle video crop
# @option --global-key-toggle-autoscale <string>   Toggle autoscaling
# @option --key-toggle-autoscale <string>          Toggle autoscaling
# @option --global-key-incr-scalefactor <string>   Increase scale factor
# @option --key-incr-scalefactor <string>          Increase scale factor
# @option --global-key-decr-scalefactor <string>   Decrease scale factor
# @option --key-decr-scalefactor <string>          Decrease scale factor
# @option --global-key-deinterlace <string>        Toggle deinterlacing
# @option --key-deinterlace <string>               Toggle deinterlacing
# @option --global-key-deinterlace-mode <string>   Cycle deinterlace modes
# @option --key-deinterlace-mode <string>          Cycle deinterlace modes
# @option --global-key-intf-show <string>          Show controller in fullscreen
# @option --key-intf-show <string>                 Show controller in fullscreen
# @option --global-key-wallpaper <string>          Toggle wallpaper mode in video output
# @option --key-wallpaper <string>                 Toggle wallpaper mode in video output
# @option --global-key-random <string>             Random
# @option --key-random <string>                    Random
# @option --global-key-loop <string>               Normal/Loop/Repeat
# @option --key-loop <string>                      Normal/Loop/Repeat
# @option --global-key-zoom-quarter <string>       1:4 Quarter
# @option --key-zoom-quarter <string>              1:4 Quarter
# @option --global-key-zoom-half <string>          1:2 Half
# @option --key-zoom-half <string>                 1:2 Half
# @option --global-key-zoom-original <string>      1:1 Original
# @option --key-zoom-original <string>             1:1 Original
# @option --global-key-zoom-double <string>        2:1 Double
# @option --key-zoom-double <string>               2:1 Double
# @option --extrashort-jump-size <integer>         Very short jump length
# @option --short-jump-size <integer>              Short jump length
# @option --medium-jump-size <integer>             Medium jump length
# @option --long-jump-size <integer>               Long jump length
# @option --bookmark1 <string>                     Playlist bookmark 1
# @option --bookmark2 <string>                     Playlist bookmark 2
# @option --bookmark3 <string>                     Playlist bookmark 3
# @option --bookmark4 <string>                     Playlist bookmark 4
# @option --bookmark5 <string>                     Playlist bookmark 5
# @option --bookmark6 <string>                     Playlist bookmark 6
# @option --bookmark7 <string>                     Playlist bookmark 7
# @option --bookmark8 <string>                     Playlist bookmark 8
# @option --bookmark9 <string>                     Playlist bookmark 9
# @option --bookmark10 <string>                    Playlist bookmark 10
# @flag -h                                         print help for VLC (can be combined with --advanced and --help-verbose) (default disabled)
# @flag --help                                     print help for VLC (can be combined with --advanced and --help-verbose) (default disabled)
# @flag --no-help                                  print help for VLC (can be combined with --advanced and --help-verbose) (default disabled)
# @flag -H                                         Exhaustive help for VLC and its modules (default disabled)
# @flag --full-help                                Exhaustive help for VLC and its modules (default disabled)
# @flag --no-full-help                             Exhaustive help for VLC and its modules (default disabled)
# @flag --longhelp                                 print help for VLC and all its modules (can be combined with --advanced and --help-verbose) (default disabled)
# @flag --no-longhelp                              print help for VLC and all its modules (can be combined with --advanced and --help-verbose) (default disabled)
# @flag --help-verbose                             ask for extra verbosity when displaying help (default disabled)
# @flag --no-help-verbose                          ask for extra verbosity when displaying help (default disabled)
# @flag -l                                         print a list of available modules (default disabled)
# @flag --list                                     print a list of available modules (default disabled)
# @flag --no-list                                  print a list of available modules (default disabled)
# @flag --list-verbose                             print a list of available modules with extra detail (default disabled)
# @flag --no-list-verbose                          print a list of available modules with extra detail (default disabled)
# @option -p --module <string>                     print help on a specific module (can be combined with --advanced and --help-verbose).
# @flag --ignore-config                            no configuration option will be loaded nor saved to config file (default enabled)
# @flag --no-ignore-config                         no configuration option will be loaded nor saved to config file (default enabled)
# @flag --reset-config                             reset the current config to the default values (default disabled)
# @flag --no-reset-config                          reset the current config to the default values (default disabled)
# @flag --reset-plugins-cache                      resets the current plugins cache (default disabled)
# @flag --no-reset-plugins-cache                   resets the current plugins cache (default disabled)
# @flag --version                                  print version information (default disabled)
# @flag --no-version                               print version information (default disabled)
# @option --config <string>                        use alternate config file
# @option --global-key-jump-*[`_choice_key_jump`]
# @option --key-jump-*[`_choice_key_jump`]
# @arg stream*[`_choice_stream`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_dolby_surround() {
    cat <<-'EOF'
0	Auto
1	On
2	Off
EOF
}

_choice_title_position() {
    cat <<-'EOF'
0	Center
1	Left
2	Right
4	Top
8	Bottom
5	Top-Left
6	Top-Right
9	Bottom-Left
10	Bottom-Right
EOF
}

_choice_resolution() {
    cat <<-'EOF'
-1	Best available
1080	Full HD (1080p)
720	HD (720p)
576	Standard Definition (576 or 480 lines)
360	Low Definition (360 lines)
240	Very Low Definition (240 lines)
EOF
}

_choice_wheel_mode() {
    cat <<-'EOF'
-1	Ignore
0	Volume control
2	Position control
3	Position control reversed
EOF
}

_choice_key_jump() {
    cat <<-'EOF'
-extrashort	Very short backwards jump
+extrashort	Very short forward jump
-short	Short backwards jump
+short	Short forward jump
-medium	Medium backwards jump
+medium	Medium forward jump
-long	Long backwards jump
+long	Long forward jump
EOF
}

_choice_stream() {
    if [[ "$ARGC_CWORD" == "file://"* ]]; then
        _argc_util_comp_path 
    else
        cat <<-'EOF' | sed 's/;;/\x00\t/'
file://;;Plain media file
http://;;HTTP URL
ftp://;;FTP URL
mms://;;MMS URL
screen://;;Screen capture
dvd://;;DVD device
vcd://;;VCD device
cdda://;;Audio CD device
udp://;;UDP stream sent by a streaming server
vlc://;;VLC control
EOF
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"