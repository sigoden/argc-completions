_patch_help() { 
    _common_edit() {
        sed \
            -e '/^Usage:/,/^$/ {/^-h, --help / d;}' \
            -e 's/ <subcommand> \[arguments...\]//' \

    }

    if [[ "$*" == "flutter" ]]; then
        $@ --help | \
        sed \
            -e '1, /^Usage:/ d'  \
            -e '/^\(Flutter SDK\|Project\|Tools & Devices\)/ d' \

    elif [[ "$*" == "flutter assemble" ]]; then
        $@ --help | \
        _common_edit | \
        sed 's/^-d, --define/    --define/'

    elif [[ "$*" == "flutter pub downgrade" ]] \
      || [[ "$*" == "flutter pub outdated" ]] \
      || [[ "$*" == "flutter pub publish" ]] \
      || [[ "$*" == "flutter pub run" ]] \
    ; then
        ( \
            cd /tmp && \
            touch pubspec.yaml && \
            $@ --help | \
            _common_edit \
        )

    elif [[ "$*" == "flutter pub version" ]]; then
        :;

    elif [[ "$*" == "flutter symbolize" ]]; then
        $@ --help | \
        _common_edit | \
        sed 's/^-d, --debug-info/    --debug-info/'

    else
        $@ --help | _common_edit
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--dart-define-from-file(<file:.json>)' \
            '--dds-port(<port>)' \
            '--device-connection;[attached|both|wireless]' \
            '--device-id;[`_choice_device`]' \
            '--device-vmservice-port(<port>)' \
            '--flavor(<value>)' \
            '--host-vmservice-port(<port>)' \
            '--web-renderer;[auto|canvaskit|html]' \
    )"

    if [[ "$*" == "flutter channel" ]]; then
        echo "$table" | _patch_table_edit_arguments 'channel-name;[`_choice_channel`]'

    elif [[ "$*" == "flutter config" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--android-sdk(<dir>)' \
            '--android-studio-dir(<dir>)' \
            '--build-dir(<dir>)' \

    elif [[ "$*" == "flutter assemble" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--asset-dir(<dir>)' \
            '--build-inputs(<file>)' \
            '--build-outputs(<file>)' \
            '--code-size-directory(<dir>)' \
            '--depfile(<file>)' \
            '--input(<key=value>)' \
            '--output(<dir>)' \
            '--resource-pool-size(<n>)' \

    elif [[ "$*" == "flutter build"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--android-project-arg(<value>)' \
                '--build-number(<value>)' \
                '--depfile(<file>)' \
                '--output(<dir>)' \
        )"

        if [[ "$*" == "flutter build aar" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[android-arm|android-arm64|android-x86|android-x64]' \

        elif [[ "$*" == "flutter build apk" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[android-arm|android-arm64|android-x86|android-x64]' \

        elif [[ "$*" == "flutter build appbundle" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[android-arm|android-arm64|android-x64]' \

        elif [[ "$*" == "flutter build bundle" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[android-arm|android-arm64|android-x64|ios|darwin|linux-x64|linux-arm64|windows-x64]' \

        elif [[ "$*" == "flutter build linux" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[linux-x64|linux-arm64]' \
                '--target-sysroot(<dir>)' \

        elif [[ "$*" == "flutter build web" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--pwa-strategy;[none|offline-first]' \

        else
            echo "$table"
        fi

    elif [[ "$*" == "flutter clean" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--scheme(<value>)' \

    elif [[ "$*" == "flutter create" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--android-language;[java|kotlin]' \
            '--description(<text>)' \
            '--ios-language;[objc|swift]' \
            '--org(<text>)' \
            '--platforms;[ios|android|windows|linux|macos|web]' \
            '--roject-name(<text>)' \
            '--template;[`_choice_create_template`]' \

    elif [[ "$*" == "flutter drive" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--android-project-arg(<value)' \
            '--browser-name;[android-chrome|chrome|edge|firefox|ios-safari|safari]' \
            '--chrome-binary(<path>)' \
            '--dart-entrypoint-args(<value>)' \
            '--profile-memory(<file:.json>)' \
            '--route(<value>)' \
            '--test-arguments(<value>)' \
            '--use-application-binary(<file:.apk>)' \
            '--web-launch-url(<url>)' \

    elif [[ "$*" == "flutter gen-l10n" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--arb-dir(<dir>)' \
            '--header(<value>)' \
            '--header-file(<file>)' \
            '--output-class(<value>)' \
            '--output-dir(<dir>)' \
            '--output-localization-file(<file>)' \
            '--template-arb-file(<file>)' \
            '--untranslated-messages-file(<file>)' \

    elif [[ "$*" == "flutter pub deps" ]]; then
        echo "$table" | _patch_table_edit_options '--style;[=tree|compact|list]'

    elif [[ "$*" == "flutter pub downgrade" ]] \
      || [[ "$*" == "flutter pub upgrade" ]] \
    ; then
        echo "$table" | _patch_table_edit_arguments 'dependencies;[`_choice_package`]'

    elif [[ "$*" == "flutter pub global deactivate" ]]; then
        echo "$table" | _patch_table_edit_arguments 'package;[`_choice_gloal_package`]'

    elif [[ "$*" == "flutter pub global run" ]]; then
        echo "$table" | _patch_table_edit_arguments '<package>:<executable>;[`_choice_global_package_executable`]'

    elif [[ "$*" == "flutter pub remove" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'packages;*[`_choice_package`]'

    elif [[ "$*" == "flutter run" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--android-project-arg(<value)' \
            '--dart-entrypoint-args(<value>)' \
            '--pid-file(<file>)' \
            '--route(<value>)' \
            '--use-application-binary(<path>)' \
            '--web-launch-url(<url>)' \

    elif [[ "$*" == "flutter test" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--exclude-tags(<tag...>)' \
            '--reporter;[`_choice_test_reporter`]' \
            '--shard-index(<n>)' \
            '--tags(<tag...>)' \
            '--test-randomize-ordering-seed(<value>)' \
            '--timeout(<value>)' \
            '--total-shards(<n>)' \

    elif [[ "$*" == "flutter attach" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--app-id(<url>)' \
            '--debug-url(<url>)' \
            '--pid-file(<file>)' \


    elif [[ "$*" == "flutter emulators" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--launch;[`_choice_emulator`]' \
            '--name(<value>)' \

    elif [[ "$*" == "flutter screenshot" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--type;[device|rasterizer|skia]' \

    elif [[ "$*" == "flutter symbolize" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--debug-info(<file>)' \
            '--input(<path>)' \
            '--output(<path>)' \

    else
        echo "$table"
    fi
}

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
