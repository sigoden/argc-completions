_patch_table() {
    _patch_table_edit_options \
        '--audio-codec;[opus|aac|flac|raw]' \
        '--audio-source;[output|mic]' \
        '--camera-facing;[front|back|external]' \
        '--display-orientation;[0|90|180|270|flip0|flip90|flip180|flip270]' \
        '--lock-video-orientation;[unlocked|initial|0|90|180|270]' \
        '--pause-on-exit;[true|false|if-error]' \
        '--record(<file>)' \
        '--record-format;[mp4|mkv|m4a|mka|opus|aac|flac|wav]' \
        '--record-orientation;[0|90|180|270]' \
        '--render-driver;[direct3d|opengl|opengles2|opengles|metal|software]' \
        '--serial;[`_choice_serial`]' \
        '--shortcut-mod;[lctrl|rctrl|lalt|ralt|lsuper|rsuper]' \
        '--verbosity;[verbose|debug|info|warn|error]' \
        '--video-codec;[h264|h265|av1]' \
        '--video-source;[display|camera]' \

}

_choice_serial() {
    adb devices | gawk '$2 == "device" {print $1}'
}
