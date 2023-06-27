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
# @option --root-certificates <ROOT_CERTIFICATES>  Specify the root certificates to use for https connnections, in addition to default system-wide ones [env: BINSTALL_HTTPS_ROOT_CERTS=]
# @flag --json-output                        Print logs in json format to be parsable
# @option --github-token <GITHUB_TOKEN>      Provide the github token for accessing the restful API of api.github.com Fallback to environment variable `GITHUB_TOKEN` if this option is not specified (which is also shown by clap's auto generated doc below), or try environment variable `GH_TOKEN`, which is also used by `gh` cli.
# @flag -V                                   Print version information
# @option --log-level <LEVEL>                Utility log level Set to `trace` to print very low priority, often extremely verbose information.
# @flag -q --quiet                           Equivalent to setting `log_level` to `off`.
# @arg crate-version* <crate[@version]>

command eval "$(argc --argc-eval "$0" "$@")"