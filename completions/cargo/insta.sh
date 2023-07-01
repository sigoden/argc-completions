#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
# @flag -h --help                              Prints help information
# @flag -V --version                           Prints version information


# {{ cargo insta review
# @cmd Interactively review snapshots
# @option --manifest-path <PATH>               Path to Cargo.toml
# @option --workspace-root <PATH>              Explicit path to the workspace root
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
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
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
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
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --snapshot* <snapshot-filter>        Limits the operation to one or more snapshots
# @flag -q --quiet                             Do not print to stdout
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
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
# @option -e --extensions*                       Sets the extensions to consider.
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
# @option -j --jobs <jobs>                       Number of parallel jobs, defaults to ♯ of CPUs
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
# @option --unreferenced[ignore|warn|reject|delete|auto] <unreferenced>  Controls what happens with unreferenced snapshots [default: ignore]
# @option --glob-filter* <glob-filter>           Filters to apply to the insta glob feature
# @flag -Q --no-quiet                            Do not pass the quiet flag (`-q`) to tests
# @option --test-runner[auto|cargo-test|nextest] <test-runner>  Picks the test runner [default: auto]
# @option --color[auto|always|never] <WHEN>      Coloring [default: auto]
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
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @flag --as-json                              Changes the output from human readable to JSON
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
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
# @option -e --extensions*                     Sets the extensions to consider.
# @flag --workspace                            Work on all packages in the workspace
# @flag --all                                  Alias for --workspace (deprecated)
# @flag --include-ignored                      Also walk into ignored paths
# @flag --include-hidden                       Also include hidden paths
# @option --color[auto|always|never] <WHEN>    Coloring [default: auto]
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
		manifest_path="$(_argc_util_path_resolve -u "$workspace_root" Cargo.toml)"
		echo "$metadata_json" | yq '.packages[] | select(.manifest_path == "'"$manifest_path"'")'
	fi
}

_helper_metadata_json() {
	cargo metadata --format-version 1 --no-deps
}

_argc_util_path_resolve() {
    local format args value
    if [[ "$1" == "-p" ]]; then format=1; shift; fi # platform path
    if [[ "$1" == "-u" ]]; then format=2; shift; fi # unix path
    if [[ $# -eq 0 ]]; then args=( "$(cat)" ); else args=( "$@" ); fi
    args="$(printf "%q\n" "${args[@]}")"
    value="$(awk -v RAW_ARGS="$args" 'BEGIN {
    split(RAW_ARGS, args, "\n"); split("", parts)
    partsLen = 0; isWin = 0; sep = "/";
    for (i in args) {
        arg = args[i]
        if (arg == "\x27\x27") continue
        if (i == 1) {
            if (match(arg, /^[A-Za-z]:/)) {
                value = substr(arg, 1, 2) "\\"; arg = substr(arg, 3); isWin = 1; sep = "\\"; 
            } else if (substr(arg, 1, 1) == "/") {
                value = "/"; arg = substr(arg, 2)
            }
        }
        if (isWin == 1) gsub("\\\\", "/", arg)
        split(arg, pathParts, "/")
        for (j in pathParts) {
            pathPart = pathParts[j]
            if (pathPart == "" || pathPart == ".") continue
            if (pathPart == "..") {
                if (partsLen == 0) exit 1
                parts[partsLen] = ""; partsLen = partsLen - 1
            } else {
                partsLen = partsLen + 1; parts[partsLen] = pathPart
            }
        }
    }
    for (i = 1; i <= partsLen; i++) {
        if (i == 1) {
            value = value parts[i]
        } else {
            value = value sep parts[i]
        }
    }
    print value
}'
)"
    if [[ $? -ne 0 ]]; then exit $?;  fi
    if [[ -z "$value" ]]; then return; fi
    if [[ "$value" =~ ^[A-Za-z]: ]]; then
        if [[ "$format" -eq 2 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -u "$value"; else echo "$value"; fi
    else
        if [[ "$format" -eq 1 ]] && [[ "$ARGC_OS" == "windows" ]]; then cygpath -w "$value"; else echo "$value"; fi
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"