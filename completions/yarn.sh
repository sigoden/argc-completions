#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg cmd[`_choice_cmd`]
# @option --cache-folder <path>
# @flag --check-files
# @option --cwd <cwd>
# @flag --disable-pnp
# @option --emoji <bool>
# @flag --enable-pnp
# @flag --pnp
# @flag --flat
# @flag --focus
# @flag --force
# @flag --frozen-lockfile
# @option --global-folder <path>
# @flag --har
# @option --https-proxy <host>
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --ignore-platform
# @flag --ignore-scripts
# @flag --json
# @flag --link-duplicates
# @option --link-folder <path>
# @option --modules-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --no-bin-links
# @flag --no-default-rc
# @flag --no-lockfile
# @flag --non-interactive
# @flag --no-node-version-check
# @flag --no-progress
# @flag --offline
# @option --otp <otpcode>
# @flag --prefer-offline
# @option --preferred-cache-folder <path>
# @flag --prod
# @option --production <prod>
# @option --proxy <host>
# @flag --pure-lockfile
# @option --registry <url>
# @flag -s --silent
# @option --scripts-prepend-node-path <bool>
# @flag --skip-integrity-check
# @flag --strict-semver
# @flag --update-checksums
# @option --use-yarnrc <path>
# @flag -v --version
# @flag --verbose
# @flag -h --help

# {{ yarn access
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
access() {
    :;
}

# @cmd
# @arg package
access::public() {
    :;
}

# @cmd
# @arg package
access::restricted() {
    :;
}

# @cmd
# @arg mode[read-only|read-write]
# @arg scope-team
# @arg package
access::grant() {
    :;
}

# @cmd
# @arg scope-team
# @arg package
access::revoke() {
    :;
}

# @cmd
# @arg user-or-scope
access::ls-packages() {
    :;
}

# @cmd
# @arg package
# @arg user
access::ls-collaborators() {
    :;
}

# @cmd
# @arg package
access::edit() {
    :;
}
# }} yarn access


# {{ yarn add
# @cmd
# @arg packages
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -W --ignore-workspace-root-check
# @flag -D --dev
# @flag -P --peer
# @flag -O --optional
# @flag -E --exact
# @flag -T --tilde
# @flag -A --audit
# @flag -h --help
add() {
    :;
}
# }} yarn add


# {{ yarn audit
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag --summary
# @option --groups*[devDependencies|dependencies|optionalDependencies] <group_name>
# @option --level[info|low|moderate|high|critical] <severity>
# @flag -h --help
audit() {
    :;
}
# }} yarn audit


# {{ yarn autoclean
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -I --init
# @flag -F --force
# @flag -h --help
autoclean() {
    :;
}
# }} yarn autoclean


# {{ yarn bin
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
bin() {
    :;
}
# }} yarn bin


# {{ yarn cache
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --pattern <pattern>
cache() {
    :;
}

# @cmd
# @option --pattern
cache::list() {
    :;
}

# @cmd
cache::dir() {
    :;
}

# @cmd
# @arg module_name*
cache::clean() {
    :;
}
# }} yarn cache


# {{ yarn check
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag --integrity
# @flag --verify-tree
# @flag -h --help
check() {
    :;
}
# }} yarn check


# {{ yarn config
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
config() {
    :;
}

# @cmd
# @flag -g --global
# @arg key[`_choice_config_key`]
# @arg value
config::set() {
    :;
}

# @cmd
# @arg key[`_choice_config_key`]
config::get() {
    :;
}

# @cmd
# @arg key[`_choice_config_key`]
config::delete() {
    :;
}

# @cmd
config::list() {
    :;
}
# }} yarn config


# {{ yarn create
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
create() {
    :;
}
# }} yarn create


# {{ yarn exec
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
exec() {
    :;
}
# }} yarn exec


# {{ yarn generate-lock-entry
# @cmd
# @alias generateLockEntry
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --use-manifest <location>
# @option --resolved <resolved>
# @option --registry <registry>
# @flag -h --help
generate-lock-entry() {
    :;
}
# }} yarn generate-lock-entry


# {{ yarn global
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --prefix <prefix>
# @flag --latest
global() {
    :;
}

# @cmd
# @option --prefix
# @arg package
global::add() {
    :;
}

# @cmd
# @option --prefix
global::bin() {
    :;
}

# @cmd
# @option --prefix
global::list() {
    :;
}

# @cmd
# @option --prefix
# @arg packages*[`_choice_global_dependency`]
global::remove() {
    :;
}

# @cmd
# @option --prefix
# @arg packages*[`_choice_global_dependency`]
global::upgrade() {
    :;
}

# @cmd
# @option --prefix
global::upgrade-interactive() {
    :;
}
# }} yarn global


# {{ yarn import
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @flag --scripts-prepend-node-path
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
import() {
    :;
}
# }} yarn import


# {{ yarn info
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
info() {
    :;
}
# }} yarn info


# {{ yarn init
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -y --yes
# @flag -p --private
# @option -i --install <value>
# @flag -2
# @flag -h --help
init() {
    :;
}
# }} yarn init


# {{ yarn install
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -A --audit
# @flag -g --global
# @flag -S --save
# @flag -D --save-dev
# @flag -P --save-peer
# @flag -O --save-optional
# @flag -E --save-exact
# @flag -T --save-tilde
# @flag -h --help
install() {
    :;
}
# }} yarn install


# {{ yarn licenses
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
licenses() {
    :;
}
# }} yarn licenses


# {{ yarn link
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
link() {
    :;
}
# }} yarn link


# {{ yarn list
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --depth <depth>
# @option --pattern <pattern>
# @flag -h --help
list() {
    :;
}
# }} yarn list


# {{ yarn login
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
login() {
    :;
}
# }} yarn login


# {{ yarn logout
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
logout() {
    :;
}
# }} yarn logout


# {{ yarn node
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --into <path>
# @flag -h --help
node() {
    :;
}
# }} yarn node


# {{ yarn outdated
# @cmd
# @arg packages*
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
outdated() {
    :;
}
# }} yarn outdated


# {{ yarn owner
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
owner() {
    :;
}

# @cmd
# @arg package
owner::list() {
    :;
}

# @cmd
# @arg user
# @arg package
owner::add() {
    :;
}

# @cmd
# @arg user
# @arg package
owner::remove() {
    :;
}
# }} yarn owner


# {{ yarn pack
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option -f --filename <filename>
# @flag -h --help
pack() {
    :;
}
# }} yarn pack


# {{ yarn policies
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
policies() {
    :;
}

# @cmd
# @flag --rc
# @arg version
policies::set-version() {
    :;
}
# }} yarn policies


# {{ yarn publish
# @cmd
# @arg tarball-folder!
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --new-version <version>
# @flag --major
# @flag --minor
# @flag --patch
# @flag --premajor
# @flag --preminor
# @flag --prepatch
# @flag --prerelease
# @option --preid <preid>
# @option --message <message>
# @flag --no-git-tag-version
# @flag --no-commit-hooks
# @option --access <access>
# @option --tag <tag>
# @flag -h --help
publish() {
    :;
}
# }} yarn publish


# {{ yarn remove
# @cmd
# @arg packages*[`_choice_dependency`]
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -W --ignore-workspace-root-check
# @flag -h --help
remove() {
    :;
}
# }} yarn remove


# {{ yarn run
# @cmd
# @arg script[`_choice_script`]
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @flag --scripts-prepend-node-path
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
run() {
    :;
}
# }} yarn run


# {{ yarn tag
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
tag() {
    :;
}
# }} yarn tag


# {{ yarn team
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
team() {
    :;
}

# @cmd
# @arg scope-team
team::create() {
    :;
}

# @cmd
# @arg scope-team
team::destroy() {
    :;
}

# @cmd
# @arg scope-team
# @arg user
team::add() {
    :;
}

# @cmd
# @arg scope-team
# @arg user
team::remove() {
    :;
}

# @cmd
# @arg scope-or-scope-team
team::list() {
    :;
}
# }} yarn team


# {{ yarn unlink
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
unlink() {
    :;
}
# }} yarn unlink


# {{ yarn unplug
# @cmd
# @arg packages
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag --clear
# @flag --clear-all
# @flag -h --help
unplug() {
    :;
}
# }} yarn unplug


# {{ yarn upgrade
# @cmd
# @arg packages*[`_choice_dependency`]
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option -S --scope <scope>
# @flag -L --latest
# @flag -E --exact
# @option -P --pattern <pattern>
# @flag -T --tilde
# @flag -C --caret
# @flag -A --audit
# @flag -h --help
upgrade() {
    :;
}
# }} yarn upgrade


# {{ yarn upgrade-interactive
# @cmd
# @alias upgradeInteractive
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option -S --scope <scope>
# @flag --latest
# @flag -E --exact
# @flag -T --tilde
# @flag -C --caret
# @flag -h --help
upgrade-interactive() {
    :;
}
# }} yarn upgrade-interactive


# {{ yarn version
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @option --new-version <version>
# @flag --major
# @flag --minor
# @flag --patch
# @flag --premajor
# @flag --preminor
# @flag --prepatch
# @flag --prerelease
# @option --preid <preid>
# @option --message <message>
# @flag --no-git-tag-version
# @flag --no-commit-hooks
# @flag -h --help
version() {
    :;
}
# }} yarn version


# {{ yarn versions
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
versions() {
    :;
}
# }} yarn versions


# {{ yarn why
# @cmd
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
why() {
    :;
}
# }} yarn why


# {{ yarn workspace
# @cmd
# @arg workspace_name![`_choice_workspace`]
# @arg workspace_args*[`_choice_workspace_args`]
# @flag -v --version
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <<type>[:specifier]>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @flag -h --help
workspace() {
    :;
}
# }} yarn workspace


# {{ yarn workspaces
# @cmd
# @flag --no-default-rc
# @option --use-yarnrc <path>
# @flag --verbose
# @flag --offline
# @flag --prefer-offline
# @flag --enable-pnp
# @flag --pnp
# @flag --disable-pnp
# @flag --strict-semver
# @flag --json
# @flag --ignore-scripts
# @flag --har
# @flag --ignore-platform
# @flag --ignore-engines
# @flag --ignore-optional
# @flag --force
# @flag --skip-integrity-check
# @flag --check-files
# @flag --no-bin-links
# @flag --flat
# @flag --prod
# @option --production <prod>
# @flag --no-lockfile
# @flag --pure-lockfile
# @flag --frozen-lockfile
# @flag --update-checksums
# @flag --link-duplicates
# @option --link-folder <path>
# @option --global-folder <path>
# @option --modules-folder <path>
# @option --preferred-cache-folder <path>
# @option --cache-folder <path>
# @option --mutex <type>
# @option --emoji <bool>
# @flag -s --silent
# @option --cwd <cwd>
# @option --proxy <host>
# @option --https-proxy <host>
# @option --registry <url>
# @flag --no-progress
# @option --network-concurrency <number>
# @option --network-timeout <milliseconds>
# @flag --non-interactive
# @option --scripts-prepend-node-path <bool>
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
workspaces() {
    :;
}

# @cmd
# @flag --json
workspaces::info() {
    :;
}

# @cmd
# @arg command
workspaces::run() {
    :;
}
# }} yarn workspaces


_choice_cmd() {
    _choice_script
    _list_module_bins
}

_choice_script() {
    project_dir="$(_locate_project)"
    cat "$project_dir/package.json" | jq -r '.scripts | keys[]' 
}

_choice_dependency() {
    project_dir="$(_locate_project)"
    cat  "$project_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_global_dependency() {
    global_dir="$(_argc_util_unix_path "$(yarn global dir)")"
    cat  "$global_dir/package.json" | jq -r '.dependencies // {}, .devDependencies // {}, .optionalDependencies // {} | keys[]'
}

_choice_workspace() {
    yarn workspaces info | sed '1d;$d' | jq -r 'keys[]'
}

_choice_workspace_args() {
    if [[ "$1" == workspace ]] && [[ -n "$2" ]]; then
        project_dir="$(_locate_project)"
        location="$(yarn workspaces info | sed '1d;$d' | jq -r '."'$2'".location')"
        if [[ -z "$location" ]]; then
            return
        fi
        workspace_dir="$project_dir/$location"
        line=" ${@:3}"
        if [[ "$argc__line" =~ [[:space:]]$ ]]; then
            line="$line "
        fi
        while read -r item; do
            if [[ "$item" == \`*\` ]]; then
                ${item:1:-1}
            else
                echo "$item"
            fi
        done < <(argc --compgen "${BASH_SOURCE[0]}" "$line")
    fi
}

_choice_config_key() {
    yarn config list --json | jq -r 'select(.type == "inspect") | .data | keys[]'
}

_list_module_bins() {
    bin_dir="$(_locate_project)/node_modules/.bin"
    if [ -d "$bin_dir" ]; then
        ls -1 "$bin_dir" | sed -e 's/\..*$//' | uniq
    fi
}

_locate_project() {
    if [[ -z "$_project_dir" ]]; then
        _project_dir="$(_locate_project_base)"
    fi
    echo "$_project_dir"
}

_locate_project_base() {
    if [[ -n "$workspace_dir" ]]; then
        echo "$workspace_dir" 
    elif [ -f package.json ]; then
        pwd
    else
        echo "$(_argc_util_unix_path "$(npm prefix)")"
    fi
}

_argc_util_unix_path() {
	if _argc_util_exist_cygpath; then
		cygpath "$1"
	else
		echo "$1"
	fi
}


_argc_util_exist_cygpath() {
    if [[ -z $_argc_var_exist_cygpath ]]; then
        if [[ -x "$(command -v cygpath)" ]]; then
            _argc_var_exist_cygpath=0
        else
            _argc_var_exist_cygpath=1
        fi
    fi
    return $_argc_var_exist_cygpath
}


eval "$(argc --argc-eval "$0" "$@")"