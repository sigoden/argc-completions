#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.

# {{ flutter bash-completion
# @cmd Output command line shell completion setup scripts.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --overwrite                           Causes the given shell completion setup script to be overwritten if it already exists.
# @flag --no-overwrite                        Causes the given shell completion setup script to be overwritten if it already exists.
bash-completion() {
    :;
}
# }} flutter bash-completion

# {{ flutter channel
# @cmd List or switch Flutter channels.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --cache-artifacts                     After switching channels, download all required binary artifacts.
# @flag --no-cache-artifacts                  After switching channels, download all required binary artifacts.
# @arg channel-name[`_choice_channel`]
channel() {
    :;
}
# }} flutter channel

# {{ flutter config
# @cmd Configure Flutter settings.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --list                                List all settings and their current values.
# @flag --clear-ios-signing-cert              Clear the saved development certificate choice used to sign apps for iOS device deployment.
# @option --android-sdk <dir>                 The Android SDK directory.
# @option --android-studio-dir <dir>          The Android Studio installation directory.
# @flag --jdk-dir                             The Java Development Kit (JDK) installation directory.
# @option --build-dir <dir>                   The relative path to override a projects build directory.
# @flag --enable-web                          Enable or disable Flutter for web.
# @flag --no-enable-web                       Enable or disable Flutter for web.
# @flag --enable-linux-desktop                Enable or disable support for desktop on Linux.
# @flag --no-enable-linux-desktop             Enable or disable support for desktop on Linux.
# @flag --enable-macos-desktop                Enable or disable support for desktop on macOS.
# @flag --no-enable-macos-desktop             Enable or disable support for desktop on macOS.
# @flag --enable-windows-desktop              Enable or disable support for desktop on Windows.
# @flag --no-enable-windows-desktop           Enable or disable support for desktop on Windows.
# @flag --enable-android                      Enable or disable Flutter for Android.
# @flag --no-enable-android                   Enable or disable Flutter for Android.
# @flag --enable-ios                          Enable or disable Flutter for iOS.
# @flag --no-enable-ios                       Enable or disable Flutter for iOS.
# @flag --enable-fuchsia                      Enable or disable Flutter for Fuchsia.
# @flag --no-enable-fuchsia                   Enable or disable Flutter for Fuchsia.
# @flag --enable-custom-devices               Enable or disable early support for custom device types.
# @flag --no-enable-custom-devices            Enable or disable early support for custom device types.
# @flag --cli-animations                      Enable or disable animations in the command line interface.
# @flag --no-cli-animations                   Enable or disable animations in the command line interface.
# @flag --enable-native-assets                Enable or disable native assets compilation and bundling.
# @flag --no-enable-native-assets             Enable or disable native assets compilation and bundling.
# @flag --clear-features                      Remove all configured features and restore them to the default values.
config() {
    :;
}
# }} flutter config

# {{ flutter doctor
# @cmd Show information about the installed tooling.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --android-licenses                    Run the Android SDK manager tool to accept the SDK's licenses.
doctor() {
    :;
}
# }} flutter doctor

# {{ flutter downgrade
# @cmd Downgrade Flutter to the last active version for the current channel.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
downgrade() {
    :;
}
# }} flutter downgrade

# {{ flutter precache
# @cmd Populate the Flutter tool's cache of binary artifacts.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag -a --all-platforms                    Precache artifacts for all host platforms.
# @flag -f --force                            Force re-downloading of artifacts.
# @flag --ios                                 Precache artifacts for iOS development.
# @flag --no-ios                              Precache artifacts for iOS development.
# @flag --web                                 Precache artifacts for web development.
# @flag --no-web                              Precache artifacts for web development.
# @flag --linux                               Precache artifacts for Linux desktop development.
# @flag --no-linux                            Precache artifacts for Linux desktop development.
# @flag --windows                             Precache artifacts for Windows desktop development.
# @flag --no-windows                          Precache artifacts for Windows desktop development.
# @flag --macos                               Precache artifacts for macOS desktop development.
# @flag --no-macos                            Precache artifacts for macOS desktop development.
# @flag --fuchsia                             Precache artifacts for Fuchsia development.
# @flag --no-fuchsia                          Precache artifacts for Fuchsia development.
# @flag --universal                           Precache artifacts required for any development platform.
# @flag --no-universal                        Precache artifacts required for any development platform.
precache() {
    :;
}
# }} flutter precache

# {{ flutter upgrade
# @cmd Upgrade your copy of Flutter.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag -f --force                            Force upgrade the flutter branch, potentially discarding local changes.
# @flag --verify-only                         Checks for any new Flutter updates, without actually fetching them.
upgrade() {
    :;
}
# }} flutter upgrade

# {{ flutter analyze
# @cmd Analyze the project's Dart code.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --current-package                     Analyze the current project, if applicable.
# @flag --no-current-package                  Analyze the current project, if applicable.
# @flag --watch                               Run analysis continuously, watching the filesystem for changes.
# @option --write <file>                      Also output the results to a file.
# @flag --suggestions                         Show suggestions about the current flutter project.
# @flag --no-suggestions                      Show suggestions about the current flutter project.
# @flag --pub                                 Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                              Whether to run "flutter pub get" before executing this command.
# @flag --congratulate                        Show output even when there are no errors, warnings, hints, or lints.
# @flag --no-congratulate                     Show output even when there are no errors, warnings, hints, or lints.
# @flag --preamble                            When analyzing the flutter repository, display the number of files that will be analyzed.
# @flag --no-preamble                         When analyzing the flutter repository, display the number of files that will be analyzed.
# @flag --fatal-infos                         Treat info level issues as fatal.
# @flag --no-fatal-infos                      Treat info level issues as fatal.
# @flag --fatal-warnings                      Treat warning level issues as fatal.
# @flag --no-fatal-warnings                   Treat warning level issues as fatal.
analyze() {
    :;
}
# }} flutter analyze

# {{ flutter assemble
# @cmd Assemble and build Flutter resources.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @option --define <target=key=value>             Allows passing configuration to a target, as in "--define=target=key=value".
# @flag --performance-measurement-file            Output individual target performance to a JSON file.
# @option -i --input <key=value>                  Allows passing additional inputs with "--input=key=value".
# @option --depfile <file>                        A file path where a depfile will be written.
# @option --build-inputs <file>                   A file path where a newline-separated file containing all inputs used will be written after a build.
# @option --build-outputs <file>                  A file path where a newline-separated file containing all outputs created will be written after a build.
# @option -o --output <dir>                       A directory where output files will be written.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --resource-pool-size <n>                The maximum number of concurrent tasks the build system will run.
assemble() {
    :;
}
# }} flutter assemble

# {{ flutter build
# @cmd Build an executable app or install bundle.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
build() {
    :;
}

# {{{ flutter build aar
# @cmd Build a repository containing an AAR and a POM file.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --debug                                   Build a debug version of the current project.
# @flag --no-debug                                Build a debug version of the current project.
# @flag --profile                                 Build a version of the current project specialized for performance profiling.
# @flag --no-profile                              Build a version of the current project specialized for performance profiling.
# @flag --release                                 Build a release version of the current project.
# @flag --no-release                              Build a release version of the current project.
# @flag --tree-shake-icons                        Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --no-tree-shake-icons                     Tree shake icon fonts so that only glyphs used by the application remain.
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @option --build-number <value>                  An identifier used as an internal version number.
# @option -o --output[aar|web] <dir>              The absolute path to the directory where the repository is generated.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @option --split-debug-info <v1.2.3/>            In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.
# @flag --obfuscate                               In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @flag --no-obfuscate                            In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option -P --android-project-arg <value>        Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.
# @option --target-platform[android-arm|android-arm64|android-x86|android-x64]  The target platform for which the project is compiled.
build::aar() {
    :;
}
# }}} flutter build aar

# {{{ flutter build apk
# @cmd Build an Android APK file from your app.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --tree-shake-icons                        Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --no-tree-shake-icons                     Tree shake icon fonts so that only glyphs used by the application remain.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @flag --debug                                   Build a debug version of your app.
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app (default mode).
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @option --build-number <value>                  An identifier used as an internal version number.
# @option --build-name <x.y.z>                    A "x.y.z" string used as the version number shown to users.
# @option --split-debug-info <v1.2.3/>            In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.
# @flag --obfuscate                               In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @flag --no-obfuscate                            In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @flag --analyze-size                            Whether to produce additional profile information for artifact output size.
# @flag --no-analyze-size                         Whether to produce additional profile information for artifact output size.
# @flag --code-size-directory                     The location to write code size analysis files.
# @option -P --android-project-arg <value>        Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.
# @flag --multidex                                When enabled, indicates that the app should be built with multidex support.
# @flag --no-multidex                             When enabled, indicates that the app should be built with multidex support.
# @flag --ignore-deprecation                      Indicates that the app should ignore deprecation warnings and continue to build using deprecated APIs.
# @flag --split-per-abi                           Whether to split the APKs per ABIs.
# @flag --config-only                             Generate build files used by flutter but do not build any artifacts.
# @flag --no-config-only                          Generate build files used by flutter but do not build any artifacts.
# @option --target-platform[android-arm|android-arm64|android-x86|android-x64]  The target platform for which the app is compiled.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
build::apk() {
    :;
}
# }}} flutter build apk

# {{{ flutter build appbundle
# @cmd Build an Android App Bundle file from your app.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --tree-shake-icons                        Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --no-tree-shake-icons                     Tree shake icon fonts so that only glyphs used by the application remain.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @flag --debug                                   Build a debug version of your app.
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app (default mode).
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @option --build-number <value>                  An identifier used as an internal version number.
# @option --build-name <x.y.z>                    A "x.y.z" string used as the version number shown to users.
# @option --split-debug-info <v1.2.3/>            In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.
# @flag --obfuscate                               In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @flag --no-obfuscate                            In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @flag --analyze-size                            Whether to produce additional profile information for artifact output size.
# @flag --no-analyze-size                         Whether to produce additional profile information for artifact output size.
# @flag --code-size-directory                     The location to write code size analysis files.
# @option -P --android-project-arg <value>        Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag.
# @flag --multidex                                When enabled, indicates that the app should be built with multidex support.
# @flag --no-multidex                             When enabled, indicates that the app should be built with multidex support.
# @flag --ignore-deprecation                      Indicates that the app should ignore deprecation warnings and continue to build using deprecated APIs.
# @option --target-platform[android-arm|android-arm64|android-x64]  The target platform for which the app is compiled.
# @flag --deferred-components                     Setting to false disables building with deferred components.
# @flag --no-deferred-components                  Setting to false disables building with deferred components.
# @flag --validate-deferred-components            When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.
# @flag --no-validate-deferred-components         When enabled, deferred component apps will fail to build if setup problems are detected that would prevent deferred components from functioning properly.
build::appbundle() {
    :;
}
# }}} flutter build appbundle

# {{{ flutter build bundle
# @cmd Build the Flutter assets directory from your app.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @option --build-number <value>                  An identifier used as an internal version number.
# @flag --debug                                   Build a debug version of your app (default mode).
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --depfile <file>                        A file path where a depfile will be written.
# @option --target-platform[android-arm|android-arm64|android-x64|ios|darwin|linux-x64|linux-arm64|windows-x64]  The architecture for which to build the application.
# @flag --asset-dir                               The output directory for the kernel_blob.bin file, the native snapshot, the assets, etc.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
build::bundle() {
    :;
}
# }}} flutter build bundle

# {{{ flutter build linux
# @cmd Build a Linux desktop application.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --debug                                   Build a debug version of your app.
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app (default mode).
# @flag --obfuscate                               In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @flag --no-obfuscate                            In a release build, this flag removes identifiers and replaces them with randomized values for the purposes of source code obfuscation.
# @option --split-debug-info <v1.2.3/>            In a release build, this flag reduces application size by storing Dart program symbols in a separate file on the host rather than in the application.
# @flag --tree-shake-icons                        Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --no-tree-shake-icons                     Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --analyze-size                            Whether to produce additional profile information for artifact output size.
# @flag --no-analyze-size                         Whether to produce additional profile information for artifact output size.
# @flag --code-size-directory                     The location to write code size analysis files.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option --build-number <value>                  An identifier used as an internal version number.
# @option --build-name <x.y.z>                    A "x.y.z" string used as the version number shown to users.
# @option --target-platform[linux-x64|linux-arm64]  The target platform for which the app is compiled.
# @option --target-sysroot <dir>                  The root filesystem path of target platform for which the app is compiled.
build::linux() {
    :;
}
# }}} flutter build linux

# {{{ flutter build web
# @cmd Build a web application bundle.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --tree-shake-icons                        Tree shake icon fonts so that only glyphs used by the application remain.
# @flag --no-tree-shake-icons                     Tree shake icon fonts so that only glyphs used by the application remain.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @option -o --output[aar|web] <dir>              The absolute path to the directory where the repository is generated.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @option --build-number <value>                  An identifier used as an internal version number.
# @option --build-name <x.y.z>                    A "x.y.z" string used as the version number shown to users.
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app (default mode).
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @flag --native-null-assertions                  Enables additional runtime null checks in web applications to ensure the correct nullability of native (such as in dart:html) and external (such as with JS interop) types.
# @flag --no-native-null-assertions               Enables additional runtime null checks in web applications to ensure the correct nullability of native (such as in dart:html) and external (such as with JS interop) types.
# @flag --base-href                               Overrides the href attribute of the <base> tag in web/index.html.
# @option --pwa-strategy[none|offline-first]      The caching strategy to be used by the PWA service worker.
# @option --web-renderer[auto|canvaskit|html]     The renderer implementation to use when building for the web.
# @flag --web-resources-cdn                       Use Web static resources hosted on a CDN.
# @flag --no-web-resources-cdn                    Use Web static resources hosted on a CDN.
# @flag --csp                                     Disable dynamic generation of code in the generated output.
# @flag --source-maps                             Generate a sourcemap file.
# @flag --no-source-maps                          Generate a sourcemap file.
# @option --dart2js-optimization[O1|O2|O3|O4]     Sets the optimization level used for Dart compilation to JavaScript.
# @flag --dump-info                               Passes "--dump-info" to the Javascript compiler which generates information about the generated code is a .js.info.json file.
# @flag --no-frequency-based-minification         Disables the frequency based minifier.
build::web() {
    :;
}
# }}} flutter build web
# }} flutter build

# {{ flutter clean
# @cmd Delete the build/ and .dart_tool/ directories.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @option --scheme <value>                    When cleaning Xcode schemes, clean only the specified scheme.
clean() {
    :;
}
# }} flutter clean

# {{ flutter create
# @cmd Create a new Flutter project.
# @flag -h --help                               Print this usage information.
# @flag -v --verbose                            Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]      Target device id or name (prefixes allowed).
# @flag --version                               Reports the version of this tool.
# @flag --enable-analytics                      Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                     Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                    Suppress analytics reporting for the current CLI invocation.
# @flag --pub                                   Whether to run "flutter pub get" after the project has been created.
# @flag --no-pub                                Whether to run "flutter pub get" after the project has been created.
# @flag --offline                               When "flutter pub get" is run by the create command, this indicates whether to run it in offline mode or not.
# @flag --no-offline                            When "flutter pub get" is run by the create command, this indicates whether to run it in offline mode or not.
# @flag --overwrite                             When performing operations, overwrite existing files.
# @flag --no-overwrite                          When performing operations, overwrite existing files.
# @option --description <text>                  The description to use for your new Flutter project.
# @option --org <text>                          The organization responsible for your new Flutter project, in reverse domain name notation.
# @flag --project-name                          The project name for this new Flutter project.
# @option -i --ios-language[objc|swift]         The language to use for iOS-specific code, either Objective-C (legacy) or Swift (recommended).
# @option -a --android-language[java|kotlin]    The language to use for Android-specific code, either Java (legacy) or Kotlin (recommended).
# @option --platforms[ios|android|windows|linux|macos|web]  The platforms supported by this project.
# @option -t --template[`_choice_create_template`] <type>  Specify the type of project to create.
# @option -s --sample <id>                      Specifies the Flutter code sample to use as the "main.dart" for an application.
# @flag -e                                      Specifies creating using an application template with a main.dart that is minimal, including no comments, as a starting point for a new application.
# @flag --empty                                 Specifies creating using an application template with a main.dart that is minimal, including no comments, as a starting point for a new application.
# @flag --no-empty                              Specifies creating using an application template with a main.dart that is minimal, including no comments, as a starting point for a new application.
# @option --list-samples <path>                 Specifies a JSON output file for a listing of Flutter code samples that can be created with "--sample".
# @arg output-directory! <output directory>
create() {
    :;
}
# }} flutter create

# {{ flutter drive
# @cmd Run integration tests for the project on an attached device or emulator.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --debug                                   Build a debug version of your app (default mode).
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @option --web-renderer[auto|canvaskit|html]     The renderer implementation to use when building for the web.
# @flag --web-resources-cdn                       Use Web static resources hosted on a CDN.
# @flag --no-web-resources-cdn                    Use Web static resources hosted on a CDN.
# @option --use-application-binary <file:.apk>    Specify a pre-built application binary to use when running.
# @flag --trace-startup                           Trace application startup, then exit, saving the trace to a file.
# @flag --cache-startup-profile                   Caches the CPU profile collected before the first frame for startup analysis.
# @flag --no-cache-startup-profile                Caches the CPU profile collected before the first frame for startup analysis.
# @flag --verbose-system-logs                     Include verbose logging from the Flutter engine.
# @flag --cache-sksl                              Cache the shader in the SkSL format instead of in binary or GLSL formats.
# @flag --dump-skp-on-shader-compilation          Automatically dump the skp that triggers new shader compilations.
# @flag --purge-persistent-cache                  Removes all existing persistent caches.
# @option --route <value>                         Which route to load when running the app.
# @flag --start-paused                            Start in a paused mode and wait for a debugger to connect.
# @flag --no-start-paused                         Start in a paused mode and wait for a debugger to connect.
# @flag --endless-trace-buffer                    Enable tracing to an infinite buffer, instead of a ring buffer.
# @flag --trace-systrace                          Enable tracing to the system tracer.
# @flag --trace-skia                              Enable tracing of Skia code.
# @flag --enable-dart-profiling                   Whether the Dart VM sampling CPU profiler is enabled.
# @flag --no-enable-dart-profiling                Whether the Dart VM sampling CPU profiler is enabled.
# @option -a --dart-entrypoint-args <value>       Pass a list of arguments to the Dart entrypoint at application startup.
# @option --web-launch-url <url>                  The URL to provide to the browser.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @option --device-vmservice-port <port>          Look for vmservice connections only from the specified port.
# @option --host-vmservice-port <port>            When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option --device-user <10>                      Identifier number for a user or work profile on Android only.
# @option --device-timeout <10>                   Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
# @option --dds-port <port>                       When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.
# @option -P --android-project-arg <<value # Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag. #>
# @flag --multidex                                When enabled, indicates that the app should be built with multidex support.
# @flag --no-multidex                             When enabled, indicates that the app should be built with multidex support.
# @flag --keep-app-running                        Will keep the Flutter application running when done testing.
# @flag --no-keep-app-running                     Will keep the Flutter application running when done testing.
# @option --use-existing-app <url>                Connect to an already running instance via the given Dart VM Service URL.
# @option --driver <path>                         The test file to run on the host (as opposed to the target file to run on the device).
# @flag --build                                   (deprecated) Build the app before running.
# @flag --no-build                                (deprecated) Build the app before running.
# @option --screenshot <path/to/directory>        Directory location to write screenshots on test failure.
# @option --driver-port <4444>                    The port where Webdriver server is launched at.
# @flag --headless                                Whether the driver browser is going to be launched in headless mode.
# @flag --no-headless                             Whether the driver browser is going to be launched in headless mode.
# @option --browser-name[android-chrome|chrome|edge|firefox|ios-safari|safari]  Name of the browser where tests will be executed.
# @option --browser-dimension <width,height>      The dimension of the browser when running a Flutter Web test.
# @flag --android-emulator                        Whether to perform Flutter Driver testing using an Android Emulator.
# @flag --no-android-emulator                     Whether to perform Flutter Driver testing using an Android Emulator.
# @option --chrome-binary <path>                  Location of the Chrome binary.
# @flag --write-sksl-on-exit                      Attempts to write an SkSL file when the drive process is finished to the provided file, overwriting it if necessary.
# @option --test-arguments <value>                Additional arguments to pass to the Dart VM running The test script.
# @option --profile-memory <file:.json>           Launch devtools and profile application memory, writing The output data to the file path provided to this argument as JSON.
# @option --timeout <360>                         Timeout the test after the given number of seconds.
drive() {
    :;
}
# }} flutter drive

# {{ flutter gen-l10n
# @cmd Generate localizations for the current project.
# @flag -h --help                                Print this usage information.
# @flag -v --verbose                             Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]       Target device id or name (prefixes allowed).
# @flag --version                                Reports the version of this tool.
# @flag --enable-analytics                       Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                      Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                     Suppress analytics reporting for the current CLI invocation.
# @option --arb-dir <dir>                        The directory where the template and translated arb files are located.
# @option --output-dir <dir>                     The directory where the generated localization classes will be written if the synthetic-package flag is set to false.
# @option --template-arb-file <file>             The template arb file that will be used as the basis for generating the Dart localization and messages files.
# @option --output-localization-file <file>      The filename for the output localization and localizations delegate classes.
# @option --untranslated-messages-file <file>    The location of a file that describes the localization messages have not been translated yet.
# @option --output-class <value>                 The Dart class name to use for the output localization and localizations delegate classes.
# @option --preferred-supported-locales <locale>  The list of preferred supported locales for the application.
# @option --header <value>                       The header to prepend to the generated Dart localizations files.
# @option --header-file <file>                   The header to prepend to the generated Dart localizations files.
# @flag --use-deferred-loading                   Whether to generate the Dart localization file with locales imported as deferred, allowing for lazy loading of each locale in Flutter web.
# @flag --no-use-deferred-loading                Whether to generate the Dart localization file with locales imported as deferred, allowing for lazy loading of each locale in Flutter web.
# @option --gen-inputs-and-outputs-list <path-to-output-directory>  When specified, the tool generates a JSON file containing the tool's inputs and outputs named gen_l10n_inputs_and_outputs.json.
# @flag --synthetic-package                      Determines whether or not the generated output files will be generated as a synthetic package or at a specified directory in the Flutter project.
# @flag --no-synthetic-package                   Determines whether or not the generated output files will be generated as a synthetic package or at a specified directory in the Flutter project.
# @option --project-dir <absolute/path/to/flutter/project>  When specified, the tool uses the path passed into this option as the directory of the root Flutter project.
# @flag --required-resource-attributes           Requires all resource ids to contain a corresponding resource attribute.
# @flag --no-required-resource-attributes        Requires all resource ids to contain a corresponding resource attribute.
# @flag --nullable-getter                        Whether or not the localizations class getter is nullable.
# @flag --no-nullable-getter                     Whether or not the localizations class getter is nullable.
# @flag --format                                 When specified, the "dart format" command is run after generating the localization files.
# @flag --no-format                              When specified, the "dart format" command is run after generating the localization files.
# @flag --use-escaping                           Whether or not to use escaping for messages.
# @flag --no-use-escaping                        Whether or not to use escaping for messages.
# @flag --suppress-warnings                      When specified, all warnings will be suppressed.
# @flag --no-suppress-warnings                   When specified, all warnings will be suppressed.
# @flag --relax-syntax                           When specified, the syntax will be relaxed so that the special character "{" is treated as a string if it is not followed by a valid placeholder and "}" is treated as a string if it does not close any previous "{" that is treated as a special character.
# @flag --no-relax-syntax                        When specified, the syntax will be relaxed so that the special character "{" is treated as a string if it is not followed by a valid placeholder and "}" is treated as a string if it does not close any previous "{" that is treated as a special character.
gen-l10n() {
    :;
}
# }} flutter gen-l10n

# {{ flutter pub
# @cmd Commands for managing Flutter packages.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
pub() {
    :;
}

# {{{ flutter pub add
# @cmd Add a dependency to pubspec.yaml.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Build executables in immediate dependencies.
# @flag --no-precompile           Build executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg section-package-descriptor <[<section>:]<package>[:descriptor]>
pub::add() {
    :;
}
# }}} flutter pub add

# {{{ flutter pub cache
# @cmd Work with the Pub system cache.
pub::cache() {
    :;
}

# {{{{ flutter pub cache add
# @cmd Install a package.
# @flag --all           Install all matching versions.
# @flag -v --version    Version constraint.
# @arg package!
pub::cache::add() {
    :;
}
# }}}} flutter pub cache add

# {{{{ flutter pub cache clean
# @cmd Clears the global PUB_CACHE.
# @flag -f --force    Don't ask for confirmation.
pub::cache::clean() {
    :;
}
# }}}} flutter pub cache clean

# {{{{ flutter pub cache repair
# @cmd Reinstall cached packages.
pub::cache::repair() {
    :;
}
# }}}} flutter pub cache repair
# }}} flutter pub cache

# {{{ flutter pub deps
# @cmd Print package dependencies.
# @option -s --style[=tree|compact|list]    How output should be displayed.
# @flag --dev                               Whether to include dev dependencies.
# @flag --no-dev                            Whether to include dev dependencies.
# @flag --executables                       List all available executables.
# @flag --json                              Output dependency information in a json format.
# @option -C --directory <dir>              Run this in the directory <dir>.
pub::deps() {
    :;
}
# }}} flutter pub deps

# {{{ flutter pub downgrade
# @cmd Downgrade packages in a Flutter project.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg dependencies*[`_choice_package`]
pub::downgrade() {
    :;
}
# }}} flutter pub downgrade

# {{{ flutter pub get
# @cmd Get the current package's dependencies.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --enforce-lockfile        Enforce pubspec.lock.
# @flag --precompile              Build executables in immediate dependencies.
# @flag --no-precompile           Build executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
pub::get() {
    :;
}
# }}} flutter pub get

# {{{ flutter pub global
# @cmd Work with Pub global packages.
pub::global() {
    :;
}

# {{{{ flutter pub global activate
# @cmd Make a package's executables globally available.
# @option -s --source[git|hosted|path]    The source used to find the package.
# @flag --git-path                        Path of git package in repository
# @flag --git-ref                         Git branch or commit to be retrieved
# @flag --no-executables                  Do not put executables on PATH.
# @flag -x --executable                   Executable(s) to place on PATH.
# @flag --overwrite                       Overwrite executables from other packages with the same name.
# @flag -u --hosted-url                   A custom pub server URL for the package.
# @arg package!
# @arg version-constraint
pub::global::activate() {
    :;
}
# }}}} flutter pub global activate

# {{{{ flutter pub global deactivate
# @cmd Remove a previously activated package.
# @arg package![`_choice_gloal_package`]
pub::global::deactivate() {
    :;
}
# }}}} flutter pub global deactivate

# {{{{ flutter pub global list
# @cmd List globally activated packages.
pub::global::list() {
    :;
}
# }}}} flutter pub global list

# {{{{ flutter pub global run
# @cmd Run an executable from a globally activated package.
# @flag --enable-asserts                      Enable assert statements.
# @flag --no-enable-asserts                   Enable assert statements.
# @option --enable-experiment <experiment>    Runs the executable in a VM with the given experiments enabled.
# @arg package-executable[`_choice_global_package_executable`] <<package>:<executable>>
# @arg args*
pub::global::run() {
    :;
}
# }}}} flutter pub global run
# }}} flutter pub global

# {{{ flutter pub login
# @cmd Log into pub.dev.
pub::login() {
    :;
}
# }}} flutter pub login

# {{{ flutter pub logout
# @cmd Log out of pub.dev.
pub::logout() {
    :;
}
# }}} flutter pub logout

# {{{ flutter pub outdated
# @cmd Analyze dependencies to find which ones can be upgraded.
# @flag --dependency-overrides       Show resolutions with `dependency_overrides`.
# @flag --no-dependency-overrides    Show resolutions with `dependency_overrides`.
# @flag --dev-dependencies           Take dev dependencies into account.
# @flag --no-dev-dependencies        Take dev dependencies into account.
# @flag --json                       Output the results using a json format.
# @flag --prereleases                Include prereleases in latest version.
# @flag --no-prereleases             Include prereleases in latest version.
# @flag --show-all                   Include dependencies that are already fulfilling --mode.
# @flag --no-show-all                Include dependencies that are already fulfilling --mode.
# @flag --transitive                 Show transitive dependencies.
# @flag --no-transitive              Show transitive dependencies.
# @option -C --directory <dir>       Run this in the directory <dir>.
pub::outdated() {
    :;
}
# }}} flutter pub outdated

# {{{ flutter pub publish
# @cmd Publish the current package to pub.dartlang.org.
# @flag -n --dry-run              Validate but do not publish the package.
# @flag -f --force                Publish without confirmation if there are no errors.
# @flag --skip-validation         Publish without validation and resolution (this will ignore errors).
# @option -C --directory <dir>    Run this in the directory <dir>.
pub::publish() {
    :;
}
# }}} flutter pub publish

# {{{ flutter pub remove
# @cmd Removes a dependency from the current package.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Precompile executables in immediate dependencies.
# @flag --no-precompile           Precompile executables in immediate dependencies.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg packages*[`_choice_package`]
pub::remove() {
    :;
}
# }}} flutter pub remove

# {{{ flutter pub run
# @cmd Run an executable from a package.
# @flag --enable-asserts                      Enable assert statements.
# @flag --no-enable-asserts                   Enable assert statements.
# @option --enable-experiment <experiment>    Runs the executable in a VM with the given experiments enabled.
# @option -C --directory <dir>                Run this in the directory <dir>.
# @arg executable!
pub::run() {
    :;
}
# }}} flutter pub run

# {{{ flutter pub test
# @cmd Run the "test" package.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @arg tests*
pub::test() {
    :;
}
# }}} flutter pub test

# {{{ flutter pub token
# @cmd Manage authentication tokens for hosted pub repositories.
pub::token() {
    :;
}

# {{{{ flutter pub token add
# @cmd Add an authentication token for a package repository.
# @option --env-var <VARIABLE>    Read the secret token from this environment variable when making requests.
# @arg hosted-url!
pub::token::add() {
    :;
}
# }}}} flutter pub token add

# {{{{ flutter pub token list
# @cmd List servers for which a token exists.
pub::token::list() {
    :;
}
# }}}} flutter pub token list

# {{{{ flutter pub token remove
# @cmd Remove secret token for package repository at <hosted-url>.
# @flag --all    Remove all secret tokens.
# @arg hosted-url!
pub::token::remove() {
    :;
}
# }}}} flutter pub token remove
# }}} flutter pub token

# {{{ flutter pub upgrade
# @cmd Upgrade the current package's dependencies to latest versions.
# @flag --offline                 Use cached packages instead of accessing the network.
# @flag --no-offline              Use cached packages instead of accessing the network.
# @flag -n --dry-run              Report what dependencies would change but don't change any.
# @flag --precompile              Precompile executables in immediate dependencies.
# @flag --no-precompile           Precompile executables in immediate dependencies.
# @flag --tighten                 Updates lower bounds in pubspec.yaml to match the resolved version.
# @flag --major-versions          Upgrades packages to their latest resolvable versions, and updates pubspec.yaml.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg dependencies*[`_choice_package`]
pub::upgrade() {
    :;
}
# }}} flutter pub upgrade

# {{{ flutter pub uploader
# @cmd Manage uploaders for a package on pub.dev.
# @flag --package                 The package whose uploaders will be modified.
# @option -C --directory <dir>    Run this in the directory <dir>.
# @arg add-remove <add/remove>
# @arg email!
pub::uploader() {
    :;
}
# }}} flutter pub uploader

# {{{ flutter pub version
# @cmd Print Pub version.
pub::version() {
    :;
}
# }}} flutter pub version
# }} flutter pub

# {{ flutter run
# @cmd Run your Flutter app on an attached device.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --debug                                   Build a debug version of your app (default mode).
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @flag --release                                 Build a release version of your app.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @option --web-renderer[auto|canvaskit|html]     The renderer implementation to use when building for the web.
# @flag --web-resources-cdn                       Use Web static resources hosted on a CDN.
# @flag --no-web-resources-cdn                    Use Web static resources hosted on a CDN.
# @option --use-application-binary <path>         Specify a pre-built application binary to use when running.
# @flag --trace-startup                           Trace application startup, then exit, saving the trace to a file.
# @flag --cache-startup-profile                   Caches the CPU profile collected before the first frame for startup analysis.
# @flag --no-cache-startup-profile                Caches the CPU profile collected before the first frame for startup analysis.
# @flag --verbose-system-logs                     Include verbose logging from the Flutter engine.
# @flag --cache-sksl                              Cache the shader in the SkSL format instead of in binary or GLSL formats.
# @flag --dump-skp-on-shader-compilation          Automatically dump the skp that triggers new shader compilations.
# @flag --purge-persistent-cache                  Removes all existing persistent caches.
# @option --route <value>                         Which route to load when running the app.
# @flag --start-paused                            Start in a paused mode and wait for a debugger to connect.
# @flag --no-start-paused                         Start in a paused mode and wait for a debugger to connect.
# @flag --endless-trace-buffer                    Enable tracing to an infinite buffer, instead of a ring buffer.
# @flag --trace-systrace                          Enable tracing to the system tracer.
# @flag --trace-skia                              Enable tracing of Skia code.
# @flag --enable-dart-profiling                   Whether the Dart VM sampling CPU profiler is enabled.
# @flag --no-enable-dart-profiling                Whether the Dart VM sampling CPU profiler is enabled.
# @option -a --dart-entrypoint-args <value>       Pass a list of arguments to the Dart entrypoint at application startup.
# @option --web-launch-url <url>                  The URL to provide to the browser.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @option --device-vmservice-port <port>          Look for vmservice connections only from the specified port.
# @option --host-vmservice-port <port>            When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option --device-user <10>                      Identifier number for a user or work profile on Android only.
# @option --device-timeout <10>                   Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
# @option --dds-port <port>                       When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.
# @option -P --android-project-arg <<value # Additional arguments specified as key=value that are passed directly to the gradle project via the -P flag. #>
# @flag --multidex                                When enabled, indicates that the app should be built with multidex support.
# @flag --no-multidex                             When enabled, indicates that the app should be built with multidex support.
# @flag --ignore-deprecation                      Indicates that the app should ignore deprecation warnings and continue to build using deprecated APIs.
# @flag --await-first-frame-when-tracing          Whether to wait for the first frame when tracing startup ("--trace-startup"), or just dump the trace as soon as the application is running.
# @flag --no-await-first-frame-when-tracing       Whether to wait for the first frame when tracing startup ("--trace-startup"), or just dump the trace as soon as the application is running.
# @flag --use-test-fonts                          Enable (and default to) the "Ahem" font.
# @flag --no-use-test-fonts                       Enable (and default to) the "Ahem" font.
# @flag --build                                   If necessary, build the app before running.
# @flag --no-build                                If necessary, build the app before running.
# @flag --hot                                     Run with support for hot reloading.
# @flag --no-hot                                  Run with support for hot reloading.
# @option --pid-file <file>                       Specify a file to write the process ID to.
run() {
    :;
}
# }} flutter run

# {{ flutter test
# @cmd Run Flutter unit tests for the current project.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --pub                                     Whether to run "flutter pub get" before executing this command.
# @flag --no-pub                                  Whether to run "flutter pub get" before executing this command.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --web-renderer[auto|canvaskit|html]     The renderer implementation to use when building for the web.
# @option --device-user <10>                      Identifier number for a user or work profile on Android only.
# @option --flavor <value>                        Build a custom app flavor as defined by platform-specific build setup.
# @option --name <regexp>                         A regular expression matching substrings of the names of tests to run.
# @option --plain-name <substring>                A plain-text substring of the names of tests to run.
# @option -t --tags* <tag>                        Run only tests associated with the specified tags.
# @option -x --exclude-tags* <tag>                Run only tests that do not have the specified tags.
# @flag --start-paused                            Start in a paused mode and wait for a debugger to connect.
# @flag --run-skipped                             Run skipped tests instead of skipping them.
# @flag --no-run-skipped                          Run skipped tests instead of skipping them.
# @flag --coverage                                Whether to collect coverage information.
# @flag --merge-coverage                          Whether to merge coverage data with "coverage/lcov.base.info".
# @flag --branch-coverage                         Whether to collect branch coverage information.
# @flag --coverage-path                           Where to store coverage information (if coverage is enabled).
# @option --coverage-package <package-name-regexp>  A regular expression matching packages names to include in the coverage report (if coverage is enabled).
# @flag --update-goldens                          Whether "matchesGoldenFile()" calls within your test methods should update the golden files rather than test for an existing match.
# @option -j --concurrency <jobs>                 The number of concurrent test processes to run.
# @flag --test-assets                             Whether to build the assets bundle for testing.
# @flag --no-test-assets                          Whether to build the assets bundle for testing.
# @option --test-randomize-ordering-seed <value>  The seed to randomize the execution order of test cases within test files.
# @option --total-shards <n>                      Tests can be sharded with the "--total-shards" and "--shard-index" arguments, allowing you to split up your test suites and run them separately.
# @option --shard-index <n>                       Tests can be sharded with the "--total-shards" and "--shard-index" arguments, allowing you to split up your test suites and run them separately.
# @option -r --reporter[`_choice_test_reporter`]  Set how to print test results.
# @flag --file-reporter                           Enable an additional reporter writing test results to a file.
# @option --timeout <value>                       The default test timeout, specified either in seconds (e.g. "60s"), as a multiplier of the default timeout (e.g. "2x"), or as the string "none" to disable the timeout entirely.
# @option --dds-port <port>                       When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.
test() {
    :;
}
# }} flutter test

# {{ flutter attach
# @cmd Attach to a running app.
# @flag -h --help                                 Print this usage information.
# @flag -v --verbose                              Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]        Target device id or name (prefixes allowed).
# @flag --version                                 Reports the version of this tool.
# @flag --enable-analytics                        Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                       Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                      Suppress analytics reporting for the current CLI invocation.
# @flag --debug                                   Build a debug version of your app (default mode).
# @flag --profile                                 Build a version of your app specialized for performance profiling.
# @option -t --target <path>                      The main entry-point file of the application, as run on the device.
# @option --device-vmservice-port <port>          Look for vmservice connections only from the specified port.
# @option --host-vmservice-port <port>            When a device-side vmservice port is forwarded to a host-side port, use this value as the host port.
# @option --dart-define <foo=bar>                 Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, and int.fromEnvironment constructors.
# @option --dart-define-from-file <file:.json>    The path of a .json or .env file containing key-value pairs that will be available as environment variables.
# @option --device-user <10>                      Identifier number for a user or work profile on Android only.
# @option --debug-url <url>                       The URL at which the Dart VM Service is listening.
# @option --app-id <url>                          The package name (Android) or bundle identifier (iOS) for the app.
# @option --pid-file <file>                       Specify a file to write the process ID to.
# @flag --track-widget-creation                   Track widget creation locations.
# @flag --no-track-widget-creation                Track widget creation locations.
# @option --dds-port <port>                       When this value is provided, the Dart Development Service (DDS) will be bound to the provided port.
# @option --device-timeout <10>                   Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
attach() {
    :;
}
# }} flutter attach

# {{ flutter custom-devices
# @cmd List, reset, add and delete custom devices.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
custom-devices() {
    :;
}

# {{{ flutter custom-devices add
# @cmd Add a new device the custom devices config file.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --check                               Make sure the config actually works.
# @flag --no-check                            Make sure the config actually works.
# @option --json* <"id": "pi">                Add the custom device described by this JSON-encoded string to the list of custom-devices instead of using the normal, interactive way of configuring.
# @flag --ssh                                 Add a ssh-device.
custom-devices::add() {
    :;
}
# }}} flutter custom-devices add

# {{{ flutter custom-devices delete
# @cmd Delete a device from the config file.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
custom-devices::delete() {
    :;
}
# }}} flutter custom-devices delete

# {{{ flutter custom-devices list
# @cmd List the currently configured custom devices, both enabled and disabled, reachable or not.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
custom-devices::list() {
    :;
}
# }}} flutter custom-devices list

# {{{ flutter custom-devices reset
# @cmd Reset the config file to the default.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
custom-devices::reset() {
    :;
}
# }}} flutter custom-devices reset
# }} flutter custom-devices

# {{ flutter devices
# @cmd List all connected devices.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --machine                             Output device information in machine readable structured JSON format.
# @option --device-timeout <10>               Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
devices() {
    :;
}
# }} flutter devices

# {{ flutter emulators
# @cmd List, launch and create emulators.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @option --launch[`_choice_emulator`]        The full or partial ID of the emulator to launch.
# @flag --cold                                Used with the "--launch" flag to cold boot the emulator instance (Android only).
# @flag --create                              Creates a new Android emulator based on a Pixel device.
# @option --name <value>                      Used with the "--create" flag.
emulators() {
    :;
}
# }} flutter emulators

# {{ flutter install
# @cmd Install a Flutter app on an attached device.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag --debug                               Build a debug version of your app.
# @flag --profile                             Build a version of your app specialized for performance profiling.
# @flag --release                             Build a release version of your app (default mode).
# @option --use-application-binary <path/to/app.apk>  Specify a pre-built application binary to use when running.
# @option --device-timeout <10>               Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
# @option --device-user <10>                  Identifier number for a user or work profile on Android only.
# @option --flavor <value>                    Build a custom app flavor as defined by platform-specific build setup.
# @flag --uninstall-only                      Uninstall the app if already on the device.
# @flag --no-uninstall-only                   Uninstall the app if already on the device.
install() {
    :;
}
# }} flutter install

# {{ flutter logs
# @cmd Show log output for running Flutter apps.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @flag -c --clear                            Clear log history before reading from logs.
# @option --device-timeout <10>               Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
logs() {
    :;
}
# }} flutter logs

# {{ flutter screenshot
# @cmd Take a screenshot from a connected device.
# @flag -h --help                                  Print this usage information.
# @flag -v --verbose                               Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]         Target device id or name (prefixes allowed).
# @flag --version                                  Reports the version of this tool.
# @flag --enable-analytics                         Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                        Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                       Suppress analytics reporting for the current CLI invocation.
# @option -o --out <path/to/file>                  Location to write the screenshot.
# @option --vm-service-url <URI>                   The VM Service URL to which to connect.
# @option --type[device|rasterizer|skia] <type>    The type of screenshot to retrieve.
# @option --device-timeout <10>                    Time in seconds to wait for devices to attach.
# @option --device-connection[attached|both|wireless]  Discover devices based on connection type.
screenshot() {
    :;
}
# }} flutter screenshot

# {{ flutter symbolize
# @cmd Symbolize a stack trace from an AOT-compiled Flutter app.
# @flag -h --help                             Print this usage information.
# @flag -v --verbose                          Noisy logging, including all shell commands executed.
# @option -d --device-id[`_choice_device`]    Target device id or name (prefixes allowed).
# @flag --version                             Reports the version of this tool.
# @flag --enable-analytics                    Enable telemetry reporting each time a flutter or dart command runs.
# @flag --disable-analytics                   Disable telemetry reporting each time a flutter or dart command runs, until it is re-enabled.
# @flag --suppress-analytics                  Suppress analytics reporting for the current CLI invocation.
# @option --debug-info <file>                 A path to the symbols file generated with "--split-debug-info".
# @option -i --input <path>                   A file path containing a Dart stack trace.
# @option -o --output <path>                  A file path for a symbolized stack trace to be written to.
symbolize() {
    :;
}
# }} flutter symbolize

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_device() {
    flutter --suppress-analytics devices --machine | yq '.[] | .id + "	" + .name + " • " + .targetPlatform + " • " + .sdk'
}

_choice_channel() {
    flutter --suppress-analytics channel | tail -n +2 | sed 's/^[* ]*//'
}

_choice_create_template() {
    cat <<-'EOF'
app	Generate a Flutter application.
module	Generate a project to add a Flutter module to an existing Android or iOS application.
package	Generate a shareable Flutter project containing modular Dart code.
plugin	Generate a shareable Flutter project containing an API in Dart code with a platform-specific implementation through method channels for Android, iOS, Linux, macOS, Windows, web, or any combination of these.
plugin_ffi	Generate a shareable Flutter project containing an API in Dart code with a platform-specific implementation through dart:ffi for Android, iOS, Linux, macOS, Windows, or any combination of these.
skeleton	Generate a List View / Detail View Flutter application that follows community best practices.
EOF
}

_choice_package() {
    _helper_find_pubspec_path
    if [[ -z "$pubspec_path" ]]; then
        return
    fi
    cat "$pubspec_path" | yq '(.dependencies // {}) + (.dev_dependencies // {}) | keys | .[]'
}

_choice_gloal_package() {
    flutter pub global list | sed 's/ /\t/'
}

_choice_global_package_executable() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_gloal_package | _argc_util_transform suffix=: nospace
    else
        pkg_subpath="$(flutter pub global list | gawk -v NAME="$argc__kv_key" '{if($1 == NAME){ print $1 "-" $2 }}')"
        pkg_path="$HOME/.pub-cache/hosted/pub.dev/$pkg_subpath/bin"
        if [[ -d  "$pkg_path" ]]; then
            ls -1 "$pkg_path" | sed 's/\.dart$//'
        fi
    fi
}

_choice_test_reporter() {
    cat <<-'EOF'
compact	A single line that updates dynamically
expanded	A separate line for each update
github	A custom reporter for GitHub Actions
json	A machine-readable format
EOF
}

_choice_emulator() {
    flutter --suppress-analytics emulators | sed -n 's/^\([^ ]\+\) \+• \(.*\)$/\1\t\2/p'
}

_helper_find_pubspec_path() {
    pubspec_path="$(_argc_util_path_search_parent pubspec.yaml pubspec.yml)"
}

command eval "$(argc --argc-eval "$0" "$@")"