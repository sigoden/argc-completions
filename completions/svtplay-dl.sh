#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                              show this help message and exit
# @flag --version                              show program's version number and exit
# @option -o --output <output>                 outputs to the given filename or folder
# @option --filename <filename>                filename format {title}.s{season}e{episode}.{episodena me}-{id}-{service}.{ext}
# @flag --subfolder                            Create a subfolder titled as the show, non-series gets in folder movies
# @option --config <configfile>                Specify configuration file
# @flag -f --force                             overwrite if file exists already
# @flag -r --resume                            resume a download (RTMP obsolete)
# @flag -l --live                              enable for live streams (RTMP based ones)
# @option -c --capture_time <capture_time>     define capture time in minutes of a live stream
# @flag -s --silent                            be less verbose
# @flag --silent-semi                          only show a message when the file is downloaded
# @option -u --username                        username
# @option -p --password                        password
# @option --token                              token
# @flag -t --thumbnail                         download thumbnail from the site if available
# @flag -g --get-url                           do not download any video, but instead print the URL.
# @flag --get-only-episode-url                 do not get video URLs, only print the episode URL.
# @flag --dont-verify-ssl-cert                 Don't attempt to verify SSL certificates.
# @option --http-header <header1=value;header2=value2>  A header to add to each HTTP request.
# @option --cookies <cookie1=value;cookie2=value2>  A cookies to add to each HTTP request.
# @option --exclude* <WORD1,WORD2,>            exclude videos with the WORD(s) in the filename.
# @option --after-date <yyyy-MM-dd>            only videos published on or after this date
# @option --proxy <proxy>                      Use the specified HTTP/HTTPS/SOCKS proxy.
# @flag -v --verbose                           explain what is going on
# @flag --nfo                                  create a NFO file
# @flag --force-nfo                            download only NFO if used with --nfo
# @flag --only-audio                           only download audio if audio and video is seperated
# @flag --only-video                           only download video if audio and video is seperated
# @option -q --quality <quality>               choose what format to download based on bitrate / video resolution.it will download the best format by default
# @option -Q --flexible-quality <amount>       allow given quality (as above) to differ by an amount
# @option -P --preferred <preferred>           preferred download method (dash, hls, or http)
# @flag --list-quality                         list the quality for a video
# @option --stream-priority <dash,hls,http>    If two streams have the same quality, choose the one you prefer
# @option --format-preferred <h264,h264-51>    Choose the format you prefer, --list-quality to show which one to choose from
# @option --audio-language <AUDIO_LANGUAGE>    Choose the language of the audio (it can override the default one), --list-quality to show which one to choose from
# @option --audio-role <AUDIO_ROLE>            Choose the role of the audio (it can override the default one), --list-quality to show which one to choose from
# @option --resolution                         Choose what video resolution to download e.g. 480,720,1080.
# @flag -S --subtitle                          download subtitle from the site if available.
# @flag -M --merge-subtitle                    merge subtitle with video/audio file with corresponding ISO639-3 language code.
# @flag --force-subtitle                       download only subtitle if its used with -S
# @flag --require-subtitle                     download only if a subtitle is available
# @flag --all-subtitles                        Download all available subtitles for the video
# @flag --raw-subtitles                        also download the subtitles in their native format
# @flag --convert-subtitle-colors              converts the color information in subtitles, to <font color=""> tags
# @flag -A --all-episodes                      try to download all episodes
# @option --all-last <NN>                      get last NN episodes instead of all episodes
# @flag --include-clips                        include clips from websites when using -A
# @flag --cmore-operatorlist                   show operatorlist for cmore
# @option --cmore-operator <operator>
# @flag --no-remux                             Do not automatically remux to mp4
# @flag --no-merge                             Do not automatically merge video, audio and possibly also subtitle(s) together
# @flag --no-postprocess                       Do not postprocess anything
# @flag --keep-original                        Do postprocessing while also keeping original files
# @option --output-format[mp4|mkv]             format you want resulting file in (mkv or mp4), mp4 is default
# @arg urls*

command eval "$(argc --argc-eval "$0" "$@")"