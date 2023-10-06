#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -b --buffer-size <size>               HTTP response buffer size in bytes (default: 4096)
# @option -c --max-connections <count>          Maximum number of HTTP connections (default: 512)
# @option --max-connections-per-host <count>    Maximum number of HTTP connections per host (default: 512)
# @option --max-response-body-size <size>       Maximum response body size to read (default: 10000000)
# @option -e --exclude* <pattern>               Exclude URLs matched with given regular expressions
# @option -i --include* <pattern>               Include URLs matched with given regular expressions
# @flag --follow-robots-txt                     Follow robots.txt when scraping pages
# @flag --follow-sitemap-xml                    Scrape only pages listed in sitemap.xml (deprecated)
# @option --header* <header>                    Custom headers
# @flag -f --ignore-fragments                   Ignore URL fragments
# @option --format[text|json|junit]             Output format (default: text)
# @flag --json                                  Output results in JSON (deprecated)
# @flag --experimental-verbose-json             Include successful results in JSON (deprecated)
# @flag --junit                                 Output results as JUnit XML file (deprecated)
# @option -r --max-redirections <count>         Maximum number of redirections (default: 64)
# @option --rate-limit <rate>                   Max requests per second
# @option -t --timeout <seconds>                Timeout for HTTP requests in seconds (default: 10)
# @flag -v --verbose                            Show successful results too
# @option --proxy <host>                        HTTP proxy host
# @flag --skip-tls-verification                 Skip TLS certificate verification
# @flag --one-page-only                         Only check links found in the given URL
# @option --color[auto|always|never]            Color output (default: auto)
# @flag -h --help                               Show this help
# @flag --version                               Show version
# @arg url!

command eval "$(argc --argc-eval "$0" "$@")"