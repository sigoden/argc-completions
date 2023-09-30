#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version    output the version number
# @flag -h --help       display help for command

# {{ playwright open
# @cmd open page in browser specified via -b, --browser
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url
open() {
    :;
}
# }} playwright open

# {{ playwright codegen
# @cmd open page and generate code for user actions
# @option -o --output <file name>                saves the generated script to a file
# @option --target <language>                    language to generate, one of javascript, playwright-test, python, python-async, python-pytest, csharp, csharp-mstest, csharp-nunit, java (default: "playwright-test")
# @option --save-trace <filename>                record a trace for the session and save it to a file
# @option --test-id-attribute <attributeName>    use the specified attribute to generate data test ID selectors
# @option -b --browser <browserType>             browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers                  block service workers
# @option --channel <channel>                    Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>                emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>                  emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>            specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors                    ignore https errors
# @option --load-storage <filename>              load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                      specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>                 specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>                comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>                  save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>         filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>              save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>                 time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>                    timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>               specify user agent string
# @option --viewport-size <size>                 specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                                display help for command
# @arg url
codegen() {
    :;
}
# }} playwright codegen

# {{ playwright install
# @cmd ensure browsers necessary for this version of Playwright are installed
# @flag --with-deps    install system dependencies for browsers
# @flag --dry-run      do not execute installation, only print information
# @flag --force        force reinstall of stable browser channels
# @flag -h --help      display help for command
# @arg browser*
install() {
    :;
}
# }} playwright install

# {{ playwright uninstall
# @cmd Removes browsers used by this installation of Playwright from the system (chromium, firefox, webkit, ffmpeg).
# @flag --all        Removes all browsers used by any Playwright installation from the system.
# @flag -h --help    display help for command
uninstall() {
    :;
}
# }} playwright uninstall

# {{ playwright install-deps
# @cmd install dependencies necessary to run browsers (will ask for sudo permissions)
# @flag --dry-run    Do not execute installation commands, only print them
# @flag -h --help    display help for command
# @arg browser*
install-deps() {
    :;
}
# }} playwright install-deps

# {{ playwright cr
# @cmd open page in Chromium
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url
cr() {
    :;
}
# }} playwright cr

# {{ playwright ff
# @cmd open page in Firefox
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url
ff() {
    :;
}
# }} playwright ff

# {{ playwright wk
# @cmd open page in WebKit
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url
wk() {
    :;
}
# }} playwright wk

# {{ playwright screenshot
# @cmd capture a page screenshot
# @option --wait-for-selector <selector>    wait for selector before taking a screenshot
# @option --wait-for-timeout <timeout>      wait for timeout in milliseconds before taking a screenshot
# @flag --full-page                         whether to take a full page screenshot (entire scrollable area)
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url!
# @arg filename!
screenshot() {
    :;
}
# }} playwright screenshot

# {{ playwright pdf
# @cmd save page as pdf
# @option --wait-for-selector <selector>    wait for given selector before saving as pdf
# @option --wait-for-timeout <timeout>      wait for given timeout in milliseconds before saving as pdf
# @option -b --browser <browserType>        browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @flag --block-service-workers             block service workers
# @option --channel <channel>               Chromium distribution channel, "chrome", "chrome-beta", "msedge-dev", etc
# @option --color-scheme <scheme>           emulate preferred color scheme, "light" or "dark"
# @option --device <deviceName>             emulate device, for example  "iPhone 11"
# @option --geolocation <coordinates>       specify geolocation coordinates, for example "37.819722,-122.478611"
# @flag --ignore-https-errors               ignore https errors
# @option --load-storage <filename>         load context storage state from the file, previously saved with --save-storage
# @option --lang <language>                 specify language / locale, for example "en-GB"
# @option --proxy-server <proxy>            specify proxy server, for example "http://myproxy:3128" or "socks5://myproxy:8080"
# @option --proxy-bypass <bypass>           comma-separated domains to bypass proxy, for example ".com,chromium.org,.domain.com"
# @option --save-har <filename>             save HAR file with all network activity at the end
# @option --save-har-glob <glob pattern>    filter entries in the HAR by matching url against this glob pattern
# @option --save-storage <filename>         save context storage state at the end, for later use with --load-storage
# @option --timezone <time zone>            time zone to emulate, for example "Europe/Rome"
# @option --timeout <timeout>               timeout for Playwright actions in milliseconds, no timeout by default
# @option --user-agent <ua string>          specify user agent string
# @option --viewport-size <size>            specify browser viewport size in pixels, for example "1280, 720"
# @flag -h --help                           display help for command
# @arg url!
# @arg filename!
pdf() {
    :;
}
# }} playwright pdf

# {{ playwright show-trace
# @cmd show trace viewer
# @option -b --browser <browserType>    browser to use, one of cr, chromium, ff, firefox, wk, webkit (default: "chromium")
# @option -h --host <host>              Host to serve trace on; specifying this option opens trace in a browser tab
# @option -p --port <port>              Port to serve trace on, 0 for any free port; specifying this option opens trace in a browser tab
# @flag --stdin                         Accept trace URLs over stdin to update the viewer
# @flag --help                          display help for command
# @arg trace*
show-trace() {
    :;
}
# }} playwright show-trace

# {{ playwright test
# @cmd Run tests with Playwright Test.
# @flag -h --help    display help for command
test() {
    :;
}
# }} playwright test

# {{ playwright show-report
# @cmd Show Playwright Test HTML report.
# @flag -h --help    display help for command
show-report() {
    :;
}
# }} playwright show-report

command eval "$(argc --argc-eval "$0" "$@")"