#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                Prints help information
# @flag -V --version                             Prints version information
# @flag --lib                                    Build only this package's library
# @option --bin[`_choice_bin`] <NAME>            Build only the specified binary
# @option --example[`_choice_example`] <NAME>    Build only the specified example
# @option --test[`_choice_test`] <NAME>          Build only the specified test target
# @option -p --package[`_choice_package`] <SPEC>  Package to build
# @flag --release                                Build artifacts in release mode, with optimizations
# @option -j --jobsof CPUs <N>                   Number of parallel jobs, defaults to
# @option --features                             Space-separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --profile                              Build with the given profile.
# @option --target[`_choice_target`]             Build for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @option -Z* <FLAG>                             Unstable (nightly-only) flags to Cargo, see 'cargo -Z help' for details
# @flag --crates                                 Per crate bloatedness
# @flag --time                                   Per crate build time. Will run `cargo clean` first
# @option --filter <CRATE|REGEXP>                Filter functions by crate
# @flag --split-std                              Split the 'std' crate to original crates like core, alloc, etc.
# @option --symbols-section <NAME>               Use custom symbols section (ELF-only) [default: .text]
# @flag --no-relative-size                       Hide 'File' and '.text' columns
# @flag --full-fn                                Print full function name with hash values
# @option -n <NUM>                               Number of lines to show, 0 to show all [default: 20]
# @flag -w --wide                                Do not trim long function names
# @option --message-format[table|json] <FMT>     Output format [default: table] [possible values: table, json]

_choice_cmd() {
	cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | awk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_depid() {
	_helper_package_json "$(_helper_option_package)" | jq -r '.dependencies[].name'
}

_choice_package() {
	cargo metadata --format-version 1 --no-deps | jq -r '.packages[].name'
}

_choice_bench() {
	_helper_package_target bench "$(_helper_option_package)"
}

_choice_bin() {
	_helper_package_target bin "$(_helper_option_package)"
}

_choice_test() {
	_helper_package_target test "$(_helper_option_package)"
}

_choice_example() {
	_helper_package_target example "$(_helper_option_package)"
}

_choice_target() {
	local targets=$(rustup target list)
	while read -r line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}

_helper_option_package() {
	echo "${argc_package:-"$argc_p"}"
}

_helper_package_target() {
	target_kind="$1"
	package_name="$2"
	_helper_package_json "$package_name" | jq -r '.targets[] | select( .kind[] | contains("'$target_kind'") ) | .name'
}

_helper_package_json() {
	package_name="$1"
	metadata_json="$(_helper_metadata_json)"
	if [[ -n "$package_name" ]]; then
		echo "$metadata_json" | jq '.packages[] | select(.name == "'"$package_name"'")'
	else
		workspace_root="$(echo "$metadata_json" | jq -r '.workspace_root')"
		manifest_path="$(_argc_util_path_join "${workspace_root}" Cargo.toml |  jq -R .)"
		echo "$metadata_json" | jq '.packages[] | select(.manifest_path == '"$manifest_path"')'
	fi
}

_helper_metadata_json() {
	cargo metadata --format-version 1 --no-deps
}

_argc_util_path_join() {
    local sep="/"
    if [[ "$OS" == "Windows_NT" ]]; then
        sep="\\"
    fi
    local base="$1"
    if [[ "$base" = *"$sep" ]]; then
        base="${base::-1}"
    fi
    echo "$base$(printf "$sep%s" "${@:2}")"
}

command eval "$(argc --argc-eval "$0" "$@")"