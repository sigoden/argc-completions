#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <CONFIG_FILE>              Configuration file to use
# @flag -v --verbose*                            Set verbosity level; more output per occurrence (e.g. `-v` or `-vv`)
# @flag -q --quiet*                              Less output per occurrence (e.g. `-q` or `-qq`)
# @flag -n --no-progress                         Do not show progress bar.
# @flag --cache                                  Use request cache stored on disk at `.lycheecache`
# @option --max-cache-age <MAX_CACHE_AGE>        Discard all cached requests older than this duration
# @flag --dump                                   Don't perform any link checking.
# @option --archive[wayback]                     Specify the use of a specific web archive.
# @flag --suggest                                Suggest link replacements for broken links, using a web archive.
# @option -m --max-redirects <MAX_REDIRECTS>     Maximum number of allowed redirects
# @option --max-retries <MAX_RETRIES>            Maximum number of retries per request
# @option --max-concurrency <MAX_CONCURRENCY>    Maximum number of concurrent network requests
# @option -T --threads                           Number of threads to utilize.
# @option -u --user-agent <USER_AGENT>           User agent
# @flag -i --insecure                            Proceed for server connections considered insecure (invalid TLS)
# @option -s --scheme                            Only test links with the given schemes (e.g. http and https)
# @flag --offline                                Only check local files and block network requests
# @option --include                              URLs to check (supports regex).
# @option --exclude                              Exclude URLs and mail addresses from checking (supports regex)
# @option --exclude-file <EXCLUDE_FILE>          Deprecated; use `--exclude-path` instead
# @option --exclude-path <EXCLUDE_PATH>          Exclude file path from getting checked
# @flag -E --exclude-all-private                 Exclude all private IPs from checking.
# @flag --exclude-private                        Exclude private IP address ranges from checking
# @flag --exclude-link-local                     Exclude link-local IP address range from checking
# @flag --exclude-loopback                       Exclude loopback IP address range and localhost from checking
# @flag --exclude-mail                           Exclude all mail addresses from checking
# @option --remap                                Remap URI matching pattern to different URI
# @option --header                               Custom request header
# @option -a --accept                            Comma-separated list of accepted status codes for valid links
# @option -t --timeout                           Website timeout in seconds from connect to response finished
# @option -r --retry-wait-time <RETRY_WAIT_TIME>  Minimum wait time in seconds between retries of failed requests
# @option -X --method                            Request method
# @option -b --base                              Base URL or website root directory to check relative URLs e.g. https://example.com or `/path/to/public`
# @option --basic-auth <BASIC_AUTH>              Basic authentication support.
# @option --github-token <GITHUB_TOKEN>          GitHub API token to use when checking github.com links, to avoid rate limiting
# @flag --skip-missing                           Skip missing input files (default is to error if they don't exist)
# @flag --include-verbatim                       Find links in verbatim sections like `pre`- and `code` blocks
# @flag --glob-ignore-case                       Ignore case when expanding filesystem path glob inputs
# @option -o --output                            Output file of status report
# @option -f --format[compact|detailed|json|markdown]  Output format of final status report
# @flag --require-https                          When HTTPS is available, treat HTTP links as errors
# @flag -h --help                                Print help (see a summary with '-h')
# @flag -V --version                             Print version
# @arg inputs+                                   The inputs (where to get links to check from).

command eval "$(argc --argc-eval "$0" "$@")"