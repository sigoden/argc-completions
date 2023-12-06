#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -goroot <dir>                 Go root directory (default "/home/sigo/.asdf/installs/golang/1.21.4/go")
# @option -http <string>                HTTP service address (default "localhost:6060")
# @flag -index                          enable search index
# @option -index_files <file>           glob pattern specifying index files; if not empty, the index is read from these files in sorted order
# @option -index_interval <duration>    interval of indexing; 0 for default (5m), negative to only index once at startup
# @option -index_throttle <float>       index throttle value; 0.0 = no time allocated, 1.0 = full throttle (default 0.75)
# @flag -links                          link identifiers to their declarations (default true)
# @option -maxresults <int>             maximum number of full text search results shown (default 10000)
# @option -notes <string>               regular expression matching note markers to show (default "BUG")
# @flag -play                           enable playground
# @option -templates <dir>              load templates/JS/CSS from disk in this directory
# @flag -timestamps                     show timestamps with directory listings
# @option -url <string>                 print HTML for named URL
# @flag -v                              verbose mode
# @flag -write_index                    write index to a file; the file name must be specified with -index_files
# @option -zip <file>                   zip file providing the file system to serve; disabled if empty

command eval "$(argc --argc-eval "$0" "$@")"