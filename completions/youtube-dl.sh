#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Print this help text and exit
# @flag --version                                  Print program version and exit
# @flag -U --update                                Update this program to latest version.
# @flag -i --ignore-errors                         Continue on download errors, for example to skip unavailable videos in a playlist
# @flag --abort-on-error                           Abort downloading of further videos (in the playlist or the command line) if an error occurs
# @flag --dump-user-agent                          Display the current browser identification
# @flag --list-extractors                          List all supported extractors
# @flag --extractor-descriptions                   Output descriptions of all supported extractors
# @flag --force-generic-extractor                  Force extraction to use the generic extractor
# @option --default-search <PREFIX>                Use this prefix for unqualified URLs.
# @flag --ignore-config                            Do not read configuration files.
# @option --config-location <PATH>                 Location of the configuration file; either the path to the config or its containing directory.
# @flag --flat-playlist                            Do not extract the videos of a playlist, only list them.
# @flag --mark-watched                             Mark videos watched (YouTube only)
# @flag --no-mark-watched                          Do not mark videos watched (YouTube only)
# @flag --no-color                                 Do not emit color codes in output
# @option --proxy <URL>                            Use the specified HTTP/HTTPS/SOCKS proxy.
# @option --socket-timeout <SECONDS>               Time to wait before giving up, in seconds
# @option --source-address <IP>                    Client-side IP address to bind to
# @flag -4 --force-ipv4                            Make all connections via IPv4
# @flag -6 --force-ipv6                            Make all connections via IPv6
# @option --geo-verification-proxy <URL>           Use this proxy to verify the IP address for some geo-restricted sites.
# @flag --geo-bypass                               Bypass geographic restriction via faking X-Forwarded-For HTTP header
# @flag --no-geo-bypass                            Do not bypass geographic restriction via faking X-Forwarded-For HTTP header
# @option --geo-bypass-country <CODE>              Force bypass geographic restriction with explicitly provided two-letter ISO 3166-2 country code
# @option --geo-bypass-ip-block <IP_BLOCK>         Force bypass geographic restriction with explicitly provided IP block in CIDR notation
# @option --playlist-start <NUMBER>                Playlist video to start at (default is 1)
# @option --playlist-end <NUMBER>                  Playlist video to end at (default is last)
# @option --playlist-items <ITEM_SPEC>             Playlist video items to download.
# @option --match-title <REGEX>                    Download only matching titles (regex or caseless sub-string)
# @option --reject-title <REGEX>                   Skip download for matching titles (regex or caseless sub-string)
# @option --max-downloads <NUMBER>                 Abort after downloading NUMBER files
# @option --min-filesize <SIZE>                    Do not download any videos smaller than SIZE (e.g. 50k or 44.6m)
# @option --max-filesize <SIZE>                    Do not download any videos larger than SIZE (e.g. 50k or 44.6m)
# @option --date                                   Download only videos uploaded in this date
# @option --datebefore <DATE>                      Download only videos uploaded on or before this date (i.e.
# @option --dateafter <DATE>                       Download only videos uploaded on or after this date (i.e.
# @option --min-views <COUNT>                      Do not download any videos with less than COUNT views
# @option --max-views <COUNT>                      Do not download any videos with more than COUNT views
# @option --match-filter <FILTER>                  Generic video filter.
# @flag --no-playlist                              Download only the video, if the URL refers to a video and a playlist.
# @flag --yes-playlist                             Download the playlist, if the URL refers to a video and a playlist.
# @option --age-limit <YEARS>                      Download only videos suitable for the given age
# @option --download-archive <FILE>                Download only videos not listed in the archive file.
# @flag --include-ads                              Download advertisements as well (experimental)
# @option -r --limit-rate <RATE>                   Maximum download rate in bytes per second (e.g. 50K or 4.2M)
# @option -R --retries                             Number of retries (default is 10), or "infinite".
# @option --fragment-retries <RETRIES>             Number of retries for a fragment (default is 10), or "infinite" (DASH, hlsnative and ISM)
# @flag --skip-unavailable-fragments               Skip unavailable fragments (DASH, hlsnative and ISM)
# @flag --abort-on-unavailable-fragment            Abort downloading when some fragment is not available
# @flag --keep-fragments                           Keep downloaded fragments on disk after downloading is finished; fragments are erased by default
# @option --buffer-size <SIZE>                     Size of download buffer (e.g. 1024 or 16K) (default is 1024)
# @flag --no-resize-buffer                         Do not automatically adjust the buffer size.
# @option --http-chunk-size <SIZE>                 Size of a chunk for chunk-based HTTP downloading (e.g. 10485760 or 10M) (default is disabled).
# @flag --playlist-reverse                         Download playlist videos in reverse order
# @flag --playlist-random                          Download playlist videos in random order
# @flag --xattr-set-filesize                       Set file xattribute ytdl.filesize with expected file size
# @flag --hls-prefer-native                        Use the native HLS downloader instead of ffmpeg
# @flag --hls-prefer-ffmpeg                        Use ffmpeg instead of the native HLS downloader
# @flag --hls-use-mpegts                           Use the mpegts container for HLS videos, allowing to play the video while downloading (some players may not be able to play it)
# @option --external-downloader <COMMAND>          Use the specified external downloader.
# @option --external-downloader-args <ARGS>        Give these arguments to the external downloader
# @option -a --batch-file <FILE>                   File containing URLs to download ('-' for stdin), one URL per line.
# @flag --id                                       Use only video ID in file name
# @option -o --output <TEMPLATE>                   Output filename template, see the "OUTPUT TEMPLATE" for all the info
# @option --output-na-placeholder <PLACEHOLDER>    Placeholder value for unavailable meta fields in output filename template (default is "NA")
# @option --autonumber-start <NUMBER>              Specify the start value for %(autonumber)s (default is 1)
# @flag --restrict-filenames                       Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames
# @flag -w --no-overwrites                         Do not overwrite files
# @flag -c --continue                              Force resume of partially downloaded files.
# @flag --no-continue                              Do not resume partially downloaded files (restart from beginning)
# @flag --no-part                                  Do not use .part files - write directly into output file
# @flag --no-mtime                                 Do not use the Last-modified header to set the file modification time
# @flag --write-description                        Write video description to a .description file
# @flag --write-info-json                          Write video metadata to a .info.json file
# @flag --write-annotations                        Write video annotations to a .annotations.xml file
# @option --load-info-json <FILE>                  JSON file containing the video information (created with the "--write-info-json" option)
# @option --cookies <FILE>                         File to read cookies from and dump cookie jar in
# @option --cache-dir <DIR>                        Location in the filesystem where youtube-dl can store some downloaded information permanently.
# @flag --no-cache-dir                             Disable filesystem caching
# @flag --rm-cache-dir                             Delete all filesystem cache files
# @flag --write-thumbnail                          Write thumbnail image to disk
# @flag --write-all-thumbnails                     Write all thumbnail image formats to disk
# @flag --list-thumbnails                          Simulate and list all available thumbnail formats
# @flag -q --quiet                                 Activate quiet mode
# @flag --no-warnings                              Ignore warnings
# @flag -s --simulate                              Do not download the video and do not write anything to disk
# @flag --skip-download                            Do not download the video
# @flag -g --get-url                               Simulate, quiet but print URL
# @flag -e --get-title                             Simulate, quiet but print title
# @flag --get-id                                   Simulate, quiet but print id
# @flag --get-thumbnail                            Simulate, quiet but print thumbnail URL
# @flag --get-description                          Simulate, quiet but print video description
# @flag --get-duration                             Simulate, quiet but print video length
# @flag --get-filename                             Simulate, quiet but print output filename
# @flag --get-format                               Simulate, quiet but print output format
# @flag -j --dump-json                             Simulate, quiet but print JSON information.
# @flag -J --dump-single-json                      Simulate, quiet but print JSON information for each command-line argument.
# @flag --print-json                               Be quiet and print the video information as JSON (video is still being downloaded).
# @flag --newline                                  Output progress bar as new lines
# @flag --no-progress                              Do not print progress bar
# @flag --console-title                            Display progress in console titlebar
# @flag -v --verbose                               Print various debugging information
# @flag --dump-pages                               Print downloaded pages encoded using base64 to debug problems (very verbose)
# @flag --write-pages                              Write downloaded intermediary pages to files in the current directory to debug problems
# @flag --print-traffic                            Display sent and read HTTP traffic
# @flag -C --call-home                             Contact the youtube-dl server for debugging
# @flag --no-call-home                             Do NOT contact the youtube-dl server for debugging
# @option --encoding                               Force the specified encoding (experimental)
# @flag --no-check-certificate                     Suppress HTTPS certificate validation
# @flag --prefer-insecure                          Use an unencrypted connection to retrieve information about the video.
# @option --user-agent <UA>                        Specify a custom user agent
# @option --referer <URL>                          Specify a custom referer, use if the video access is restricted to one domain
# @option --add-header <FIELD:VALUE>               Specify a custom HTTP header and its value, separated by a colon ':'.
# @flag --bidi-workaround                          Work around terminals that lack bidirectional text support.
# @option --sleep-interval <SECONDS>               Number of seconds to sleep before each download when used alone or a lower bound of a range for randomized sleep before each download (minimum possible number of seconds to sleep) when used along with --max-sleep-interval.
# @option --max-sleep-interval <SECONDS>           Upper bound of a range for randomized sleep before each download (maximum possible number of seconds to sleep).
# @option -f --format[`_choice_format`]            Video format code, see the "FORMAT SELECTION" for all the info
# @flag --all-formats                              Download all available video formats
# @flag --prefer-free-formats                      Prefer free video formats unless a specific one is requested
# @flag -F --list-formats                          List all available formats of requested videos
# @flag --youtube-skip-dash-manifest               Do not download the DASH manifests and related data on YouTube videos
# @option --merge-output-format <FORMAT>           If a merge is required (e.g. bestvideo+bestaudio), output to given container format.
# @flag --write-sub                                Write subtitle file
# @flag --write-auto-sub                           Write automatically generated subtitle file (YouTube only)
# @flag --all-subs                                 Download all the available subtitles of the video
# @flag --list-subs                                List all available subtitles for the video
# @option --sub-format*/[ass|srt|best] <FORMAT>    Subtitle format, accepts formats preference, for example: "srt" or "ass/srt/best"
# @option --sub-lang[`_choice_sub_lang`] <LANGS>   Languages of the subtitles to download (optional) separated by commas, use --list-subs for available language tags
# @option -u --username                            Login with this account ID
# @option -p --password                            Account password.
# @option -2 --twofactor                           Two-factor authentication code
# @flag -n --netrc                                 Use .netrc authentication data
# @option --video-password[vimeo|youku] <PASSWORD>  Video password
# @option --ap-mso <MSO>                           Adobe Pass multiple-system operator (TV provider) identifier, use --ap-list-mso for a list of available MSOs
# @option --ap-username <USERNAME>                 Multiple-system operator account login
# @option --ap-password <PASSWORD>                 Multiple-system operator account password.
# @flag --ap-list-mso                              List all supported multiple-system operators
# @flag -x --extract-audio                         Convert video files to audio-only files (requires ffmpeg/avconv and ffprobe/avprobe)
# @option --audio-format[best|aac|flac|mp3|m4a|opus|vorbis|wav] <FORMAT>  Specify audio format: "best", "aac", "flac", "mp3", "m4a", "opus", "vorbis", or "wav"; "best" by default; No effect without -x
# @option --audio-quality[0|1|2|3|4|5|6|7|8|9] <QUALITY>  Specify ffmpeg/avconv audio quality, insert a value between 0 (better) and 9 (worse) for VBR or a specific bitrate like 128K (default 5)
# @option --recode-video[mp4|flv|ogg|webm|mkv|avi] <FORMAT>  Encode the video to another format if necessary (currently supported: mp4|flv|ogg|webm|mkv|avi)
# @option --postprocessor-args <ARGS>              Give these arguments to the postprocessor
# @flag -k --keep-video                            Keep the video file on disk after the post-processing; the video is erased by default
# @flag --no-post-overwrites                       Do not overwrite post-processed files; the post-processed files are overwritten by default
# @flag --embed-subs                               Embed subtitles in the video (only for mp4, webm and mkv videos)
# @flag --embed-thumbnail                          Embed thumbnail in the audio as cover art
# @flag --add-metadata                             Write metadata to the video file
# @option --metadata-from-title <FORMAT>           Parse additional metadata like song title / artist from the video title.
# @flag --xattrs                                   Write metadata to the video file's xattrs (using dublin core and xdg standards)
# @option --fixup[`_choice_fixup`] <POLICY>        Automatically correct known faults of the file.
# @flag --prefer-avconv                            Prefer avconv over ffmpeg for running the postprocessors
# @flag --prefer-ffmpeg                            Prefer ffmpeg over avconv for running the postprocessors (default)
# @option --ffmpeg-location <PATH>                 Location of the ffmpeg/avconv binary; either the path to the binary or its containing directory.
# @option --exec <CMD>                             Execute a command on the file after downloading and post-processing, similar to find's -exec syntax.
# @option --convert-subs[srt|ass|vtt|lrc] <FORMAT>  Convert the subtitles to other format (currently supported: srt|ass|vtt|lrc)
# @arg url*

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

command eval "$(argc --argc-eval "$0" "$@")"