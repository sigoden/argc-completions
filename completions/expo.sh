#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -V --version         output the version number
# @flag --non-interactive    Fail, if an interactive prompt would be required to continue.
# @flag -h --help            output usage information

# {{ expo init
# @cmd Create a new Expo project
# @option -t --template <name>    Specify which template to use.
# @flag --npm                     Use npm to install dependencies.
# @flag --no-install              Skip installing npm packages or CocoaPods.
# @option --name <name>           Deprecated: Use expo init [name] instead.
# @flag --yes                     Use default options.
# @flag --yarn                    Use Yarn to install dependencies.
# @flag -h --help                 output usage information
# @arg name
init() {
    :;
}
# }} expo init

# {{ expo start
# @cmd Start a local dev server for the app
# @option -s --send-to <dest>                      An email address to send a link to
# @flag -c --clear                                 Clear the Metro bundler cache
# @option --max-workers <num>                      Maximum number of tasks to allow Metro to spawn.
# @flag --no-dev                                   Turn development mode off
# @flag --minify                                   Minify code
# @flag --https                                    To start webpack with https protocol
# @option --force-manifest-type <manifest-type>    Override auto detection of manifest type
# @option -p --port <port>                         Port to start the native Metro bundler on (does not apply to web or tunnel).
# @flag --dev-client                               Experimental: Starts the bundler for use with the expo-development-client
# @option --scheme <scheme>                        Custom URI protocol to use with a development build
# @flag -a --android                               Opens your app in Expo Go on a connected Android device
# @flag -i --ios                                   Opens your app in Expo Go in a currently running iOS simulator on your computer
# @flag -w --web                                   Opens your app in a web browser
# @option -m --host[`_choice_host`] <mode>         lan (default), tunnel, localhost.
# @flag --tunnel                                   Same as --host tunnel
# @flag --lan                                      Same as --host lan
# @flag --localhost                                Same as --host localhost
# @flag --offline                                  Allows this command to run while offline
# @flag --dev                                      Deprecated: Dev mode is used by default
# @flag --no-minify                                Deprecated: Minify is disabled by default
# @flag --no-https                                 Deprecated: https is disabled by default
# @option --config <file>                          Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                                  output usage information
# @arg path
start() {
    :;
}
# }} expo start

# {{ expo start:web
# @cmd Start a Webpack dev server for the web app
# @flag --no-dev                                   Turn development mode off
# @flag --minify                                   Minify code
# @flag --https                                    To start webpack with https protocol
# @option --force-manifest-type <manifest-type>    Override auto detection of manifest type
# @option -p --port <port>                         Port to start the Webpack bundler on.
# @option -s --send-to <dest>                      An email address to send a link to
# @flag --dev-client                               Experimental: Starts the bundler for use with the expo-development-client
# @option --scheme <scheme>                        Custom URI protocol to use with a development build
# @flag -a --android                               Opens your app in Expo Go on a connected Android device
# @flag -i --ios                                   Opens your app in Expo Go in a currently running iOS simulator on your computer
# @flag -w --web                                   Opens your app in a web browser
# @option -m --host <mode>                         lan (default), tunnel, localhost.
# @flag --tunnel                                   Same as --host tunnel
# @flag --lan                                      Same as --host lan
# @flag --localhost                                Same as --host localhost
# @flag --offline                                  Allows this command to run while offline
# @flag --dev                                      Deprecated: Dev mode is used by default
# @flag --no-minify                                Deprecated: Minify is disabled by default
# @flag --no-https                                 Deprecated: https is disabled by default
# @option --config <file>                          Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                                  output usage information
# @arg path
start:web() {
    :;
}
# }} expo start:web

# {{ expo export
# @cmd Export the static files of the app for hosting it on a web server
# @option --platform[all|android|ios]    Platforms: android, ios, all (default: all)
# @option -p --public-url <url>          The public url that will host the static files (required)
# @flag -c --clear                       Clear the Metro bundler cache
# @option --output-dir <dir>             The directory to export the static files to (default: dist)
# @option -a --asset-url <url>           The absolute or relative url that will host the asset files (default: ./assets)
# @flag -d --dump-assetmap               Dump the asset map for further processing
# @flag --dev                            Configure static files for developing locally using a non-https server
# @flag -s --dump-sourcemap              Dump the source map for debugging the JS bundle
# @flag -q --quiet                       Suppress verbose output
# @option -t --target <managed|bare>     Target environment for which this export is intended
# @option --merge-src-dir <dir>          A repeatable source dir to merge in (default: )
# @option --merge-src-url <url>          A repeatable source tar.gz file URL to merge in (default: )
# @option --max-workers <num>            Maximum number of tasks to allow Metro to spawn
# @flag --experimental-bundle            export bundles for use with EAS updates
# @option --config <file>                Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                        output usage information
# @arg path
export() {
    :;
}
# }} expo export

# {{ expo install
# @cmd Install a module or other package to a project
# @flag --npm        Use npm to install dependencies.
# @flag --yarn       Use Yarn to install dependencies.
# @flag -h --help    output usage information
# @arg packages*
install() {
    :;
}
# }} expo install

# {{ expo run:android
# @cmd Run the Android app binary locally
# @flag --no-bundler              Skip starting the Metro bundler
# @option -d --device <device>    Device name to build the app on
# @option -p --port <port>        Port to start the Metro bundler on.
# @option --variant <name>        (Android) build variant (default: debug)
# @option --config <file>         Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                 output usage information
# @arg path
run:android() {
    :;
}
# }} expo run:android

# {{ expo run:ios
# @cmd Run the iOS app binary locally
# @flag --no-build-cache                     Clear the native derived data before building
# @flag --no-install                         Skip installing dependencies
# @flag --no-bundler                         Skip starting the Metro bundler
# @option -d --device <device>               Device name or UDID to build the app on
# @option -p --port <port>                   Port to start the Metro bundler on.
# @option --scheme <scheme>                  Scheme to build
# @option --configuration <configuration>    Xcode configuration to use.
# @option --config <file>                    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                            output usage information
# @arg path
run:ios() {
    :;
}
# }} expo run:ios

# {{ expo send
# @cmd Share the project's URL to an email address
# @option -s --send-to <dest>    Email address to send the URL to
# @flag --dev-client             Experimental: Starts the bundler for use with the expo-development-client
# @option --scheme <scheme>      Custom URI protocol to use with a development build
# @flag -a --android             Opens your app in Expo Go on a connected Android device
# @flag -i --ios                 Opens your app in Expo Go in a currently running iOS simulator on your computer
# @flag -w --web                 Opens your app in a web browser
# @option -m --host <mode>       lan (default), tunnel, localhost.
# @flag --tunnel                 Same as --host tunnel
# @flag --lan                    Same as --host lan
# @flag --localhost              Same as --host localhost
# @option --config <file>        Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                output usage information
# @arg path
send() {
    :;
}
# }} expo send

# {{ expo login
# @cmd Login to an Expo account
# @option -u --username <string>    Username
# @option -p --password <string>    Password
# @option --otp <string>            One-time password from your 2FA device
# @flag -h --help                   output usage information
login() {
    :;
}
# }} expo login

# {{ expo logout
# @cmd Logout of an Expo account
# @flag -h --help    output usage information
logout() {
    :;
}
# }} expo logout

# {{ expo register
# @cmd Sign up for a new Expo account
# @flag -h --help    output usage information
register() {
    :;
}
# }} expo register

# {{ expo whoami
# @cmd Return the currently authenticated account
# @flag -h --help    output usage information
whoami() {
    :;
}
# }} expo whoami

# {{ expo client:install:ios
# @cmd Install Expo Go for iOS on the simulator
# @flag --latest     Install the latest version of Expo Go, ignoring the current project version.
# @flag -h --help    output usage information
client:install:ios() {
    :;
}
# }} expo client:install:ios

# {{ expo client:install:android
# @cmd Install Expo Go for Android on a connected device or emulator
# @option -d --device <device>    Device name to install the client on
# @flag --latest                  Install the latest version of Expo Go, ignore the current project version.
# @flag -h --help                 output usage information
client:install:android() {
    :;
}
# }} expo client:install:android

# {{ expo config
# @cmd Show the project config
# @option -t --type[public|prebuild|introspect]    Type of config to show.
# @flag --full                                     Include all project config data
# @flag --json                                     Output in JSON format
# @option --config <file>                          Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                                  output usage information
# @arg path
config() {
    :;
}
# }} expo config

# {{ expo doctor
# @cmd Diagnose issues with the project
# @flag --fix-dependencies    Fix incompatible dependency versions
# @option --config <file>     Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help             output usage information
# @arg path
doctor() {
    :;
}
# }} expo doctor

# {{ expo upgrade
# @cmd Upgrade the project packages and config for the given SDK version
# @flag --npm        Use npm to install dependencies.
# @flag --yarn       Use Yarn to install dependencies.
# @flag -h --help    output usage information
# @arg sdk-version
upgrade() {
    :;
}
# }} expo upgrade

# {{ expo customize:web
# @cmd Eject the default web files for customization
# @flag -f --force           Allows replacing existing files
# @flag --offline            Allows this command to run while offline
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
customize:web() {
    :;
}
# }} expo customize:web

# {{ expo prebuild
# @cmd Create native iOS and Android project files before building natively.
# @flag --no-install               Skip installing npm packages and CocoaPods.
# @flag --clean                    Delete the native folders and regenerate them before applying changes
# @flag --npm                      Use npm to install dependencies.
# @option --template <template>    Project template to clone from.
# @option -p --platform[ios|android|all] <all|android|ios>  Platforms to sync: ios, android, all.
# @option --skip-dependency-update <dependencies>  Preserves versions of listed packages in package.json (comma separated list)
# @option --config <file>          Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                  output usage information
# @arg path
prebuild() {
    :;
}
# }} expo prebuild

# {{ expo build:web
# @cmd Build the web app for production
# @flag -c --clear           Clear all cached build files and assets.
# @flag --no-pwa             Prevent webpack from generating the manifest.json and injecting meta into the index.html head.
# @flag -d --dev             Turns dev flag on before bundling
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
build:web() {
    :;
}
# }} expo build:web

# {{ expo credentials:manager
# @cmd Superseded by eas credentials in eas-cli
# @option -p --platform <android|ios>    Platform: [android|ios]
# @option --config <file>                Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                        output usage information
# @arg path
credentials:manager() {
    :;
}
# }} expo credentials:manager

# {{ expo url
# @cmd Log a URL for opening the project in Expo Go
# @flag --dev-client           Experimental: Starts the bundler for use with the expo-development-client
# @option --scheme <scheme>    Custom URI protocol to use with a development build
# @flag -a --android           Opens your app in Expo Go on a connected Android device
# @flag -i --ios               Opens your app in Expo Go in a currently running iOS simulator on your computer
# @flag -w --web               Opens your app in a web browser
# @option -m --host <mode>     lan (default), tunnel, localhost.
# @flag --tunnel               Same as --host tunnel
# @flag --lan                  Same as --host lan
# @flag --localhost            Same as --host localhost
# @flag --offline              Allows this command to run while offline
# @option --config <file>      Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help              output usage information
# @arg path
url() {
    :;
}
# }} expo url

# {{ expo url:ipa
# @cmd Log the download URL for the standalone iOS binary
# @option --public-url <url>    The URL of an externally hosted manifest (for self-hosted apps)
# @option --config <file>       Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help               output usage information
# @arg path
url:ipa() {
    :;
}
# }} expo url:ipa

# {{ expo url:apk
# @cmd Log the download URL for the standalone Android binary
# @option --public-url <url>    The URL of an externally hosted manifest (for self-hosted apps)
# @option --config <file>       Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help               output usage information
# @arg path
url:apk() {
    :;
}
# }} expo url:apk

# {{ expo webhooks
# @cmd List all webhooks for a project
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
webhooks() {
    :;
}
# }} expo webhooks

# {{ expo webhooks:add
# @cmd Add a webhook to a project
# @option --url <url>             URL to request.
# @option --event <event-type>    Event type that triggers the webhook.
# @option --secret <secret>       Secret used to create a hash signature of the request payload, provided in the 'Expo-Signature' header.
# @option --config <file>         Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                 output usage information
# @arg path
webhooks:add() {
    :;
}
# }} expo webhooks:add

# {{ expo webhooks:remove
# @cmd Delete a webhook
# @option --id <id>          ID of the webhook to remove.
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
webhooks:remove() {
    :;
}
# }} expo webhooks:remove

# {{ expo webhooks:update
# @cmd Update an existing webhook
# @option --id <id>               ID of the webhook to update.
# @option --url <url>             URL the webhook will request.
# @option --event <event-type>    Event type that triggers the webhook.
# @option --secret <secret>       Secret used to create a hash signature of the request payload, provided in the 'Expo-Signature' header.
# @option --config <file>         Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                 output usage information
# @arg path
webhooks:update() {
    :;
}
# }} expo webhooks:update

# {{ expo build:ios
# @cmd Superseded by eas build in eas-cli
# @flag -c --clear-credentials                  Clear all credentials stored on Expo servers.
# @flag --clear-dist-cert                       Remove Distribution Certificate stored on Expo servers.
# @flag --clear-push-key                        Remove Push Notifications Key stored on Expo servers.
# @flag --clear-push-cert                       Remove Push Notifications Certificate stored on Expo servers.
# @flag --clear-provisioning-profile            Remove Provisioning Profile stored on Expo servers.
# @flag -r --revoke-credentials                 Revoke credentials on developer.apple.com, select appropriate using --clear-* options.
# @option --apple-id <login>                    Apple ID username (please also set the Apple ID password as EXPO_APPLE_PASSWORD environment variable).
# @option -t --type <archive|simulator>         Type of build: [archive|simulator].
# @option --release-channel <name>              Pull from specified release channel.
# @flag --no-publish                            Disable automatic publishing before building.
# @flag --no-wait                               Exit immediately after scheduling build.
# @option --team-id <apple-teamId>              Apple Team ID.
# @option --dist-p12-path <path>                Path to your Distribution Certificate P12 (set password as EXPO_IOS_DIST_P12_PASSWORD environment variable).
# @option --push-id <push-id>                   Push Key ID (ex: 123AB4C56D).
# @option --push-p8-path <path>                 Path to your Push Key .p8 file.
# @option --provisioning-profile-path <path>    Path to your Provisioning Profile.
# @option --public-url <url>                    The URL of an externally hosted manifest (for self-hosted apps).
# @flag --skip-credentials-check                Skip checking credentials.
# @flag --skip-workflow-check                   Skip warning about build service bare workflow limitations.
# @option --config <file>                       Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                               output usage information
# @arg path
build:ios() {
    :;
}
# }} expo build:ios

# {{ expo build:android
# @cmd Superseded by eas build in eas-cli
# @flag -c --clear-credentials          Clear stored credentials.
# @option --release-channel <name>      Pull from specified release channel.
# @flag --no-publish                    Disable automatic publishing before building.
# @flag --no-wait                       Exit immediately after triggering build.
# @option --keystore-path <path>        Path to your Keystore: *.jks.
# @option --keystore-alias <alias>      Keystore Alias
# @flag --generate-keystore             [deprecated] Generate Keystore if one does not exist
# @option --public-url <url>            The URL of an externally hosted manifest (for self-hosted apps)
# @flag --skip-workflow-check           Skip warning about build service bare workflow limitations.
# @option -t --type <app-bundle|apk>    Type of build: [app-bundle|apk].
# @option --config <file>               Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                       output usage information
# @arg path
build:android() {
    :;
}
# }} expo build:android

# {{ expo build:status
# @cmd Superseded by eas build:list in eas-cli
# @option --public-url <url>    The URL of an externally hosted manifest (for self-hosted apps).
# @option --config <file>       Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help               output usage information
# @arg path
build:status() {
    :;
}
# }} expo build:status

# {{ expo eject
# @cmd Superseded by expo prebuild
# @flag --no-install         Skip installing npm packages and CocoaPods.
# @flag --npm                Use npm to install dependencies.
# @option -p --platform[ios|android|all] <all|android|ios>  Platforms to sync: ios, android, all.
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
eject() {
    :;
}
# }} expo eject

# {{ expo fetch:ios:certs
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
fetch:ios:certs() {
    :;
}
# }} expo fetch:ios:certs

# {{ expo fetch:android:keystore
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
fetch:android:keystore() {
    :;
}
# }} expo fetch:android:keystore

# {{ expo fetch:android:hashes
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
fetch:android:hashes() {
    :;
}
# }} expo fetch:android:hashes

# {{ expo fetch:android:upload-cert
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
fetch:android:upload-cert() {
    :;
}
# }} expo fetch:android:upload-cert

# {{ expo publish
# @cmd Superseded by eas update in eas-cli
# @flag -q --quiet                      Suppress verbose output from the Metro bundler.
# @option -s --send-to <dest>           A phone number or email address to send a link to
# @flag -c --clear                      Clear the Metro bundler cache
# @option -t --target <managed|bare>    Target environment for which this publish is intended.
# @option --max-workers <num>           Maximum number of tasks to allow Metro to spawn.
# @option --release-channel <name>      The release channel to publish to.
# @option --config <file>               Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                       output usage information
# @arg path
publish() {
    :;
}
# }} expo publish

# {{ expo publish:set
# @cmd Superseded by eas update:republish in eas-cli
# @option -c --release-channel <name>     The channel to set the published release.
# @option -p --publish-id <publish-id>    The id of the published release to serve from the channel.
# @option --config <file>                 Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                         output usage information
# @arg path
publish:set() {
    :;
}
# }} expo publish:set

# {{ expo publish:rollback
# @cmd Superseded by eas update:republish in eas-cli
# @option --channel-id <channel-id>      This flag is deprecated.
# @option -c --release-channel <name>    The channel to rollback from.
# @option -s --sdk-version <version>     The sdk version to rollback.
# @option -p --platform <android|ios>    The platform to rollback.
# @option --config <file>                Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                        output usage information
# @arg path
publish:rollback() {
    :;
}
# }} expo publish:rollback

# {{ expo publish:history
# @cmd Superseded by eas update:list in eas-cli
# @option -c --release-channel <name>    Filter by release channel.
# @option --count <number-of-logs>       Number of logs to view, maximum 100, default 5.
# @option -p --platform <android|ios>    Filter by platform, android or ios.
# @option -s --sdk-version <version>     Filter by SDK version e.g. 35.0.0
# @flag -r --raw                         Produce some raw output.
# @option --config <file>                Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                        output usage information
# @arg path
publish:history() {
    :;
}
# }} expo publish:history

# {{ expo publish:details
# @cmd Superseded by eas update:view in eas-cli
# @option --publish-id <publish-id>    Publication id.
# @flag -r --raw                       Produce some raw output.
# @option --config <file>              Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                      output usage information
# @arg path
publish:details() {
    :;
}
# }} expo publish:details

# {{ expo push:android:upload
# @cmd Superseded by eas credentials in eas-cli
# @option --api-key <api-key>    Server API key for FCM.
# @option --config <file>        Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                output usage information
# @arg path
push:android:upload() {
    :;
}
# }} expo push:android:upload

# {{ expo push:android:show
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
push:android:show() {
    :;
}
# }} expo push:android:show

# {{ expo push:android:clear
# @cmd Superseded by eas credentials in eas-cli
# @option --config <file>    Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help            output usage information
# @arg path
push:android:clear() {
    :;
}
# }} expo push:android:clear

# {{ expo upload:android
# @cmd Superseded by eas submit in eas-cli
# @flag --verbose                                Migrate to eas submit --verbose
# @flag --latest                                 Migrate to eas submit --latest
# @option --id <id>                              Migrate to eas submit --id <id>
# @option --path <path>                          Migrate to eas submit --path <path>
# @option --url <url>                            Migrate to eas submit --url <url>
# @option --android-package <android-package>    Migrate to eas submit (android-package is auto inferred)
# @option --type <archive-type>                  Migrate to eas submit (type is auto inferred)
# @option --key <key>                            Migrate to eas.json's serviceAccountKeyPath property
# @option --track <track>                        Migrate to eas.json's track property
# @option --release-status <release-status>      Migrate to eas.json's releaseStatus property
# @option --config <file>                        Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                                output usage information
# @arg path
upload:android() {
    :;
}
# }} expo upload:android

# {{ expo upload:ios
# @cmd Superseded by eas submit in eas-cli
# @flag --verbose                          Migrate to eas submit --verbose
# @flag --latest                           Migrate to eas submit --latest
# @option --id <id>                        Migrate to eas submit --id <id>
# @option --path <path>                    Migrate to eas submit --path <path>
# @option --url <url>                      Migrate to eas submit --url <url>
# @option --apple-id <apple-id>            Migrate to eas.json's appleId property
# @option --itc-team-id <itc-team-id>      Migrate to eas.json's appleTeamId property
# @option --app-name <app-name>            Migrate to eas.json's appName property
# @option --company-name <company-name>    Migrate to eas.json's companyName property
# @option --sku <sku>                      Migrate to eas.json's sku property
# @option --language <language>            Migrate to eas.json's language property
# @option --config <file>                  Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help                          output usage information
# @arg path
upload:ios() {
    :;
}
# }} expo upload:ios

# {{ expo client:ios
# @cmd Superseded by Expo Dev Clients
# @option --apple-id <login>    Apple ID username (please also set the Apple ID password as EXPO_APPLE_PASSWORD environment variable).
# @option --config <file>       Deprecated: Use app.config.js to switch config files instead.
# @flag -h --help               output usage information
# @arg path
client:ios() {
    :;
}
# }} expo client:ios

_choice_host() {
    cat <<-'EOF'
lan	Use the local network
tunnel	Use any network by tunnel through ngrok
localhost	Connect to the dev server over localhost
EOF
}

command eval "$(argc --argc-eval "$0" "$@")"