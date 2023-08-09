#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            show this help message and exit
# @flag --no-download                        Do not perform download test
# @flag --no-upload                          Do not perform upload test
# @flag --single                             Only use a single connection instead of multiple.
# @flag --bytes                              Display values in bytes instead of bits.
# @flag --share                              Generate and provide a URL to the speedtest.net share results image, not displayed with --csv
# @flag --simple                             Suppress verbose output, only show basic information
# @flag --csv                                Suppress verbose output, only show basic information in CSV format.
# @option --csv-delimiter <CSV_DELIMITER>    Single character delimiter to use in CSV output.
# @flag --csv-header                         Print CSV headers
# @flag --json                               Suppress verbose output, only show basic information in JSON format.
# @flag --list                               Display a list of speedtest.net servers sorted by distance
# @option --server                           Specify a server ID to test against.
# @option --exclude                          Exclude a server from selection.
# @option --mini                             URL of the Speedtest Mini server
# @option --source                           Source IP address to bind to
# @option --timeout                          HTTP timeout in seconds.
# @flag --secure                             Use HTTPS instead of HTTP when communicating with speedtest.net operated servers
# @flag --no-pre-allocate                    Do not pre allocate upload data.
# @flag --version                            Show the version number and exit

command eval "$(argc --argc-eval "$0" "$@")"