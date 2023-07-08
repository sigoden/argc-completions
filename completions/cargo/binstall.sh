#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                            Print help (see a summary with '-h')
# @option --version <VERSION_REQ>            Package version to install.
# @option --targets <TRIPLE>                 Override binary target set.
# @option --manifest-path <MANIFEST_PATH>    Override Cargo.toml package manifest path.
# @option --git                              Override how to fetch Cargo.toml package manifest.
# @option --bin-dir <BIN_DIR>                Override Cargo.toml package manifest bin-dir
# @option --pkg-fmt <PKG_FMT>                Override Cargo.toml package manifest pkg-fmt.
# @option --pkg-url <PKG_URL>                Override Cargo.toml package manifest pkg-url
# @option --rate-limit <RATE_LIMIT>          Override the rate limit duration.
# @option --strategies                       Specify the strategies to be used, binstall will run the strategies specified in order.
# @option --disable-strategies <DISABLE_STRATEGIES>  Disable the strategies specified.
# @flag --no-discover-github-token           If `--github-token` or environment variable `GITHUB_TOKEN`/`GH_TOKEN` is not specified, then cargo-binstall will try to extract github token from `$HOME/.git-credentials` or `$HOME/.config/gh/hosts.yml` by default.
# @flag --no-symlinks                        This flag is now enabled by default thus a no-op.
# @flag --dry-run                            Dry run, fetch and show changes without installing binaries
# @flag -y --no-confirm                      Disable interactive mode / confirmation prompts
# @flag --no-cleanup                         Do not cleanup temporary files
# @flag --no-track                           By default, binstall keeps track of the installed packages with metadata files stored in the installation root directory.
# @option --install-path <INSTALL_PATH>      Install binaries in a custom location.
# @option --root                             Install binaries with a custom cargo root.
# @flag --locked                             This option will be passed through to all `cargo-install` invocations.
# @flag --force                              Force a crate to be installed even if it is already installed
# @option --min-tls-version <VERSION>        Require a minimum TLS version from remote endpoints.
# @option --root-certificates <ROOT_CERTIFICATES>  Specify the root certificates to use for https connnections, in addition to default system-wide ones
# @flag --json-output                        Print logs in json format to be parsable
# @option --github-token <GITHUB_TOKEN>      Provide the github token for accessing the restful API of api.github.com
# @flag -V                                   Print version information
# @option --log-level <LEVEL>                Utility log level
# @flag -q --quiet                           Equivalent to setting `log_level` to `off`.
# @arg crate-version* <crate[@version]>

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_cmd() {
	cargo --list 2>/dev/null | gawk 'NR>1 {print $1}'
}

_choice_testname() {
	cargo t -- --list | gawk '/: test$/ { print substr($1, 1, length($1) - 1) }' 
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
	rustup target list --installed
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

command eval "$(argc --argc-eval "$0" "$@")"