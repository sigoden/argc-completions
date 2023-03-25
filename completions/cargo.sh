#!/usr/bin/env bash
# Generated with `./generate.sh cargo`. DON'T MODIFY IT

# @flag --list
# @option --explain <CODE>
# @flag -v --verbose
# @flag -q --quiet
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @arg cmd[`_choice_cmd`]

# {{{ cargo build
# @cmd
# @alias b
# @flag -q --quiet
# @option -p --package <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose*
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --out-dir <PATH>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --build-plan
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
build() {
    :;
}
# }}} cargo build


# {{{ cargo check
# @cmd
# @alias c
# @flag -q --quiet
# @option -p --package <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag -v --verbose
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @option -j --jobs <N>
# @flag --frozen
# @flag --keep-going
# @flag --lib
# @flag --locked
# @option --bin[`_choice_bin`] <NAME>
# @flag --offline
# @flag --bins
# @option --config <KEY=VALUE>
# @option --example[`_choice_example`] <NAME>
# @option -Z <FLAG>
# @flag --examples
# @option --test[`_choice_test`] <NAME>
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --benches
# @flag --all-targets
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
check() {
    :;
}
# }}} cargo check


# {{{ cargo clean
# @cmd
# @flag -q --quiet
# @option -p --package <SPEC>
# @option --manifest-path <PATH>
# @option --target[`_choice_target`] <TRIPLE>
# @flag -v --verbose*
# @option --target-dir <DIRECTORY>
# @option --color[auto|always|never] <WHEN>
# @flag -r --release
# @flag --frozen
# @option --profile <PROFILE-NAME>
# @flag --doc
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
clean() {
    :;
}
# }}} cargo clean


# {{{ cargo doc
# @cmd
# @alias d
# @flag -q --quiet
# @flag --open
# @option -p --package <SPEC>
# @flag -v --verbose*
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --no-deps
# @flag --document-private-items
# @flag --locked
# @option -j --jobs <N>
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --keep-going
# @flag --lib
# @option -Z <FLAG>
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @option --example[`_choice_example`] <NAME>
# @flag --examples
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --ignore-rust-version
# @flag --unit-graph
# @option --timings[html|json] <FMTS>
doc() {
    :;
}
# }}} cargo doc


# {{{ cargo new
# @cmd
# @flag -q --quiet
# @option --registry
# @option --vcs[git|hg|pijul|fossil|none]
# @flag --bin
# @flag -v --verbose*
# @flag --lib
# @option --color[auto|always|never] <WHEN>
# @option --edition[2015|2018|2021] <YEAR>
# @flag --frozen
# @option --name
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @arg path
new() {
    :;
}
# }}} cargo new


# {{{ cargo init
# @cmd
# @flag -q --quiet
# @option --registry
# @option --vcs[git|hg|pijul|fossil|none]
# @flag --bin
# @flag -v --verbose*
# @flag --lib
# @option --color[auto|always|never] <WHEN>
# @option --edition[2015|2018|2021] <YEAR>
# @flag --frozen
# @option --name
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @arg path
init() {
    :;
}
# }}} cargo init


# {{{ cargo add
# @cmd
# @flag --no-default-features
# @flag --default-features
# @option -F --features
# @flag --optional
# @flag -v --verbose
# @flag --no-optional
# @option --color[auto|always|never] <WHEN>
# @option --rename <NAME>
# @flag --frozen
# @option --manifest-path <PATH>
# @flag --locked
# @option -p --package <SPEC>
# @flag --offline
# @flag -q --quiet
# @option --config <KEY=VALUE>
# @flag --dry-run
# @option -Z <FLAG>
# @option --path
# @option --git <URI>
# @option --branch
# @option --tag
# @option --rev
# @option --registry <NAME>
# @flag --dev
# @flag --build
# @option --target
# @arg DEP_ID*
add() {
    :;
}
# }}} cargo add


# {{{ cargo remove
# @cmd
# @option -p --package <SPEC>
# @option --manifest-path <PATH>
# @flag -q --quiet
# @flag --dry-run
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @flag --dev
# @flag --build
# @option --target
# @arg DEP_ID*
remove() {
    :;
}
# }}} cargo remove


# {{{ cargo run
# @cmd
# @alias r
# @flag -q --quiet
# @option --bin[`_choice_bin`] <NAME>
# @option --example[`_choice_example`] <NAME>
# @option -p --package <SPEC>
# @flag -v --verbose*
# @option -j --jobs <N>
# @option --color[auto|always|never] <WHEN>
# @flag --keep-going
# @flag --frozen
# @flag -r --release
# @flag --locked
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --offline
# @flag --all-features
# @option --config <KEY=VALUE>
# @flag --no-default-features
# @option -Z <FLAG>
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --ignore-rust-version
# @option --timings[html|json] <FMTS>
# @arg args*
run() {
    :;
}
# }}} cargo run


# {{{ cargo test
# @cmd
# @alias t
# @flag -q --quiet
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @flag -v --verbose*
# @option --example[`_choice_example`] <NAME>
# @option --color[auto|always|never] <WHEN>
# @flag --examples
# @flag --frozen
# @option --test[`_choice_test`] <NAME>
# @flag --locked
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --offline
# @flag --benches
# @option --config <KEY=VALUE>
# @flag --all-targets
# @option -Z <FLAG>
# @flag --doc
# @flag --no-run
# @flag --no-fail-fast
# @option -p --package <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option -j --jobs <N>
# @flag --keep-going
# @flag -r --release
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --unit-graph
# @flag --future-incompat-report
# @option --timings[html|json] <FMTS>
# @arg TESTNAME
# @arg args*
test() {
    :;
}
# }}} cargo test


# {{{ cargo bench
# @cmd
# @flag -q --quiet
# @flag --lib
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @flag -v --verbose*
# @option --example[`_choice_example`] <NAME>
# @option --color[auto|always|never] <WHEN>
# @flag --examples
# @flag --frozen
# @option --test[`_choice_test`] <NAME>
# @flag --locked
# @flag --tests
# @option --bench[`_choice_bench`] <NAME>
# @flag --offline
# @flag --benches
# @option --config <KEY=VALUE>
# @flag --all-targets
# @option -Z <FLAG>
# @flag --no-run
# @option -p --package <SPEC>
# @flag --workspace
# @option --exclude <SPEC>
# @flag --all
# @option -j --jobs <N>
# @flag --keep-going
# @option --profile <PROFILE-NAME>
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --manifest-path <PATH>
# @flag --ignore-rust-version
# @option --message-format <FMT>
# @flag --no-fail-fast
# @flag --unit-graph
# @option --timings[html|json] <FMTS>
# @arg BENCHNAME
# @arg args*
bench() {
    :;
}
# }}} cargo bench


# {{{ cargo update
# @cmd
# @flag -q --quiet
# @flag -w --workspace
# @option -p --package <SPEC>
# @flag --aggressive
# @flag -v --verbose*
# @flag --dry-run
# @option --color[auto|always|never] <WHEN>
# @option --precise
# @flag --frozen
# @option --manifest-path <PATH>
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
update() {
    :;
}
# }}} cargo update


# {{{ cargo search
# @cmd
# @flag -q --quiet
# @option --index
# @option --limit
# @option --registry
# @flag -v --verbose
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @arg query*
search() {
    :;
}
# }}} cargo search


# {{{ cargo publish
# @cmd
# @flag -q --quiet
# @option --index
# @option --token
# @flag --no-verify
# @flag -v --verbose
# @flag --allow-dirty
# @option --color[auto|always|never] <WHEN>
# @option --target[`_choice_target`] <TRIPLE>
# @flag --frozen
# @option --target-dir <DIRECTORY>
# @flag --locked
# @option -p --package <SPEC>
# @option --manifest-path <PATH>
# @flag --offline
# @option --config <KEY=VALUE>
# @option -F --features
# @flag --all-features
# @option -Z <FLAG>
# @flag --no-default-features
# @option -j --jobs <N>
# @flag --keep-going
# @flag --dry-run
# @option --registry
publish() {
    :;
}
# }}} cargo publish


# {{{ cargo install
# @cmd
# @flag -q --quiet
# @option --git <URL>
# @option --branch
# @flag -v --verbose*
# @option --tag
# @option --color[auto|always|never] <WHEN>
# @option --rev <SHA>
# @flag --frozen
# @option --path
# @flag --list
# @flag --locked
# @option -j --jobs <N>
# @flag --offline
# @option --config <KEY=VALUE>
# @flag --keep-going
# @flag -f --force
# @option -Z <FLAG>
# @flag --no-track
# @option -F --features
# @flag --all-features
# @flag --no-default-features
# @option --profile <PROFILE-NAME>
# @flag --debug
# @option --bin[`_choice_bin`] <NAME>
# @flag --bins
# @option --example[`_choice_example`] <NAME>
# @flag --examples
# @option --target[`_choice_target`] <TRIPLE>
# @option --target-dir <DIRECTORY>
# @option --root <DIR>
# @option --index
# @option --registry
# @option --message-format <FMT>
# @option --timings[html|json] <FMTS>
# @arg crate*
install() {
    :;
}
# }}} cargo install


# {{{ cargo uninstall
# @cmd
# @flag -q --quiet
# @option -p --package <SPEC>
# @option --bin[`_choice_bin`] <NAME>
# @option --root <DIR>
# @flag -v --verbose*
# @option --color[auto|always|never] <WHEN>
# @flag --frozen
# @flag --locked
# @flag --offline
# @option --config <KEY=VALUE>
# @option -Z <FLAG>
# @arg spec*
uninstall() {
    :;
}
# }}} cargo uninstall


_choice_cmd() {
	cargo --list 2>/dev/null | awk 'NR>1 {print $1}'
}

_choice_bench() {
	_get_names_from_array "bench"
}

_choice_bin() {
	_get_names_from_array "bin"
}

_choice_example() {
	local manifest=$(_locate_manifest)
	[ -z "$manifest" ] && return 0

	local files=("${manifest%/*}"/examples/*.rs)
	local names=("${files[@]##*/}")
	local names=("${names[@]%.*}")
	# "*" means no examples found
	if [[ "${names[@]}" != "*" ]]; then
		for name in ${names[@]}; do
			echo "$name"
		done
	fi
}

_choice_target() {
	local targets=$(rustup target list)
	while read line
	do
		if [[ "$line" =~ default|installed ]]; then
			echo "${line%% *}"
		fi
	done <<< "$targets"
}

_choice_test() {
	_get_names_from_array "test"
}

_locate_manifest(){
	_argc_utils_safe_path "$(cargo locate-project --message-format plain 2>/dev/null)"
}

# Extracts the values of "name" from the array given in $1 and shows them as
# command line options for completion
_get_names_from_array()
{
	local manifest=$(_locate_manifest)
	if [[ -z $manifest ]]; then
		return 0
	fi

	local last_line
	local in_block=false
	local block_name=$1
	while read line
	do
		if [[ $last_line == "[[$block_name]]" ]]; then
			in_block=true
		else
			if [[ $last_line =~ .*\[\[.* ]]; then
				in_block=false
			fi
		fi

		if [[ $in_block == true ]]; then
			if [[ $line =~ .*name.*\= ]]; then
				line=${line##*=}
				line=${line%%\"}
				line=${line##*\"}
				echo $line
			fi
		fi

		last_line=$line
	done < $manifest
}


_argc_utils_safe_path() {
	if [[ -x "$(command -v cygpath)" ]]; then
		cygpath "$1"
	else
		echo "$1"
	fi
}


eval "$(argc "$0" "$@")"