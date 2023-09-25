#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -a --add*, <url>                   bookmark URL with comma-separated tags
# @option -u --update* <value>               update fields of an existing bookmark accepts indices and ranges refresh title and desc if no edit options if no arguments: - update results when used with search - otherwise refresh all titles and desc
# @option -w --write <editor|index>          edit and add a new bookmark in editor else, edit bookmark at index in EDITOR edit last bookmark, if index=-1 if no args, edit new bookmark in EDITOR
# @option -d --delete* <value>               remove bookmarks from DB accepts indices or a single range if no arguments: - delete results when used with search - otherwise delete all bookmarks
# @flag -h --help                            show this information and exit
# @flag -v --version                         show the program version and exit
# @option --url <keyword>                    bookmark link
# @option --tag* <value>                     comma-separated tags clear bookmark tagset, if no arguments '+' appends to, '-' removes from tagset
# @option --title* <value>                   bookmark title; if no arguments: -a: do not set title, -u: clear title
# @option -c --comment* <value>              notes or description of the bookmark clears description, if no arguments
# @option --immutable <N>                    disable web-fetch during auto-refresh N=0: mutable (default), N=1: immutable
# @option -s --sany* <value>                 find records with ANY matching keyword this is the default search option
# @option -S --sall* <value>                 find records matching ALL the keywords special keywords -
# @flag --deep                               match substrings ('pen' matches 'opens')
# @option -r --sreg <expr>                   run a regex search
# @option -t --stag* <value>                 search bookmarks by tags use ',' to find entries matching ANY tag use '+' to find entries matching ALL tags excludes entries with tags after ' - ' list all tags, if no search keywords
# @option -x --exclude* <value>              omit records matching specified keywords
# @option -l --lock <N>                      encrypt DB in N (default 8) ♯ iterations
# @option -k --unlock <N>                    decrypt DB in N (default 8) ♯ iterations
# @flag --ai                                 auto-import (Firefox/Chrome/Chromium/Edge)
# @option -e --export <file>                 export bookmarks to Firefox format HTML export XBEL, if file ends with '.xbel' export Markdown, if file ends with '.md'
# @option -i --import[html|xbel|json|md|org|db] <file>  import bookmarks based on file extension supports 'html', 'xbel', 'json', 'md', 'org', 'db'
# @option -p --print* <value>                show record details by indices, ranges print all bookmarks, if no arguments -n shows the last n results (like tail)
# @option -f --format[10|20|30|40|50] <N>    limit fields in -p or JSON search output N=1: URL; N=2: URL, tag; N=3: title; N=4: URL, title, tag; N=5: title, tag; N0 omits DB index
# @option -j --json <file>                   JSON formatted output for -p and search.
# @option --colors                           set output colors in five-letter string
# @flag --nc                                 disable color output
# @option -n --count <N>                     show N results per page (default 10)
# @flag --np                                 do not show the subprompt, run and exit
# @option -o --open* <value>                 browse bookmarks by indices and ranges open a random bookmark, if no arguments
# @flag --oa                                 browse all search results immediately
# @option --replace <old> <new>              replace old tag with new tag everywhere delete old tag, if new tag not specified
# @option --shorten <index|URL>              fetch shortened url from tny.im service
# @option --expand <index|URL>               expand a tny.im shortened url
# @option --cached <index|URL>               browse a cached page from Wayback Machine
# @flag --suggest                            show similar tags when adding bookmarks
# @flag --tacit                              reduce verbosity, skip some confirmations
# @flag --nostdin                            do not wait for input (must be first arg)
# @option --threads <N>                      max network connections in full refresh default N=4, min N=1, max N=10
# @flag -V                                   check latest upstream version available
# @flag -g --debug                           show debug information and verbose logs
# @arg keyword                               search keywords

command eval "$(argc --argc-eval "$0" "$@")"