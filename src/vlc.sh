_patch_help() {
    $@ --help 2>/dev/null | \
    sed \
        -e '1,/^\s*core program/ d' \
        -e '/--global-key-jump/,+1 d' \
        -e '/--key-jump/ d' \

}

_patch_table() {
    _patch_table_edit_options \
        '--deinterlace(<value>);[`_choice_deinterlace`]' \
        '--force-dolby-surround(<value>);[`_choice_dolby_surround`]' \
        '--hotkeys-x-wheel-mode(<value>);[`_choice_wheel_mode`]' \
        '--hotkeys-y-wheel-mode(<value>);[`_choice_wheel_mode`]' \
        '--preferred-resolution(<value>);[`_choice_resolution`]' \
        '--video-title-position(<value>);[`_choice_title_position`]' \
        ';;' \
        '--global-key-jump;-*[`_choice_key_jump`]' \
        '--key-jump;-*[`_choice_key_jump`]' \
    | \
    _patch_table_edit_arguments \
        ';;' \
        'stream;*[`_choice_stream`]' \

}

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

_choice_deinterlace() {
    cat <<-'EOF'
0	Off
-1	Automatic
1	On
EOF
}
