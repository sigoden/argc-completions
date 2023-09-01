_patch_table() { 
    _patch_table_edit_options \
        '--audio-format;[best|aac|flac|mp3|m4a|opus|vorbis|wav]' \
        '--audio-quality;[0|1|2|3|4|5|6|7|8|9]' \
        '--convert-subs;[srt|ass|vtt|lrc]' \
        '--fixup;[`_choice_fixup`]' \
        '--format;[`_choice_format`]' \
        '--recode-video;[mp4|flv|ogg|webm|mkv|avi]' \
        '--sub-format;*/[ass|srt|best]' \
        '--sub-lang;[`_choice_sub_lang`]' \

}

_choice_format() {
    if [[ ${#argc__positionals[@]} -gt 0 ]]; then
        youtube-dl --list-formats "${argc__positionals[0]}" | sed 's/\(\S\+\) \+\(.*\)$/\1\t\2/'
    fi
}

_choice_sub_lang() {
    if [[ ${#argc__positionals[@]} -gt 0 ]]; then
        youtube-dl --list-subs "${argc__positionals[0]}" | sed 's/\(\S\+\) \+\(.*\)$/\1\t\2/'
    fi
}

_choice_fixup() {
    cat <<-'EOF'
never	do nothing
warn	only emit a warning
detect_or_warn	fix file if we can, warn otherwise
EOF
}
