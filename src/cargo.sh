_patch_help() {
	if [[ "$*" == "cargo" ]]; then
		cargo --help
		cat <<-'EOF'
Miss commands:
    clippy 	             Checks a package to catch common mistakes and improve your Rust code.
    config               Inspect configuration values
    fetch                Fetch dependencies of a package from the network
    fix                  Automatically fix lint warnings reported by rustc
    fmt                  Formats all bin and lib files of the current crate using rustfmt.
    generate-lockfile    Generate the lockfile for a package
    git-checkout         This command has been removed
    locate-project       Print a JSON representation of a Cargo.toml file's location
    login                Save an api token from the registry locally. If token is not specified, it will be read from stdin.
    logout               Remove an API token from the registry locally
    metadata             Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
    owner                Manage the owners of a crate on the registry
    package              Assemble the local package into a distributable tarball
    pkgid                Print a fully qualified package specification
    read-manifest        Print a JSON representation of a Cargo.toml manifest.
    report               Generate and display various kinds of reports
    rustc                Compile a package, and pass extra options to the compiler
    rustdoc              Build a package's documentation, using specified custom flags.
    tree                 Display a tree visualization of a dependency graph
    vendor               Vendor all dependencies for a project locally
    verify-project       Check correctness of crate manifest
    version              Show version information
    yank                 Remove a pushed crate from the index
Args:
    <cmd>
EOF
	elif [[ "$*" == "cargo udeps" ]]; then
		cargo udeps -h | sed 's/\[cargo\]//g'
	else
		$@ --help
	fi
}

_patch_table() {
	table="$(_patch_util_add_extra_column \
		'--bench:[`_choice_bench`]' \
		'--bin:[`_choice_bin`]' \
		'--example:[`_choice_example`]' \
		'--target:[`_choice_target`]' \
		'--test:[`_choice_test`]' \
		'--package:[`_choice_package`]' \
	)"
	if [[ "$*" == "cargo" ]]; then
		echo "$table" | _patch_util_add_extra_column 'cmd:[`_choice_cmd`]'
	elif [[ "$*" == "cargo test" ]]; then
		echo "$table" | _patch_util_add_extra_column 'TESTNAME:[`_choice_testname`]'
	elif [[ "$*" == "cargo remove" ]]; then
		echo "$table" | _patch_util_add_extra_column 'DEP_ID:[`_choice_depid`]'
	else
		echo "$table"
	fi
}

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