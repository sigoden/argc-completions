#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -L                                         show license
# @option -h[`_choice_help_topic`] <topic>         show help
# @option -? -help[`_choice_help_topic`] <topic>   show help
# @option --help[`_choice_help_topic`] <topic>     show help
# @flag -version                                   show version
# @flag -buildconf                                 show build configuration
# @flag -formats                                   show available formats
# @flag -muxers                                    show available muxers
# @flag -demuxers                                  show available demuxers
# @flag -devices                                   show available devices
# @flag -codecs                                    show available codecs
# @flag -decoders                                  show available decoders
# @flag -encoders                                  show available encoders
# @flag -bsfs                                      show available bit stream filters
# @flag -protocols                                 show available protocols
# @flag -filters                                   show available filters
# @flag -pix_fmts                                  show available pixel formats
# @flag -layouts                                   show standard channel layouts
# @flag -sample_fmts                               show available audio sample formats
# @flag -dispositions                              show available stream dispositions
# @flag -colors                                    show available color names
# @option -sources*,[`_choice_device`] <device>    list sources of the input device
# @option -sinks*,[`_choice_device`] <device>      list sinks of the output device
# @flag -hwaccels                                  show available HW acceleration methods
# @option -loglevel[`_choice_loglevel`] <loglevel>  set logging level
# @option -v[`_choice_loglevel`] <loglevel>        set logging level
# @flag -report                                    generate a report
# @option -max_alloc <bytes>                       set maximum size of a single allocated block
# @flag -y                                         overwrite output files
# @flag -n                                         never overwrite output files
# @flag -ignore_unknown                            Ignore unknown stream types
# @flag -filter_threads                            number of non-complex filter threads
# @flag -filter_complex_threads                    number of threads for -filter_complex
# @flag -stats                                     print progress report during encoding
# @option -max_error_rate <maximum> <error> <rate>  ratio of decoding errors (0.0: no errors, 1.0: 100% errors) above which ffmpeg returns an error instead of success.
# @option -f[`_choice_format`] <fmt>               force format
# @option -c[`_choice_codec`] <codec>              codec name
# @option -codec[`_choice_codec`] <codec>          codec name
# @option -pre <preset>                            preset name
# @option -map_metadata <outfile[,metadata]:infile[,metadata]>  set metadata information of outfile from infile
# @option -t <duration>                            record or transcode "duration" seconds of audio/video
# @option -to <time_stop>                          record or transcode stop time
# @option -fs <limit_size>                         set the limit file size in bytes
# @option -ss <time_off>                           set the start time offset
# @option -sseof <time_off>                        set the start time offset relative to EOF
# @flag -seek_timestamp                            enable/disable seeking by timestamp with -ss
# @option -timestamp <time>                        set the recording timestamp ('now' to set the current time)
# @option -metadata <string=string>                add metadata
# @option -program* <title=string:st=number>       add program with specified streams
# @option -target <type>                           specify target file type ("vcd", "svcd", "dvd", "dv" or "dv50" with optional prefixes "pal-", "ntsc-" or "film-")
# @flag -apad                                      audio pad
# @option -frames <number>                         set the number of frames to output
# @option -filter <filter_graph>                   set stream filtergraph
# @option -filter_script <filename>                read stream filtergraph description from a file
# @flag -reinit_filter                             reinit filtergraph on input parameter changes
# @flag -discard                                   discard
# @flag -disposition                               disposition
# @option -vframes <number>                        set the number of video frames to output
# @option -r <rate>                                set frame rate (Hz value, fraction or abbreviation)
# @option -fpsmax <rate>                           set max frame rate (Hz value, fraction or abbreviation)
# @option -aspect <aspect>                         set aspect ratio (4:3, 16:9 or 1.3333, 1.7777)
# @option -display_rotation <angle>                set pure counter-clockwise rotation in degrees for stream(s)
# @flag -display_hflip                             set display horizontal flip for stream(s) (overrides any display rotation if it is not set)
# @flag -display_vflip                             set display vertical flip for stream(s) (overrides any display rotation if it is not set)
# @flag -vn                                        disable video
# @option -vcodec[`_choice_codec`] <codec>         force video codec ('copy' to copy stream)
# @option -timecode <hh:mm:ss[:;.]ff>              set initial TimeCode value.
# @option -pass <n>                                select the pass number (1 to 3)
# @option -vf*[`_choice_filter_kv`] <filter_graph>  set video filters
# @option -b <bitrate>                             video bitrate (please use -b:v)
# @flag -dn                                        disable data
# @option -aframes <number>                        set the number of audio frames to output
# @option -aq <quality>                            set audio quality (codec-specific)
# @option -ar[22050|44100|48000] <rate>            set audio sampling rate (in Hz)
# @option -ac <channels>                           set number of audio channels
# @flag -an                                        disable audio
# @option -acodec[`_choice_codec`] <codec>         force audio codec ('copy' to copy stream)
# @option -ab[16|32|64|128|192|256|320] <bitrate>  audio bitrate (please use -b:a)
# @option -af*[`_choice_filter_kv`] <filter_graph>  set audio filters
# @option -s <size>                                set frame size (WxH or abbreviation)
# @flag -sn                                        disable subtitle
# @option -scodec[`_choice_codec`] <codec>         force subtitle codec ('copy' to copy stream)
# @option -stag <fourcc/tag>                       force subtitle tag/fourcc
# @flag -fix_sub_duration                          fix subtitles duration
# @option -canvas_size <size>                      set canvas size (WxH or abbreviation)
# @option -spre <preset>                           set the subtitle options to the indicated preset
# @arg outfile*

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

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

command eval "$(argc --argc-eval "$0" "$@")"