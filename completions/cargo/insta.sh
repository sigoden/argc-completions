#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information


# {{ cargo insta review
# @cmd Interactively review snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
review() {
    :;
}
# }} cargo insta review

# {{ cargo insta reject
# @cmd Rejects all snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
reject() {
    :;
}
# }} cargo insta reject

# {{ cargo insta accept
# @cmd Accept all snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
accept() {
    :;
}
# }} cargo insta accept

# {{ cargo insta test
# @cmd Run tests and then reviews
# @option --manifest-path <PATH>                 Path to Cargo.toml
# @option --workspace-root <PATH>                Explicit path to the workspace root
# @option -e --extensions*                       Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                              Work on all packages in the workspace
# @flag --all                                    Alias for --workspace (deprecated)
# @flag --include-ignored                        Also walk into ignored paths
# @flag --include-hidden                         Also include hidden paths
# @flag --lib                                    Test only this package's library unit tests
# @option --bin[`_choice_bin`] <bin>             Test only the specified binary
# @flag --bins                                   Test all binaries
# @option --example[`_choice_example`] <example>  Test only the specified example
# @flag --examples                               Test all examples
# @option --test[`_choice_test`] <test>          Test only the specified test target
# @flag --tests                                  Test all tests
# @option -p --package[`_choice_package`] <package>  Package to run tests for
# @flag --no-force-pass                          Disable force-passing of snapshot tests
# @flag --fail-fast                              Prevent running all tests regardless of failure
# @option --features                             Space-separated list of features to activate
# @option -j --jobsof CPUs <jobs>                Number of parallel jobs, defaults to
# @flag --release                                Build artifacts in release mode, with optimizations
# @flag --all-features                           Activate all available features
# @flag --no-default-features                    Do not activate the `default` feature
# @option --target[`_choice_target`] <target>    Build for the target triple
# @flag --review                                 Follow up with review
# @flag --accept                                 Accept all snapshots after test
# @flag --accept-unseen                          Accept all new (previously unseen)
# @flag --check                                  Instructs the test command to just assert
# @flag --keep-pending                           Do not reject pending snapshots before run
# @flag --force-update-snapshots                 Update all snapshots even if they are still matching
# @option --unreferenced[ignore|warn|reject|delete|auto] <unreferenced>  Controls what happens with unreferenced snapshots [default: ignore] [possible values: ignore, warn, reject, delete, auto]
# @option --glob-filter* <glob-filter>           Filters to apply to the insta glob feature
# @flag -Q --no-quiet                            Do not pass the quiet flag (`-q`) to tests
# @option --test-runner[auto|cargo-test|nextest] <test-runner>  Picks the test runner [default: auto] [possible values: auto, cargo-test, nextest]
# @option --color[auto|always|never] <WHEN>      Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                                Prints help information
# @flag -V --version                             Prints version information
# @arg CARGO_TEST_ARGS+                          Options passed to cargo test
test() {
    :;
}
# }} cargo insta test

# {{ cargo insta pending-snapshots
# @cmd Print a summary of all pending snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @flag --as-json                              Changes the output from human readable to JSON
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
pending-snapshots() {
    :;
}
# }} cargo insta pending-snapshots

# {{ cargo insta show
# @cmd Shows a specific snapshot
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider. Defaults to `.snap`
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto] [possible values: auto, always, never]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information
# @arg path!                                   The path to the snapshot file
show() {
    :;
}
# }} cargo insta show

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