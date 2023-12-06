#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -always-load-config[0|1]     Load config also for slave instances
# @option -anonymous[0|1]              Restrict to anonymous mode
# @option -auto-submit[0|1]            Autosubmit first form
# @option -base-session <num>          Clone internal session with given ID
# @option -bind-address <str>          Use a specific local IP address
# @option -bind-address-ipv6 <str>     Use a specific local IPv6 address
# @option -config-dir <str>            Name of directory with configuration file
# @flag -config-dump                   Print default configuration file to stdout
# @option -config-file <str>           Name of configuration file
# @flag -config-help                   Print help for configuration options
# @flag -default-mime-type             MIME type assumed for unknown document types
# @option -default-keys[0|1]           Ignore user-defined keybindings
# @option -dump[0|1]                   Print formatted versions of given URLs to stdout
# @flag -dump-charset                  Codepage to use with -dump
# @flag -dump-color-mode               Color mode used with -dump
# @flag -dump-width                    Width of document formatted with -dump
# @flag -eval                          Evaluate configuration file directive
# @flag -force-html                    Interpret documents of unknown types as HTML
# @flag -?                             Print usage help and exit
# @flag -h                             Print usage help and exit
# @flag -help                          Print usage help and exit
# @option -localhost[0|1]              Only permit local connections
# @flag -long-help                     Print detailed usage help and exit
# @flag -lookup                        Look up specified host
# @option -no-connect[0|1]             Run as separate instance
# @option -no-home[0|1]                Disable use of files in ~/.elinks
# @option -no-libevent[0|1]            Disable libevent
# @flag -no-numbering                  Disable link numbering in dump output
# @flag -no-references                 Disable printing of link references in dump output
# @option -remote[`_choice_remote`]    Control an already running ELinks
# @option -session-ring <num>          Connect to session ring with given ID
# @option -source[0|1]                 Print the source of given URLs to stdout
# @option -terminfo[0|1]               Whether to use terminfo
# @option -touch-files[0|1]            Touch files in ~/.elinks when running with -no-connect/-session-ring
# @option -verbose <num>               Verbose level
# @flag -version                       Print version information and exit
# @arg url*[`_choice_url`]

_choice_remote() {
    printf "%s\n" ping openURL addBookmark infoBox reload search xfeDoCommand
}

_choice_url() {
    len="${#argc__positionals[@]}"
    if [[ "$len" -lt 2 ]] && [[ -n "$argc_remote" ]]; then
        _choice_remote
    else
        _choice_proto
        _choice_bookmark
    fi
}

_choice_bookmark() {
    bookmark_file="${argc_config_dir:-"$HOME/.elinks"}/bookmarks"
    if [[ -f "$bookmark_file" ]]; then
        cat ~/.elinks/bookmarks  | gawk -F'\t' '{print $2}'
    fi
}

_choice_proto() {
    printf "%s\n" https:// http:// ftp:// file://
}

command eval "$(argc --argc-eval "$0" "$@")"