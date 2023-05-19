_patch_help() {
	if [[ "$*" == "cargo" ]]; then
		cargo --help
		cat <<-'EOF'
Miss commands:
	audit                Audit Cargo.lock files for vulnerable crates
	bloat                Find out what takes most of the space in your executable
	clippy 	             Checks a package to catch common mistakes and improve your Rust code.
	config               Inspect configuration values
    fetch                Fetch dependencies of a package from the network
    fix                  Automatically fix lint warnings reported by rustc
    fmt                  Formats all bin and lib files of the current crate using rustfmt.
    generate-lockfile    Generate the lockfile for a package
    git-checkout         This command has been removed
    insta                A helper utility to work with insta snapshots
    locate-project       Print a JSON representation of a Cargo.toml file's location
    login                Save an api token from the registry locally. If token is not specified, it will be read from stdin.
    logout               Remove an API token from the registry locally
    metadata             Output the resolved dependencies of a package, the concrete used versions including overrides, in machine-readable format
    outdated             Displays information about project dependency versions
    owner                Manage the owners of a crate on the registry
    package              Assemble the local package into a distributable tarball
    pkgid                Print a fully qualified package specification
    read-manifest        Print a JSON representation of a Cargo.toml manifest.
    report               Generate and display various kinds of reports
    rustc                Compile a package, and pass extra options to the compiler
    rustdoc              Build a package's documentation, using specified custom flags.
    tree                 Display a tree visualization of a dependency graph
    udeps                Find unused dependencies in Cargo.toml
    vendor               Vendor all dependencies for a project locally
    verify-project       Check correctness of crate manifest
    version              Show version information
    yank                 Remove a pushed crate from the index
Args:
    <cmd>
EOF
	else
		$@ --help
	fi
}

_patch_table() {
	table="$(_patch_util_bind_choices_fn \
		'--bench:_choice_bench' \
		'--bin:_choice_bin' \
		'--example:_choice_example' \
		'--target:_choice_target' \
		'--test:_choice_test' \
		'--package:_choice_package' \
	)"
	if [[ "$*" == "cargo" ]]; then
		echo "$table" | _patch_util_bind_choices_fn 'cmd:_choice_cmd'
	elif [[ "$*" == "cargo test" ]]; then
		echo "$table" | _patch_util_bind_choices_fn 'TESTNAME:_choice_testname'
	elif [[ "$*" == "cargo remove" ]]; then
		echo "$table" | _patch_util_bind_choices_fn 'DEP_ID:_choice_depid'
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