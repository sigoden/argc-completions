#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.
# @version 0.1.35

# @flag -q --quiet                               No output printed to stdout
# @option -p --package[`_choice_package`] <SPEC>  Package(s) to check
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --workspace                              Check all packages in the workspace
# @option --exclude <SPEC>                       Exclude packages from the check
# @option -j --jobs <N>                          Number of parallel jobs, defaults to ♯ of CPUs
# @flag --lib                                    Check only this package's library
# @option --bin[`_choice_bin`] <NAME>            Check only the specified binary
# @flag --bins                                   Check all binaries
# @option --example[`_choice_example`] <NAME>    Check only the specified example
# @flag --examples                               Check all examples
# @option --test[`_choice_test`] <NAME>          Check only the specified test target
# @flag --tests                                  Check all tests
# @option --bench[`_choice_bench`] <NAME>        Check only the specified bench target
# @flag --benches                                Check all benches
# @flag --all-targets                            Check all targets
# @flag --release                                Check artifacts in release mode, with optimizations
# @option --profile <PROFILE-NAME>               Check artifacts with the specified profile
# @option --features*                            Space-separated list of features to activate
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <TRIPLE>    Check for the target triple
# @option --target-dir <DIRECTORY>               Directory for all generated artifacts
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --message-format[human|json|short] <FMT>  Error format [default: human] [possible values: human, json, short]
# @flag -v --verbose                             Use verbose output (-vv very verbose/build.rs output)
# @option --color[auto|always|never] <WHEN>      Coloring [possible values: auto, always, never]
# @flag --frozen                                 Require Cargo.lock and cache are up to date
# @flag --locked                                 Require Cargo.lock is up to date
# @flag --offline                                Run without accessing the network
# @option --output[human|json]                   Output format [default: human] [possible values: human, json]
# @option --backend[save-analysis|depinfo]       Backend to use for determining unused deps [default: depinfo] [possible values: save-analysis, depinfo]
# @flag --keep-going                             Needed because the keep-going flag is asked about by cargo code
# @flag --show-unused-transitive                 Show unused dependencies that get used transitively by main dependencies.
# @flag -h --help                                Print help information
# @flag -V --version                             Print version information

_choice_cmd() {
	cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | awk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
}

_choice_depid() {
	_helper_package_json | yq '.dependencies[].name'
}

_choice_package() {
	_helper_metadata_json | yq '.packages[].name'
}

_choice_bench() {
	_helper_package_target bench
}

_choice_bin() {
	_helper_package_target bin
}

_choice_test() {
	_helper_package_target test
}

_choice_example() {
	_helper_package_target example
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

_helper_package_target() {
	_helper_package_json | yq '.targets[] | select( .kind[] | contains("'$1'") ) | .name'
}

_helper_package_json() {
	metadata_json="$(_helper_metadata_json)"
	if [[ -n "$argc_package" ]]; then
		echo "$metadata_json" | yq '.packages[] | select(.name == "'"$argc_package"'")'
	else
		workspace_root="$(echo "$metadata_json" | yq '.workspace_root')"
		manifest_path="$(_argc_util_path_join "${workspace_root}" Cargo.toml)"
		echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
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