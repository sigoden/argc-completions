#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --version    Show version number

# {{ browser-sync start
# @cmd Start the server
# @flag --help                               Show help
# @flag --version                            Show version number
# @option -s --server <string>               Run a Local server (uses your cwd as the web root)
# @option --cwd <dir>                        Working directory
# @flag --json                               If true, certain logs will output as json only
# @option --serveStatic* <path>              Directories to serve static files from
# @option --ss* <path>                       Directories to serve static files from
# @option --port <number>                    Specify a port to use
# @option -p --proxy <string>                Proxy an existing server
# @flag --ws                                 Proxy mode only - enable websocket proxying
# @option -b --browser* <string>             Choose which browser should be auto-opened
# @flag -w --watch                           Watch files
# @option --ignore* <file>                   Ignore patterns for file watchers
# @option -f --files* <file>                 File paths to watch
# @option --index <file>                     Specify which file should be used as the index page
# @option --plugins* <string>                Load Browsersync plugins
# @option --extensions* <file>               Specify file extension fallbacks
# @option --startPath <path>                 Specify the start path for the opened browser
# @flag --single                             If true, the connect-history-api-fallback middleware will be added
# @option --https <string>                   Enable SSL for local development
# @flag --directory                          Show a directory listing for the server
# @flag --xip                                Use xip.io domain routing
# @option --tunnel <string>                  Use a public URL
# @option --open <string>                    Choose which URL is auto-opened (local, external or tunnel), or provide a url
# @flag --cors                               Add Access Control headers to every request
# @option -c --config <file>                 Specify a path to a configuration file
# @option --host <string>                    Specify a hostname to use
# @option --listen <string>                  Specify a hostname bind to (this will prevent binding to all interfaces)
# @option --logLevel <string>                Set the logger output level (silent, info or debug)
# @option --reload-delay <number>            Time in milliseconds to delay the reload event following file changes
# @option --reload-debounce <string>         Restrict the frequency in which browser:reload events can be emitted to connected clients[number]
# @option --ui-port <number>                 Specify a port for the UI to use
# @option --watchEvents* <file>              Specify which file events to respond to
# @option --no-notify <string>               Disable the notify element in browsers
# @option --no-open <string>                 Don't open a new browser window
# @option --no-snippet <string>              Disable the snippet injection
# @option --no-online <string>               Force offline usage
# @option --no-ui <string>                   Don't start the user interface
# @option --no-ghost-mode <string>           Disable Ghost Mode
# @option --no-inject-changes <file>         Reload on every file change
# @option --no-reload-on-restart <string>    Don't auto-reload all browsers following a restart
start() {
    :;
}
# }} browser-sync start

# {{ browser-sync init
# @cmd Create a configuration file
# @flag --version        Show version number
# @flag --help           Show help
# @option --cwd <dir>    Working directory
init() {
    :;
}
# }} browser-sync init

# {{ browser-sync reload
# @cmd Send a reload event over HTTP protocol
# @flag --help                  Show help
# @flag --version               Show version number
# @option -f --files* <file>    File paths to reload
# @option -p --port <number>    Target a running instance by port number
# @option -u --url <string>     Provide the full the url to the running Browsersync instance
# @option --cwd <dir>           Working directory
reload() {
    :;
}
# }} browser-sync reload

# {{ browser-sync recipe
# @cmd Generate the files for a recipe
# @flag --help                 Show help
# @flag --version              Show version number
# @option -o --output <dir>    Specify an output directory
# @option --cwd <dir>          Working directory
# @arg recipe-name!
recipe() {
    :;
}
# }} browser-sync recipe

command eval "$(argc --argc-eval "$0" "$@")"