_patch_help() { 
    $@ --help 2>/dev/null | \
    sed \
        -e '/^Getting help:/,/^$/ d' \
        -e '/^-?/,+1 c\-? -help topic      show help' \

}

_patch_table() { 
    _patch_table_dedup_options \
        '-s' \
    | \
    _patch_table_edit_options \
        '--help;[`_choice_help_topic`]' \
        '-ab;[16|32|64|128|192|256|320]' \
        '-acodec;[`_choice_codec`]' \
        '-af;*[`_choice_filter_kv`]' \
        '-ar;[22050|44100|48000]' \
        '-c;[`_choice_codec`]' \
        '-codec;[`_choice_codec`]' \
        '-f;[`_choice_format`]' \
        '-h;[`_choice_help_topic`]' \
        '-help;[`_choice_help_topic`]' \
        '-loglevel;[`_choice_loglevel`]' \
        '-scodec;[`_choice_codec`]' \
        '-sinks;*,[`_choice_device`]' \
        '-sources;*,[`_choice_device`]' \
        '-v;[`_choice_loglevel`]' \
        '-vcodec;[`_choice_codec`]' \
        '-vf;*[`_choice_filter_kv`]' \
    | \
    _patch_table_edit_arguments ';;' 'outfile...'
}

_choice_help_topic() {
    cat <<-'EOF' | _argc_util_comp_kv =
long;;Print advanced tool options in addition to the basic tool options.
full;;Print complete list of options
decoder=`_choice_decoder`;;Print detailed information about the decoder
encoder=`_choice_encoder`;;Print detailed information about the encoder
demuxer=`_choice_demuxer`;;Print detailed information about the demuxer
muxer=`_choice_muxer`;;Print detailed information about the muxer
filter=`_choice_filter_key`;;Print detailed information about the filter
bsf=`_choice_bsf`;;Print detailed information about the bitstream filter
protocol=`_choice_protocol`;;Print detailed information about the protocol
EOF
}

_choice_device() {
    ffmpeg -hide_banner -devices | tail -n +5 | sed 's/^.\{3\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_loglevel() {
    cat <<-'EOF'
quiet	Show nothing at all; be silent.
panic	Only show fatal errors which could lead the process to crash
fatal	Only show fatal errors.
error	Show all errors, including ones which can be recovered from.
warning	Show all warnings and errors.
info	Show informative messages during processing.
verbose	Same as "info", except more verbose.
debug	Show everything, including debugging information.
trace	
EOF
}

_choice_format() {
    ffmpeg -hide_banner -formats | tail -n +5 | sed 's/^.\{3\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_codec() {
    ffmpeg -hide_banner -codecs | tail -n +11 | sed 's/^.\{7\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_filter_kv() {
    _argc_util_mode_kv =
    _choice_filter | _argc_util_transform suffix== nospace
}

_choice_bsf() {
    ffmpeg -hide_banner -bsfs | tail -n +2
}

_choice_decoder() {
    ffmpeg -hide_banner -decoders | tail -n +11 | sed 's/^.\{7\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_demuxer() {
    ffmpeg -hide_banner -demuxers | tail -n +5 | sed 's/^.\{3\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_encoder() {
    ffmpeg -hide_banner -encoders | tail -n +11 | sed 's/^.\{7\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_filter() {
    ffmpeg -hide_banner -filters | tail -n +9 | sed 's/^.\{4\} \([^ ]\+\) \+[^ ]\+ \(.*\)$/\1\t\2/'
}

_choice_muxer() {
    ffmpeg -hide_banner -muxers | tail -n +5 | sed 's/^.\{3\} \([^ ]\+\) \(.*\)$/\1\t\2/'
}

_choice_protocol() {
    ffmpeg -hide_banner -protocols | tail -n +3
}
