#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --display                           X display to use
# @flag --sync                                Make X calls synchronous
# @flag --g-fatal-warnings                    Make all warnings fatal
# @flag -h --help                             Print this message.
# @flag -v --version                          Print Firefox version.
# @flag --full-version                        Print Firefox version, build and platform build ids.
# @option -P <profile>                        Start with <profile>.
# @option --profile <path>                    Start with profile at <path>.
# @flag --migration                           Start with migration wizard.
# @flag --ProfileManager                      Start with ProfileManager.
# @flag --no-remote                           Do not accept or send remote commands; implies --new-instance.
# @flag --new-instance                        Open new instance, not a new window in running instance.
# @flag --safe-mode                           Disables extensions and themes for this session.
# @flag --allow-downgrade                     Allows downgrading a profile.
# @option --MOZ_LOG <modules>                 Treated as MOZ_LOG=<modules> environment variable, overrides it.
# @option --MOZ_LOG_FILE <file>               Treated as MOZ_LOG_FILE=<file> environment variable, overrides it.
# @flag --headless                            Run without a GUI.
# @flag --browser                             Open a browser window.
# @option --new-window <url>                  Open <url> in a new window.
# @option --new-tab <url>                     Open <url> in a new tab.
# @option --private-window <url>              Open <url> in a new private window.
# @flag --preferences                         Open Preferences dialog.
# @option --screenshot <path>                 Save screenshot to <path> or in working directory.
# @flag --window-size                         width[,height] Width and optionally height of screenshot.
# @option --search <term>                     Search <term> with your default search engine.
# @flag --setDefaultBrowser                   Set this app as the default browser.
# @flag --first-startup                       Run post-install actions before opening a new window.
# @flag --kiosk                               Start the browser in kiosk mode.
# @option --kiosk-monitor <num>               Place kiosk browser window on given monitor.
# @flag --disable-pinch                       Disable touch-screen and touch-pad pinch gestures.
# @flag --jsconsole                           Open the Browser Console.
# @flag --devtools                            Open DevTools on initial load.
# @option --jsdebugger <path>                 Open the Browser Toolbox.
# @flag --wait-for-jsdebugger                 Spin event loop until JS debugger connects.
# @option --start-debugger-server <[ws:][ <port> | <path> ]>  Start the devtools server on a TCP port or Unix domain socket path.
# @flag --marionette                          Enable remote control server.
# @option --remote-debugging-port <port>      Start the Firefox Remote Agent, which is a low-level remote debugging interface used for WebDriver BiDi and CDP.
# @option --remote-allow-hosts <hosts>        Values of the Host header to allow for incoming requests.
# @option --remote-allow-origins <origins>    Values of the Origin header to allow for incoming requests.
# @arg paths*

command eval "$(argc --argc-eval "$0" "$@")"