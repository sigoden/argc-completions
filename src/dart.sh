_patch_help() {
    $@ --help | \
        sed \
            -e 's/ <subcommand> \[arguments...\]//' \
            -e '/^\s*-h -v/ d' \

}

_patch_table() { 
    if [[ "$*" == "dart compile"* ]]; then
        _patch_table_edit_options \
            '--output(<file>)' \
            '--target-os;[android|fuchsia|ios|linux|macos|windows]' \
            '--verbosity;[`_choice_log_verbosity`]' \
        | \
        _patch_table_edit_arguments 'dart-entry-point(dart-entry-point <file:.dart>)'

    elif [[ "$*" == "dart create" ]]; then
        _patch_table_edit_options '--template;[`_choice_create_template`]'

    elif [[ "$*" == "dart format" ]]; then
        _patch_table_edit_options '--output;[`_choice_format_output`]'

    elif [[ "$*" == "dart pub deps" ]]; then
        _patch_table_edit_options '--style;[=tree|compact|list]'

    elif [[ "$*" == "dart pub downgrade" ]] \
      || [[ "$*" == "dart pub upgrade" ]] \
    ; then
        _patch_table_edit_arguments 'dependencies;[`_choice_package`]'

    elif [[ "$*" == "dart pub global deactivate" ]]; then
        _patch_table_edit_arguments 'package;[`_choice_gloal_package`]'

    elif [[ "$*" == "dart pub global run" ]]; then
        _patch_table_edit_arguments '<package>:<executable>;[`_choice_global_package_executable`]'

    elif [[ "$*" == "dart pub remove" ]]; then
        _patch_table_edit_arguments ';;' 'packages;*[`_choice_package`]'

    elif [[ "$*" == "dart run" ]]; then
        _patch_table_edit_options '--verbosity;[`_choice_log_verbosity`]' | \
        _patch_table_edit_arguments ';;' '<dart-file|package-target>' 'args...'

    else
        cat
    fi
}

_choice_log_verbosity() {
    cat <<-'EOF'
all	Show all messages
error	Show only error messages
info	Show error, warning, and info messages
warning	Show only error and warning messages
EOF
}

_choice_create_template() {
    cat <<-'EOF'
console	A command-line application.
package	A package containing shared Dart libraries.
server-shelf	A server app using package:shelf.
web	A web app that uses only core Dart libraries.
EOF
}

_choice_format_output() {
    cat <<-'EOF'
json	Print code and selection as JSON.
none	Discard output.
show	Print code to terminal.
write	Overwrite formatted files on disk.
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
    dart pub global list | sed 's/ /\t/'
}

_choice_global_package_executable() {
    _argc_util_mode_kv :
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_gloal_package | _argc_util_transform suffix=: nospace
    else
        pkg_subpath="$(dart pub global list | gawk -v NAME="$argc__kv_key" '{if($1 == NAME){ print $1 "-" $2 }}')"
        pkg_path="$HOME/.pub-cache/hosted/pub.dev/$pkg_subpath/bin"
        if [[ -d  "$pkg_path" ]]; then
            ls -1 "$pkg_path" | sed 's/\.dart$//'
        fi
    fi
}

_helper_find_pubspec_path() {
    pubspec_path="$(_argc_util_path_search_parent pubspec.yaml pubspec.yml)"
}
