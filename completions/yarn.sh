#!/usr/bin/env bash
# Generated with `./generate.sh yarn`. DON'T MODIFY IT

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
# @option --mutex <type>
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
# @flag --verbose
# @arg cmd[`_choice_cmd`]

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
# @flag -W --ignore-workspace-root-check
# @flag -D --dev
# @flag -P --peer
# @flag -O --optional
# @flag -E --exact
# @flag -T --tilde
# @flag -A --audit
# @arg packages
add() {
    :;
}
# }} yarn add


# {{ yarn audit
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
# @flag --summary
# @option --groups*[devDependencies|dependencies|optionalDependencies] <group_name>
# @option --level[info|low|moderate|high|critical] <severity>
audit() {
    :;
}
# }} yarn audit


# {{ yarn autoclean
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
# @flag -I --init
# @flag -F
autoclean() {
    :;
}
# }} yarn autoclean


# {{ yarn bin
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
# @flag --integrity
# @flag --verify-tree
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
create() {
    :;
}
# }} yarn create


# {{ yarn exec
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
exec() {
    :;
}
# }} yarn exec


# {{ yarn generate-lock-entry
# @cmd
# @alias generateLockEntry
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
# @option --use-manifest <location>
# @option --resolved <resolved>
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
# @flag --scripts-prepend-node-path
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
import() {
    :;
}
# }} yarn import


# {{ yarn info
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
info() {
    :;
}
# }} yarn info


# {{ yarn init
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
# @flag -y --yes
# @flag -p --private
# @option -i --install <value>
# @flag -2
init() {
    :;
}
# }} yarn init


# {{ yarn install
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
# @flag -A --audit
# @flag -g --global
# @flag -S --save
# @flag -D --save-dev
# @flag -P --save-peer
# @flag -O --save-optional
# @flag -E --save-exact
# @flag -T --save-tilde
install() {
    :;
}
# }} yarn install


# {{ yarn licenses
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
licenses() {
    :;
}
# }} yarn licenses


# {{ yarn link
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
link() {
    :;
}
# }} yarn link


# {{ yarn list
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
# @option --depth <depth>
# @option --pattern <pattern>
list() {
    :;
}
# }} yarn list


# {{ yarn login
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
login() {
    :;
}
# }} yarn login


# {{ yarn logout
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
logout() {
    :;
}
# }} yarn logout


# {{ yarn node
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
# @option --into <path>
node() {
    :;
}
# }} yarn node


# {{ yarn outdated
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
# @arg packages*
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
# @option -f --filename <filename>
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
# @arg tarball-folder!
publish() {
    :;
}
# }} yarn publish


# {{ yarn remove
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
# @flag -W --ignore-workspace-root-check
# @arg packages*[`_choice_dependency`]
remove() {
    :;
}
# }} yarn remove


# {{ yarn run
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
# @flag --scripts-prepend-node-path
# @flag --no-node-version-check
# @flag --focus
# @option --otp <otpcode>
# @arg script[`_choice_script`]
run() {
    :;
}
# }} yarn run


# {{ yarn tag
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
unlink() {
    :;
}
# }} yarn unlink


# {{ yarn unplug
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
# @flag --clear
# @flag --clear-all
# @arg packages
unplug() {
    :;
}
# }} yarn unplug


# {{ yarn upgrade
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
# @option -S --scope <scope>
# @flag -L --latest
# @flag -E --exact
# @option -P --pattern <pattern>
# @flag -T --tilde
# @flag -C --caret
# @flag -A --audit
# @arg packages*[`_choice_dependency`]
upgrade() {
    :;
}
# }} yarn upgrade


# {{ yarn upgrade-interactive
# @cmd
# @alias upgradeInteractive
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
# @option -S --scope <scope>
# @flag --latest
# @flag -E --exact
# @flag -T --tilde
# @flag -C --caret
upgrade-interactive() {
    :;
}
# }} yarn upgrade-interactive


# {{ yarn version
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
version() {
    :;
}
# }} yarn version


# {{ yarn versions
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
versions() {
    :;
}
# }} yarn versions


# {{ yarn why
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
why() {
    :;
}
# }} yarn why


# {{ yarn workspace
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
# @arg workspace_name![`_choice_workspace`]
# @arg workspace_args*[`_choice_workspace_args`]
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


NODE="$(which node)"

_choice_cmd() {
    _choice_script
    _list_module_bins
}

_choice_script() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd "$project_dir" && "$NODE" -e "var pkg=require('./package.json');Object.keys(pkg.scripts||{}).forEach(v => console.log(v))")
    fi
}

_choice_dependency() {
    project_dir="$(_locate_project)"
    if [ -f "$project_dir/package.json" ]; then
        (cd "$project_dir" && "$NODE" -e "var pkg=require('./package.json');Object.keys({...(pkg.dependencies||{}),...(pkg.devDependencies||{}),...(pkg.optionalDependencies||{})}).forEach(v => console.log(v))")
    fi
}

_choice_global_dependency() {
    global_dir="$(_argc_util_safe_path "$(yarn global dir)")"
    if [ -f "$global_dir/package.json" ]; then
        (cd "$global_dir" && "$NODE" -e "var pkg=require('./package.json');Object.keys({...(pkg.dependencies||{}),...(pkg.devDependencies||{}),...(pkg.optionalDependencies||{})}).forEach(v => console.log(v))")
    fi
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
    if [[ -n "$workspace_dir" ]]; then
        echo "$workspace_dir" 
    elif [ -f package.json ]; then
        pwd
    else
        echo "$(_argc_util_safe_path "$(npm prefix)")"
    fi
}

_argc_util_safe_path() {
	if [[ -x "$(command -v cygpath)" ]]; then
		cygpath "$1"
	else
		echo "$1"
	fi
}

eval "$(argc "$0" "$@")"