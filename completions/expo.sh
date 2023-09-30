#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -v --version    Version number
# @flag -h --help       Usage info

# {{ expo start
# @cmd
# @flag -a --android                            Open on a connected Android device
# @flag -i --ios                                Open in an iOS simulator
# @flag -w --web                                Open in a web browser
# @flag -d --dev-client                         Launch in a custom native app
# @flag -g --go                                 Launch in Expo Go
# @flag -c --clear                              Clear the bundler cache
# @option --max-workers <number>                Maximum number of tasks to allow Metro to spawn
# @flag --no-dev                                Bundle in production mode
# @flag --minify                                Minify JavaScript
# @option -m --host[`_choice_host`] <string>    Dev server hosting type.
# @flag --tunnel                                Same as --host tunnel
# @flag --lan                                   Same as --host lan
# @flag --localhost                             Same as --host localhost
# @flag --offline                               Skip network requests and use anonymous manifest signatures
# @flag --https                                 Start the dev server with https protocol
# @option --scheme <scheme>                     Custom URI protocol to use when launching an app
# @option -p --port <number>                    Port to start the dev server on (does not apply to web or tunnel).
# @option --force-manifest-type[expo-updates|classic] <string>  Override auto detection of manifest type.
# @option --private-key-path <path>             Path to private key for code signing.
# @flag -h --help                               Usage info
start() {
    :;
}
# }} expo start

# {{ expo export
# @cmd
# @flag --dev                       Configure static files for developing locally using a non-https server
# @option --output-dir <dir>        The directory to export the static files to.
# @option --max-workers <number>    Maximum number of tasks to allow the bundler to spawn
# @flag --dump-assetmap             Dump the asset map for further processing
# @flag --dump-sourcemap            Dump the source map for debugging the JS bundle
# @option -p --platform[android|ios|web|all] <platform>  Options: android, ios, web, all.
# @flag --no-minify                 Prevent minifying source
# @flag -c --clear                  Clear the bundler cache
# @flag -h --help                   Usage info
export() {
    :;
}
# }} expo export

# {{ expo export:web
# @cmd
# @flag --dev         Bundle in development mode
# @flag -c --clear    Clear the bundler cache
# @flag -h --help     Usage info
export:web() {
    :;
}
# }} expo export:web

# {{ expo run:ios
# @cmd
# @flag --no-build-cache                     Clear the native derived data before building
# @flag --no-install                         Skip installing dependencies
# @flag --no-bundler                         Skip starting the Metro bundler
# @option --scheme <scheme>                  Scheme to build
# @option --configuration <configuration>    Xcode configuration to use.
# @option -d --device <device>               Device name or UDID to build the app on
# @option -p --port <port>                   Port to start the Metro bundler on.
# @flag -h --help                            Usage info
run:ios() {
    :;
}
# }} expo run:ios

# {{ expo run:android
# @cmd
# @flag --no-build-cache          Clear the native build cache
# @flag --no-install              Skip installing dependencies
# @flag --no-bundler              Skip starting the bundler
# @option --variant <name>        Build variant.
# @option -d --device <device>    Device name to run the app on
# @option -p --port <port>        Port to start the dev server on.
# @flag -h --help                 Output usage information
run:android() {
    :;
}
# }} expo run:android

# {{ expo prebuild
# @cmd
# @flag --no-install               Skip installing npm packages and CocoaPods
# @flag --clean                    Delete the native folders and regenerate them before applying changes
# @flag --npm                      Use npm to install dependencies.
# @flag --yarn                     Use Yarn to install dependencies.
# @flag --pnpm                     Use pnpm to install dependencies.
# @option --template <template>    Project template to clone from.
# @option -p --platform[ios|android|all] <all|android|ios>  Platforms to sync: ios, android, all.
# @option --skip-dependency-update <dependencies>  Preserves versions of listed packages in package.json (comma separated list)
# @flag -h --help                  Usage info
prebuild() {
    :;
}
# }} expo prebuild

# {{ expo install
# @cmd
# @flag --check      Check which installed packages need to be updated
# @flag --fix        Automatically update any invalid package versions
# @flag --npm        Use npm to install dependencies.
# @flag --yarn       Use Yarn to install dependencies.
# @flag --pnpm       Use pnpm to install dependencies.
# @flag -h --help    Usage info
install() {
    :;
}
# }} expo install

# {{ expo customize
# @cmd
# @flag -h --help    Usage info
customize() {
    :;
}
# }} expo customize

# {{ expo config
# @cmd
# @flag --full                                     Include all project config data
# @flag --json                                     Output in JSON format
# @option -t --type[public|prebuild|introspect]    Type of config to show
# @flag -h --help                                  Usage info
config() {
    :;
}
# }} expo config

# {{ expo login
# @cmd
# @option -u --username <string>    Username
# @option -p --password <string>    Password
# @option --otp <string>            One-time password from your 2FA device
# @flag -h --help                   Usage info
login() {
    :;
}
# }} expo login

# {{ expo logout
# @cmd
# @flag -h --help    Usage info
logout() {
    :;
}
# }} expo logout

# {{ expo whoami
# @cmd
# @flag -h --help    Usage info
whoami() {
    :;
}
# }} expo whoami

# {{ expo register
# @cmd
# @flag -h --help    Usage info
register() {
    :;
}
# }} expo register

_choice_host() {
    cat <<-'EOF'
lan	Use the local network
tunnel	Use any network by tunnel through ngrok
localhost	Connect to the dev server over localhost
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"