#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                 Print help (see more with '--help')
# @flag -V --version                              Print version
# @option -u --url                                The target URL (required, unless [--stdin || --resume-from] used)
# @flag --stdin                                   Read url(s) from STDIN
# @option --resume-from <STATE_FILE>              State file from which to resume a partially complete scan (ex.
# @flag --burp                                    Set --proxy to http://127.0.0.1:8080 and set --insecure to true
# @flag --burp-replay                             Set --replay-proxy to http://127.0.0.1:8080 and set --insecure to true
# @flag --smart                                   Set --auto-tune, --collect-words, and --collect-backups to true
# @flag --thorough                                Use the same settings as --smart and set --collect-extensions to true
# @option -p --proxy                              Proxy to use for requests (ex: http(s)://host:port, socks5(h)://host:port)
# @option -P --replay-proxy <REPLAY_PROXY>        Send only unfiltered requests through a Replay Proxy, instead of all requests
# @option -R --replay-codes* <REPLAY_CODE>        Status Codes to send through a Replay Proxy when found (default: --status-codes value)
# @option -a --user-agent <USER_AGENT>            Sets the User-Agent (default: feroxbuster/2.10.1)
# @flag -A --random-agent                         Use a random User-Agent
# @option -x --extensions* <FILE_EXTENSION>       File extension(s) to search for (ex: -x php -x pdf js); reads values (newline-separated) from file if input starts with an @ (ex: @ext.txt)
# @option -m --methods* <HTTP_METHODS>            Which HTTP request method(s) should be sent (default: GET)
# @option --data                                  Request's Body; can read data from a file if input starts with an @ (ex: @post.bin)
# @option -H --headers* <HEADER>                  Specify HTTP headers to be used in each request (ex: -H Header:val -H 'stuff: things')
# @option -b --cookies* <COOKIE>                  Specify HTTP cookies to be used in each request (ex: -b stuff=things)
# @option -Q --query*                             Request's URL query parameters (ex: -Q token=stuff -Q secret=key)
# @flag -f --add-slash                            Append / to each request's URL
# @option --dont-scan* <URL>                      URL(s) or Regex Pattern(s) to exclude from recursion/scans
# @option -S --filter-size* <SIZE>                Filter out messages of a particular size (ex: -S 5120 -S 4927,1970)
# @option -X --filter-regex* <REGEX>              Filter out messages via regular expression matching on the response's body (ex: -X '^ignore me$')
# @option -W --filter-words* <WORDS>              Filter out messages of a particular word count (ex: -W 312 -W 91,82)
# @option -N --filter-lines* <LINES>              Filter out messages of a particular line count (ex: -N 20 -N 31,30)
# @option -C --filter-status* <STATUS_CODE>       Filter out status codes (deny list) (ex: -C 200 -C 401)
# @option --filter-similar-to* <UNWANTED_PAGE>    Filter out pages that are similar to the given page (ex.
# @option -s --status-codes* <STATUS_CODE>        Status Codes to include (allow list) (default: All Status Codes)
# @option -T --timeout <SECONDS>                  Number of seconds before a client's request times out (default: 7)
# @flag -r --redirects                            Allow client to follow redirects
# @flag -k --insecure                             Disables TLS certificate validation in the client
# @option --server-certs* <PEM|DER>               Add custom root certificate(s) for servers with unknown certificates
# @option --client-cert <PEM>                     Add a PEM encoded certificate for mutual authentication (mTLS)
# @option --client-key <PEM>                      Add a PEM encoded private key for mutual authentication (mTLS)
# @option -t --threads                            Number of concurrent threads (default: 50)
# @flag -n --no-recursion                         Do not scan recursively
# @option -d --depth <RECURSION_DEPTH>            Maximum recursion depth, a depth of 0 is infinite recursion (default: 4)
# @flag --force-recursion                         Force recursion attempts on all 'found' endpoints (still respects recursion depth)
# @flag --dont-extract-links                      Don't extract links from response body (html, javascript, etc...)
# @option -L --scan-limit[0|i] <SCAN_LIMIT>       Limit total number of concurrent scans (default: 0, i.e.
# @option --parallel <PARALLEL_SCANS>             Run parallel feroxbuster instances (one child process per url passed via stdin)
# @option --rate-limit[0|i] <RATE_LIMIT>          Limit number of requests per second (per directory) (default: 0, i.e.
# @option --time-limit <TIME_SPEC>                Limit total run time of all scans (ex: --time-limit 10m)
# @option -w --wordlist <FILE>                    Path or URL of the wordlist
# @flag --auto-tune                               Automatically lower scan rate when an excessive amount of errors are encountered
# @flag --auto-bail                               Automatically stop scanning when an excessive amount of errors are encountered
# @flag -D --dont-filter                          Don't auto-filter wildcard responses
# @flag -E --collect-extensions                   Automatically discover extensions and add them to --extensions (unless they're in --dont-collect)
# @flag -B --collect-backups                      Automatically request likely backup extensions for "found" urls
# @flag -g --collect-words                        Automatically discover important words from within responses and add them to the wordlist
# @option -I --dont-collect* <FILE_EXTENSION>     File extension(s) to Ignore while collecting extensions (only used with --collect-extensions)
# @flag -v --verbosity*                           Increase verbosity level (use -vv or more for greater effect.
# @flag --silent                                  Only print URLs (or JSON w/ --json) + turn off logging (good for piping a list of urls to other commands)
# @flag -q --quiet                                Hide progress bars and banner (good for tmux windows w/ notifications)
# @flag --json                                    Emit JSON logs to --output and --debug-log instead of normal text
# @option -o --output <FILE>                      Output file to write results to (use w/ --json for JSON entries)
# @option --debug-log <FILE>                      Output file to write log entries (use w/ --json for JSON entries)
# @flag --no-state                                Disable state output file (*.state)
# @flag -U --update                               Update feroxbuster to the latest version

command eval "$(argc --argc-eval "$0" "$@")"