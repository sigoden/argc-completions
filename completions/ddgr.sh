#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                          show this help message and exit
# @option -n --num <N>                     show N (0<=N<=25) results per page (default 10); N=0 shows actual number of results fetched per page
# @option -r --reg                         region-specific search e.g. 'us-en' for US (default); visit https://duckduckgo.com/params
# @option --colorize[auto|always|never]    whether to colorize output; defaults to 'auto', which enables color when stdout is a tty device; using
# @flag -C --nocolor                       equivalent to --colorize=never
# @option --colors                         set output colors (see man page for details)
# @flag -j --ducky                         open the first result in a web browser; implies --np
# @option -t --time <SPAN>                 time limit search [d (1 day), w (1 wk), m (1 month), y (1 year)]
# @option -w --site                        search sites using DuckDuckGo
# @flag -x --expand                        Show complete url in search results
# @option -p --proxy <URI>                 tunnel traffic through an HTTPS proxy; URI format: [http[s]://][user:pwd@]host[:port]
# @flag --unsafe                           disable safe search
# @flag --noua                             disable user agent
# @flag --json                             output in JSON format; implies --np
# @flag --gb                               open a bang directly in gui browser
# @flag --gui-browser                      open a bang directly in gui browser
# @flag --np                               perform search and exit, do not prompt
# @flag --noprompt                         perform search and exit, do not prompt
# @flag --rev                              list entries in reversed order
# @flag --reverse                          list entries in reversed order
# @option --url-handler <UTIL>             custom script or cli utility to open results
# @flag --show-browser-logs                do not suppress browser output (stdout and stderr)
# @flag -v --version                       show program's version number and exit
# @flag -d --debug                         enable debugging
# @arg keyword                             search keywords

command eval "$(argc --argc-eval "$0" "$@")"