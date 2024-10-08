#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --color                     color configuration: always, never (default: auto)
# @option -d --db                        advisory database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny                      exit with an error on: warnings (any), unmaintained, unsound, yanked
# @option -f --file                      Cargo lockfile to inspect (or `-` for STDIN, default: Cargo.lock)
# @option --ignore <ADVISORY_ID>         Advisory id to ignore (can be specified multiple times)
# @flag --ignore-source                  Ignore sources of packages in Cargo.toml, matching advisories regardless of source
# @flag -n --no-fetch                    do not perform a git fetch on the advisory DB
# @flag --stale                          allow stale database
# @option --target-arch <TARGET_ARCH>    filter vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS>        filter vulnerabilities by OS (default: no filter)
# @option -u --url                       URL for advisory database git repo
# @flag -q --quiet                       Avoid printing unnecessary information
# @flag --json                           Output report in JSON format
# @flag -h --help                        Print help
# @flag -V --version                     Print version

# {{ cargo audit bin
# @cmd scan compiled binaries
# @option -c --color                     color configuration: always, never (default: auto)
# @option -d --db                        advisory database git repo path (default: ~/.cargo/advisory-db)
# @option -D --deny                      exit with an error on: warnings (any), unmaintained, unsound, yanked
# @option --ignore <ADVISORY_ID>         Advisory id to ignore (can be specified multiple times)
# @flag --ignore-source                  Ignore sources of packages in the audit data, matching advisories regardless of source
# @flag -n --no-fetch                    do not perform a git fetch on the advisory DB
# @flag --stale                          allow stale database
# @option --target-arch <TARGET_ARCH>    filter vulnerabilities by CPU (default: no filter)
# @option --target-os <TARGET_OS>        filter vulnerabilities by OS (default: no filter)
# @option -u --url                       URL for advisory database git repo
# @flag -q --quiet                       Avoid printing unnecessary information
# @flag --json                           Output report in JSON format
# @flag -h --help                        Print help (see a summary with '-h')
# @arg binary_paths+                     Paths to the binaries to be scanned
bin() {
    :;
}
# }} cargo audit bin

command eval "$(argc --argc-eval "$0" "$@")"