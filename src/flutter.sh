_patch_help() { 
    _common_edit() {
        sed '/^Usage:/,/^$/ {/^-h, --help / d;}'
    }

    if [[ "$*" == "flutter" ]]; then
        $@ --help | sed '1, /^Usage:/ d'

    elif [[ "$*" == "flutter assemble" ]]; then
        $@ --help | \
        _common_edit | \
        sed 's/^-d, --define/    --define/'

    elif [[ "$*" == "flutter symbolize" ]]; then
        $@ --help | \
        _common_edit | \
        sed 's/^-d, --debug-info/    --debug-info/'

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

    else
        $@ --help | _common_edit
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--device-id;[`_choice_device`]' \
            '--flavor(<value>)' \
            '--dart-define-from-file(<file:.json>)' \
            '--web-renderer;[auto|canvaskit|html]' \
            '--device-vmservice-port(<port>)' \
            '--host-vmservice-port(<port>)' \
            '--device-connection;[attached|both|wireless]' \
            '--dds-port(<port>)' \
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
            '--input(<key=value>)' \
            '--depfile(<file>)' \
            '--build-inputs(<file>)' \
            '--build-outputs(<file>)' \
            '--code-size-directory(<dir>)' \
            '--resource-pool-size(<n>)' \
            '--asset-dir(<dir>)' \
            '--output(<dir>)' \

    elif [[ "$*" == "flutter build"* ]]; then
        table="$( \
            echo "$table" | \
            _patch_table_edit_options \
                '--depfile(<file>)' \
                '--output(<dir>)' \
                '--build-number(<value>)' \
                '--android-project-arg(<value>)' \
        )"

        if [[ "$*" == "flutter build aar" ]]; then
            echo "$table" | \
            _patch_table_edit_options \
                '--target-platform;[android-arm|android-arm64|android-x86|android-x64]'  \

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
            '--description(<text>)' \
            '--org(<text>)' \
            '--roject-name(<text>)' \
            '--ios-language;[objc|swift]' \
            '--android-language;[java|kotlin]' \
            '--platforms;[ios|android|windows|linux|macos|web]' \
            '--template;[`_choice_create_template`]' \

    elif [[ "$*" == "flutter drive" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--use-application-binary(<file:.apk>)' \
            '--route(<value>)' \
            '--dart-entrypoint-args(<value>)' \
            '--web-launch-url(<url>)' \
            '--android-project-arg(<value)' \
            '--browser-name;[android-chrome|chrome|edge|firefox|ios-safari|safari]' \
            '--chrome-binary(<path>)' \
            '--test-arguments(<value>)' \
            '--profile-memory(<file:.json>)' \

    elif [[ "$*" == "flutter gen-l10n" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--arb-dir(<dir>)' \
            '--output-dir(<dir>)' \
            '--template-arb-file(<file>)' \
            '--output-localization-file(<file>)' \
            '--untranslated-messages-file(<file>)' \
            '--output-class(<value>)' \
            '--header(<value>)' \
            '--header-file(<file>)' \

    elif [[ "$*" == "flutter run" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--use-application-binary(<path>)' \
            '--route(<value>)' \
            '--dart-entrypoint-args(<value>)' \
            '--web-launch-url(<url>)' \
            '--pid-file(<file>)' \
            '--android-project-arg(<value)' \

    elif [[ "$*" == "flutter test" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--tags(<tag...>)' \
            '--exclude-tags(<tag...>)' \
            '--total-shards(<n>)'  \
            '--shard-index(<n>)'  \
            '--reporter;[`_choice_test_reporter`]' \
            '--test-randomize-ordering-seed(<value>)' \
            '--timeout(<value>)' \

    elif [[ "$*" == "flutter attach" ]]; then
        echo "$table" | \
        _patch_table_edit_options \
            '--debug-url(<url>)' \
            '--app-id(<url>)' \
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

    elif [[ "$*" == "flutter pub global deactivate" ]]; then
        echo "$table" | _patch_table_edit_arguments 'package;[`_choice_gloal_package`]'

    elif [[ "$*" == "flutter pub global run" ]]; then
        echo "$table" | _patch_table_edit_arguments '<package>:<executable>;[`_choice_global_package_executable`]'

    elif [[ "$*" == "flutter pub deps" ]]; then
        echo "$table" | _patch_table_edit_options '--style;[=tree|compact|list]'

    elif [[ "$*" == "flutter pub downgrade" ]] || [[ "$*" == "flutter pub upgrade" ]]; then
        echo "$table" | _patch_table_edit_arguments 'dependencies;[`_choice_package`]'

    elif [[ "$*" == "flutter pub remove" ]]; then
        echo "$table" | _patch_table_edit_arguments ';;' 'packages;*[`_choice_package`]'

    else
        echo "$table"
    fi
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

_choice_test_reporter() {
    cat <<-'EOF'
compact	A single line that updates dynamically
expanded	A separate line for each update
github	A custom reporter for GitHub Actions
json	A machine-readable format
EOF
}

_choice_channel() {
    flutter --suppress-analytics channel | tail -n +2 | sed 's/^[* ]*//'
}

_choice_device() {
    flutter --suppress-analytics devices --machine | yq '.[] | .id + "	" + .name + " • " + .targetPlatform + " • " + .sdk'
}

_choice_emulator() {
    flutter --suppress-analytics emulators | sed -n 's/^\([^ ]\+\) \+• \(.*\)$/\1\t\2/p'
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

_choice_package() {
    _helper_find_pubspec_path
    if [[ -z "$pubspec_path" ]]; then
        return
    fi
    cat "$pubspec_path" | yq '(.dependencies // {}) + (.dev_dependencies // {}) | keys | .[]'
}

_helper_find_pubspec_path() {
    pubspec_path="$(_argc_util_path_search_parent pubspec.yaml pubspec.yml)"
}