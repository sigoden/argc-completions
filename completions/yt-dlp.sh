#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  Print this help text and exit
# @flag --version                                  Print program version and exit
# @flag -U --update                                Check if updates are available.
# @flag --no-update                                Do not check for updates (default)
# @option --update-to[stable|nightly|master] <[CHANNEL]@[TAG]>  Upgrade/downgrade to a specific version.
# @flag -i --ignore-errors                         Ignore download and postprocessing errors.
# @flag --no-abort-on-error                        Continue with next video on download errors; e.g. to skip unavailable videos in a playlist (default)
# @flag --abort-on-error                           Abort downloading of further videos if an error occurs (Alias: --no-ignore-errors)
# @flag --dump-user-agent                          Display the current user-agent and exit
# @flag --list-extractors                          List all supported extractors and exit
# @flag --extractor-descriptions                   Output descriptions of all supported extractors and exit
# @option --use-extractors <NAMES>                 Extractor names to use separated by commas.
# @option --default-search <PREFIX>                Use this prefix for unqualified URLs.
# @flag --ignore-config                            Don't load any more configuration files except those given by --config-locations.
# @flag --no-config-locations                      Do not load any custom configuration files (default).
# @option --config-locations <PATH>                Location of the main configuration file; either the path to the config or its containing directory ("-" for stdin).
# @flag --flat-playlist                            Do not extract the videos of a playlist, only list them
# @flag --no-flat-playlist                         Fully extract the videos of a playlist (default)
# @flag --live-from-start                          Download livestreams from the start.
# @flag --no-live-from-start                       Download livestreams from the current time (default)
# @option --wait-for-video <MIN[-MAX]>             Wait for scheduled streams to become available.
# @flag --no-wait-for-video                        Do not wait for scheduled streams (default)
# @flag --mark-watched                             Mark videos watched (even with --simulate)
# @flag --no-mark-watched                          Do not mark videos watched (default)
# @option --color <[STREAM:]POLICY>                Whether to emit color codes in output, optionally prefixed by the STREAM (stdout or stderr) to apply the setting to.
# @option --compat-options <OPTS>                  Options that can help keep compatibility with youtube-dl or youtube-dlc configurations by reverting some of the changes made in yt-dlp.
# @option --alias <ALIASES> <OPTIONS>              Create aliases for an option string.
# @option --proxy <URL>                            Use the specified HTTP/HTTPS/SOCKS proxy.
# @option --socket-timeout <SECONDS>               Time to wait before giving up, in seconds
# @option --source-address <IP>                    Client-side IP address to bind to
# @flag -4 --force-ipv4                            Make all connections via IPv4
# @flag -6 --force-ipv6                            Make all connections via IPv6
# @flag --enable-file-urls                         Enable file:// URLs.
# @option --geo-verification-proxy <URL>           Use this proxy to verify the IP address for some geo-restricted sites.
# @option --xff <VALUE>                            How to fake X-Forwarded-For HTTP header to try bypassing geographic restriction.
# @option -I --playlist-items <ITEM_SPEC>          Comma separated playlist_index of the items to download.
# @option --min-filesize <SIZE>                    Abort download if filesize is smaller than SIZE, e.g. 50k or 44.6M
# @option --max-filesize <SIZE>                    Abort download if filesize is larger than SIZE, e.g. 50k or 44.6M
# @option --date[now|today|yesterday]              Download only videos uploaded on this date.
# @option --datebefore <DATE>                      Download only videos uploaded on or before this date.
# @option --dateafter <DATE>                       Download only videos uploaded on or after this date.
# @option --match-filters <FILTER>                 Generic video filter.
# @flag --no-match-filters                         Do not use any --match-filter (default)
# @option --break-match-filters <FILTER>           Same as "--match-filters" but stops the download process when a video is rejected
# @flag --no-break-match-filters                   Do not use any --break-match-filters (default)
# @flag --no-playlist                              Download only the video, if the URL refers to a video and a playlist
# @flag --yes-playlist                             Download the playlist, if the URL refers to a video and a playlist
# @option --age-limit <YEARS>                      Download only videos suitable for the given age
# @option --download-archive <FILE>                Download only videos not listed in the archive file.
# @flag --no-download-archive                      Do not use archive file (default)
# @option --max-downloads <NUMBER>                 Abort after downloading NUMBER files
# @flag --break-on-existing                        Stop the download process when encountering a file that is in the archive
# @flag --break-per-input                          Alters --max-downloads, --break-on-existing, --break-match-filter, and autonumber to reset per input URL
# @flag --no-break-per-input                       --break-on-existing and similar options terminates the entire download queue
# @option --skip-playlist-after-errors <N>         Number of allowed failures until the rest of the playlist is skipped
# @option -N --concurrent-fragments <N>            Number of fragments of a dash/hlsnative video that should be downloaded concurrently (default is 1)
# @option -r --limit-rate <RATE>                   Maximum download rate in bytes per second, e.g. 50K or 4.2M
# @option --throttled-rate <RATE>                  Minimum download rate in bytes per second below which throttling is assumed and the video data is re-extracted, e.g. 100K
# @option -R --retries                             Number of retries (default is 10), or "infinite"
# @option --file-access-retries <RETRIES>          Number of times to retry on file access error (default is 3), or "infinite"
# @option --fragment-retries <RETRIES>             Number of retries for a fragment (default is 10), or "infinite" (DASH, hlsnative and ISM)
# @option --retry-sleep[http|fragment|file_access|extractor] <[TYPE:]EXPR>  Time to sleep between retries in seconds (optionally) prefixed by the type of retry (http (default), fragment, file_access, extractor) to apply the sleep to.
# @flag --skip-unavailable-fragments               Skip unavailable fragments for DASH, hlsnative and ISM downloads (default) (Alias: --no-abort-on-unavailable-fragments)
# @flag --abort-on-unavailable-fragments           Abort download if a fragment is unavailable (Alias: --no-skip-unavailable-fragments)
# @flag --keep-fragments                           Keep downloaded fragments on disk after downloading is finished
# @flag --no-keep-fragments                        Delete downloaded fragments after downloading is finished (default)
# @option --buffer-size <SIZE>                     Size of download buffer, e.g. 1024 or 16K (default is 1024)
# @flag --resize-buffer                            The buffer size is automatically resized from an initial value of --buffer-size (default)
# @flag --no-resize-buffer                         Do not automatically adjust the buffer size
# @option --http-chunk-size <SIZE>                 Size of a chunk for chunk-based HTTP downloading, e.g. 10485760 or 10M (default is disabled).
# @flag --playlist-random                          Download playlist videos in random order
# @flag --lazy-playlist                            Process entries in the playlist as they are received.
# @flag --no-lazy-playlist                         Process videos in the playlist only after the entire playlist is parsed (default)
# @flag --xattr-set-filesize                       Set file xattribute ytdl.filesize with expected file size
# @flag --hls-use-mpegts                           Use the mpegts container for HLS videos; allowing some players to play the video while downloading, and reducing the chance of file corruption if download is interrupted.
# @flag --no-hls-use-mpegts                        Do not use the mpegts container for HLS videos.
# @option --download-sections <REGEX>              Download only chapters that match the regular expression.
# @option --downloader[http|ftp|m3u8|dash|rstp|rtmp|mms] <[PROTO:]NAME>  Name or path of the external downloader to use (optionally) prefixed by the protocols to use it for.
# @option --downloader-args <NAME:ARGS>            Give these arguments to the external downloader.
# @option -a --batch-file <FILE>                   File containing URLs to download ("-" for stdin), one URL per line.
# @flag --no-batch-file                            Do not read URLs from batch file (default)
# @option -P --paths <[TYPES:]PATH>                The paths where the files should be downloaded.
# @option -o --output <[TYPES:]TEMPLATE>           Output filename template; see "OUTPUT TEMPLATE" for details
# @option --output-na-placeholder <TEXT>           Placeholder for unavailable fields in "OUTPUT TEMPLATE" (default: "NA")
# @flag --restrict-filenames                       Restrict filenames to only ASCII characters, and avoid "&" and spaces in filenames
# @flag --no-restrict-filenames                    Allow Unicode characters, "&" and spaces in filenames (default)
# @flag --windows-filenames                        Force filenames to be Windows-compatible
# @flag --no-windows-filenames                     Make filenames Windows-compatible only if using Windows (default)
# @option --trim-filenames <LENGTH>                Limit the filename length (excluding extension) to the specified number of characters
# @flag -w --no-overwrites                         Do not overwrite any files
# @flag --force-overwrites                         Overwrite all video and metadata files.
# @flag --no-force-overwrites                      Do not overwrite the video, but overwrite related files (default)
# @flag -c --continue                              Resume partially downloaded files/fragments (default)
# @flag --no-continue                              Do not resume partially downloaded fragments.
# @flag --part                                     Use .part files instead of writing directly into output file (default)
# @flag --no-part                                  Do not use .part files - write directly into output file
# @flag --mtime                                    Use the Last-modified header to set the file modification time (default)
# @flag --no-mtime                                 Do not use the Last-modified header to set the file modification time
# @flag --write-description                        Write video description to a .description file
# @flag --no-write-description                     Do not write video description (default)
# @flag --write-info-json                          Write video metadata to a .info.json file (this may contain personal information)
# @flag --no-write-info-json                       Do not write video metadata (default)
# @flag --write-playlist-metafiles                 Write playlist metadata in addition to the video metadata when using --write-info-json, --write-description etc.
# @flag --no-write-playlist-metafiles              Do not write playlist metadata when using --write-info-json, --write-description etc.
# @flag --clean-info-json                          Remove some internal metadata such as filenames from the infojson (default)
# @flag --no-clean-info-json                       Write all fields to the infojson
# @flag --write-comments                           Retrieve video comments to be placed in the infojson.
# @flag --no-write-comments                        Do not retrieve video comments unless the extraction is known to be quick (Alias: --no-get-comments)
# @option --load-info-json <FILE>                  JSON file containing the video information (created with the "--write-info-json" option)
# @option --cookies <FILE>                         Netscape formatted file to read cookies from and dump cookie jar in
# @flag --no-cookies                               Do not read/dump cookies from/to file (default)
# @option --cookies-from-browser[brave|chrome|chromium|edge|firefox|opera|safari|vivaldi] <BROWSER[+KEYRING][:PROFILE][::CONTAINER]>  The name of the browser to load cookies from.
# @flag --no-cookies-from-browser                  Do not load cookies from browser (default)
# @option --cache-dir <DIR>                        Location in the filesystem where yt-dlp can store some downloaded information (such as client ids and signatures) permanently.
# @flag --no-cache-dir                             Disable filesystem caching
# @flag --rm-cache-dir                             Delete all filesystem cache files
# @flag --write-thumbnail                          Write thumbnail image to disk
# @flag --no-write-thumbnail                       Do not write thumbnail image to disk (default)
# @flag --write-all-thumbnails                     Write all thumbnail image formats to disk
# @flag --list-thumbnails                          List available thumbnails of each video.
# @flag --write-link                               Write an internet shortcut file, depending on the current platform (.url, .webloc or .desktop).
# @flag --write-url-link                           Write a .url Windows internet shortcut.
# @flag --write-webloc-link                        Write a .webloc macOS internet shortcut
# @flag --write-desktop-link                       Write a .desktop Linux internet shortcut
# @flag -q --quiet                                 Activate quiet mode.
# @flag --no-quiet                                 Deactivate quiet mode.
# @flag --no-warnings                              Ignore warnings
# @flag -s --simulate                              Do not download the video and do not write anything to disk
# @flag --no-simulate                              Download the video even if printing/listing options are used
# @flag --ignore-no-formats-error                  Ignore "No video formats" error.
# @flag --no-ignore-no-formats-error               Throw error when no downloadable video formats are found (default)
# @flag --skip-download                            Do not download the video but write all related files (Alias: --no-download)
# @option -O --print <[WHEN:]TEMPLATE>             Field name or output template to print to screen, optionally prefixed with when to print it, separated by a ":".
# @option --print-to-file <[WHEN:]TEMPLATE> <FILE>  Append given template to the file.
# @flag -j --dump-json                             Quiet, but print JSON information for each video.
# @flag -J --dump-single-json                      Quiet, but print JSON information for each url or infojson passed.
# @flag --force-write-archive                      Force download archive entries to be written as far as no errors occur, even if -s or another simulation option is used (Alias: --force-download-archive)
# @flag --newline                                  Output progress bar as new lines
# @flag --no-progress                              Do not print progress bar
# @flag --progress                                 Show progress bar, even if in quiet mode
# @flag --console-title                            Display progress in console titlebar
# @option --progress-template <[TYPES:]TEMPLATE>   Template for progress outputs, optionally prefixed with one of "download:" (default), "download-title:" (the console title), "postprocess:",  or "postprocess-title:".
# @flag -v --verbose                               Print various debugging information
# @flag --dump-pages                               Print downloaded pages encoded using base64 to debug problems (very verbose)
# @flag --write-pages                              Write downloaded intermediary pages to files in the current directory to debug problems
# @flag --print-traffic                            Display sent and read HTTP traffic
# @option --encoding                               Force the specified encoding (experimental)
# @flag --legacy-server-connect                    Explicitly allow HTTPS connection to servers that do not support RFC 5746 secure renegotiation
# @flag --no-check-certificates                    Suppress HTTPS certificate validation
# @flag --prefer-insecure                          Use an unencrypted connection to retrieve information about the video (Currently supported only for YouTube)
# @option --add-headers <FIELD:VALUE>              Specify a custom HTTP header and its value, separated by a colon ":".
# @flag --bidi-workaround                          Work around terminals that lack bidirectional text support.
# @option --sleep-requests <SECONDS>               Number of seconds to sleep between requests during data extraction
# @option --sleep-interval <SECONDS>               Number of seconds to sleep before each download.
# @option --max-sleep-interval <SECONDS>           Maximum number of seconds to sleep.
# @option --sleep-subtitles <SECONDS>              Number of seconds to sleep before each subtitle download
# @option -f --format[`_choice_format`]            Video format code, see "FORMAT SELECTION" for more details
# @option -S --format-sort <SORTORDER>             Sort the formats by the fields given, see "Sorting Formats" for more details
# @flag --format-sort-force                        Force user specified sort order to have precedence over all fields, see "Sorting Formats" for more details (Alias: --S-force)
# @flag --no-format-sort-force                     Some fields have precedence over the user specified sort order (default)
# @flag --video-multistreams                       Allow multiple video streams to be merged into a single file
# @flag --no-video-multistreams                    Only one video stream is downloaded for each output file (default)
# @flag --audio-multistreams                       Allow multiple audio streams to be merged into a single file
# @flag --no-audio-multistreams                    Only one audio stream is downloaded for each output file (default)
# @flag --prefer-free-formats                      Prefer video formats with free containers over non-free ones of same quality.
# @flag --no-prefer-free-formats                   Don't give any special preference to free containers (default)
# @flag --check-formats                            Make sure formats are selected only from those that are actually downloadable
# @flag --check-all-formats                        Check all formats for whether they are actually downloadable
# @flag --no-check-formats                         Do not check that the formats are actually downloadable
# @flag -F --list-formats                          List available formats of each video.
# @option --merge-output-format[avi|flv|mkv|mov|mp4|webm] <FORMAT>  Containers that may be used when merging formats, separated by "/", e.g. "mp4/mkv".
# @flag --write-subs                               Write subtitle file
# @flag --no-write-subs                            Do not write subtitle file (default)
# @flag --write-auto-subs                          Write automatically generated subtitle file (Alias: --write-automatic-subs)
# @flag --no-write-auto-subs                       Do not write auto-generated subtitles (default) (Alias: --no-write-automatic-subs)
# @flag --list-subs                                List available subtitles of each video.
# @option --sub-format*/[ass|srt|best] <FORMAT>    Subtitle format; accepts formats preference, e.g. "srt" or "ass/srt/best"
# @option --sub-langs <LANGS>                      Languages of the subtitles to download (can be regex) or "all" separated by commas, e.g. --sub-langs "en.*,ja".
# @option -u --username                            Login with this account ID
# @option -p --password                            Account password.
# @option -2 --twofactor                           Two-factor authentication code
# @flag -n --netrc                                 Use .netrc authentication data
# @option --netrc-location <PATH>                  Location of .netrc authentication data; either the path or its containing directory.
# @option --netrc-cmd <NETRC_CMD>                  Command to execute to get the credentials for an extractor.
# @option --video-password <PASSWORD>              Video-specific password
# @option --ap-mso <MSO>                           Adobe Pass multiple-system operator (TV provider) identifier, use --ap-list-mso for a list of available MSOs
# @option --ap-username <USERNAME>                 Multiple-system operator account login
# @option --ap-password <PASSWORD>                 Multiple-system operator account password.
# @flag --ap-list-mso                              List all supported multiple-system operators
# @option --client-certificate <CERTFILE>          Path to client certificate file in PEM format.
# @option --client-certificate-key <KEYFILE>       Path to private key file for client certificate
# @option --client-certificate-password <PASSWORD>  Password for client certificate private key, if encrypted.
# @flag -x --extract-audio                         Convert video files to audio-only files (requires ffmpeg and ffprobe)
# @option --audio-format[best|aac|flac|mp3|m4a|opus|vorbis|wav] <FORMAT>  Format to convert the audio to when -x is used.
# @option --audio-quality[0|1|2|3|4|5|6|7|8|9] <QUALITY>  Specify ffmpeg audio quality to use when converting the audio with -x.
# @option --remux-video[avi|flv|gif|mkv|mov|mp4|webm|aac|aiff|alac|flac|m4a|mka|mp3|ogg|opus|vorbis|wav] <FORMAT>  Remux the video into another container if necessary.
# @option --recode-video[mp4|flv|ogg|webm|mkv|avi] <FORMAT>  Re-encode the video into another format if necessary.
# @option --postprocessor-args <NAME:ARGS>         Give these arguments to the postprocessors.
# @flag -k --keep-video                            Keep the intermediate video file on disk after post-processing
# @flag --no-keep-video                            Delete the intermediate video file after post-processing (default)
# @flag --post-overwrites                          Overwrite post-processed files (default)
# @flag --no-post-overwrites                       Do not overwrite post-processed files
# @flag --embed-subs                               Embed subtitles in the video (only for mp4, webm and mkv videos)
# @flag --no-embed-subs                            Do not embed subtitles (default)
# @flag --embed-thumbnail                          Embed thumbnail in the video as cover art
# @flag --no-embed-thumbnail                       Do not embed thumbnail (default)
# @flag --embed-metadata                           Embed metadata to the video file.
# @flag --no-embed-metadata                        Do not add metadata to file (default) (Alias: --no-add-metadata)
# @flag --embed-chapters                           Add chapter markers to the video file (Alias: --add-chapters)
# @flag --no-embed-chapters                        Do not add chapter markers (default) (Alias: --no-add-chapters)
# @flag --embed-info-json                          Embed the infojson as an attachment to mkv/mka video files
# @flag --no-embed-info-json                       Do not embed the infojson as an attachment to the video file
# @option --parse-metadata <[WHEN:]FROM:TO>        Parse additional metadata like title/artist from other fields; see "MODIFYING METADATA" for details.
# @option --replace-in-metadata <[WHEN:]FIELDS> <REGEX> <REPLACE>  Replace text in a metadata field using the given regex.
# @flag --xattrs                                   Write metadata to the video file's xattrs (using dublin core and xdg standards)
# @option --concat-playlist <POLICY>               Concatenate videos in a playlist.
# @option --fixup[`_choice_fixup`] <POLICY>        Automatically correct known faults of the file.
# @option --ffmpeg-location <PATH>                 Location of the ffmpeg binary; either the path to the binary or its containing directory
# @option --exec <[WHEN:]CMD>                      Execute a command, optionally prefixed with when to execute it, separated by a ":".
# @flag --no-exec                                  Remove any previously defined --exec
# @option --convert-subs[srt|ass|vtt|lrc] <FORMAT>  Convert the subtitles to another format (Alias: --convert-subtitles)
# @option --convert-thumbnails[jpg|png|webp] <FORMAT>  Convert the thumbnails to another format.
# @flag --split-chapters                           Split video into multiple files based on internal chapters.
# @flag --no-split-chapters                        Do not split video based on chapters (default)
# @option --remove-chapters <REGEX>                Remove chapters whose title matches the given regular expression.
# @flag --no-remove-chapters                       Do not remove any chapters from the file (default)
# @flag --force-keyframes-at-cuts                  Force keyframes at cuts when downloading/splitting/removing sections.
# @flag --no-force-keyframes-at-cuts               Do not force keyframes around the chapters when cutting/splitting (default)
# @option --use-postprocessor <NAME[:ARGS]>        The (case sensitive) name of plugin postprocessors to be enabled, and (optionally) arguments to be passed to it, separated by a colon ":".
# @option --sponsorblock-mark <CATS>               SponsorBlock categories to create chapters for, separated by commas.
# @option --sponsorblock-remove <CATS>             SponsorBlock categories to be removed from the video file, separated by commas.
# @option --sponsorblock-chapter-title <TEMPLATE>  An output template for the title of the SponsorBlock chapters created by --sponsorblock-mark.
# @flag --no-sponsorblock                          Disable both --sponsorblock-mark and --sponsorblock-remove
# @option --sponsorblock-api <URL>                 SponsorBlock API location, defaults to https://sponsor.ajay.app
# @option --extractor-retries <RETRIES>            Number of retries for known extractor errors (default is 3), or "infinite"
# @flag --allow-dynamic-mpd                        Process dynamic DASH manifests (default) (Alias: --no-ignore-dynamic-mpd)
# @flag --ignore-dynamic-mpd                       Do not process dynamic DASH manifests (Alias: --no-allow-dynamic-mpd)
# @flag --hls-split-discontinuity                  Split HLS playlists to different formats at discontinuities such as ad breaks
# @flag --no-hls-split-discontinuity               Do not split HLS playlists to different formats at discontinuities such as ad breaks (default)
# @option --extractor-args <IE_KEY:ARGS>           Pass ARGS arguments to the IE_KEY extractor.
# @arg url*

_choice_format() {
    if [[ ${#argc__positionals[@]} -gt 0 ]]; then
        youtube-dl --list-formats "${argc__positionals[0]}" | sed 's/\(\S\+\) \+\(.*\)$/\1\t\2/'
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