#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ scoop alias
# @cmd Manage scoop aliases
alias() {
    :;
}

# {{{ scoop alias add
# @cmd Add alias
# @arg name!
# @arg value!
# @arg description!
alias::add() {
    :;
}
# }}} scoop alias add

# {{{ scoop alias list
# @cmd List aliases
# @flag -v --verbose    Show alias description and table headers
alias::list() {
    :;
}
# }}} scoop alias list

# {{{ scoop alias rm
# @cmd Remove alias
# @arg name![`_choice_alias`]
alias::rm() {
    :;
}
# }}} scoop alias rm
# }} scoop alias

# {{ scoop bucket
# @cmd Manage Scoop buckets
bucket() {
    :;
}

# {{{ scoop bucket add
# @cmd Add bucket
# @arg name![`_choice_known_bucket`]
# @arg repo
bucket::add() {
    :;
}
# }}} scoop bucket add

# {{{ scoop bucket list
# @cmd List buckets
bucket::list() {
    :;
}
# }}} scoop bucket list

# {{{ scoop bucket known
# @cmd List known buckets
bucket::known() {
    :;
}
# }}} scoop bucket known

# {{{ scoop bucket rm
# @cmd Remove bucket
# @arg name![`_choice_bucket`]
bucket::rm() {
    :;
}
# }}} scoop bucket rm
# }} scoop bucket

# {{ scoop cache
# @cmd Show or clear the download cache
cache() {
    :;
}

# {{{ scoop cache list
# @cmd List cache
cache::list() {
    :;
}
# }}} scoop cache list

# {{{ scoop cache rm
# @cmd Remove cache
# @flag -a --all    Remove all cache
# @arg app*[`_choice_installed_package`]
cache::rm() {
    :;
}
# }}} scoop cache rm
# }} scoop cache

# {{ scoop cat
# @cmd Show content of specified manifest.
# @arg app![`_choice_package`]
cat_() {
    :;
}
# }} scoop cat

# {{ scoop checkup
# @cmd Check for potential problems
checkup() {
    :;
}
# }} scoop checkup

# {{ scoop cleanup
# @cmd Cleanup apps by removing old versions
# @flag -a --all       Cleanup all apps (alternative to '*')
# @flag -g --global    Cleanup a globally installed app
# @flag -k --cache     Remove outdated download cache
# @arg app![`_choice_installed_package`]
cleanup() {
    :;
}
# }} scoop cleanup

# {{ scoop config
# @cmd Get or set configuration values
# @arg name[`_choice_config_key`]
# @arg value[`_choice_config_value`]
config() {
    :;
}

# {{{ scoop config rm
# @cmd Remove config item
# @arg name[`_choice_config_key`]
config::rm() {
    :;
}
# }}} scoop config rm
# }} scoop config

# {{ scoop create
# @cmd Create a custom app manifest
# @arg url!
create() {
    :;
}
# }} scoop create

# {{ scoop depends
# @cmd List dependencies for an app, in the order they'll be installed
# @arg app![`_choice_package`]
depends() {
    :;
}
# }} scoop depends

# {{ scoop download
# @cmd Download apps in the cache folder and verify hashes
# @flag -f --force                        Force download (overwrite cache)
# @flag -h --no-hash-check                Skip hash verification (use with caution!)
# @flag -u --no-update-scoop              Don't update Scoop before downloading if it's outdated
# @option -a --arch[32bit|64bit|arm64]    Use the specified architecture, if the app supports it
# @arg app![`_choice_package_or_path`]
download() {
    :;
}
# }} scoop download

# {{ scoop export
# @cmd Exports installed apps, buckets (and optionally configs) in JSON format
# @flag -c --config    Export the Scoop configuration file too
export() {
    :;
}
# }} scoop export

# {{ scoop hold
# @cmd Hold an app to disable updates
# @flag -g --global    Hold globally installed apps
# @arg app*[`_choice_installed_package`]
hold() {
    :;
}
# }} scoop hold

# {{ scoop home
# @cmd Opens the app homepage
# @arg app![`_choice_package`]
home() {
    :;
}
# }} scoop home

# {{ scoop import
# @cmd Imports apps, buckets and configs from a Scoopfile in JSON format
# @arg path-url-to-scoopfile-json! <path/url to scoopfile.json>
import() {
    :;
}
# }} scoop import

# {{ scoop info
# @cmd Display information about an app
# @arg app![`_choice_package`]
info() {
    :;
}
# }} scoop info

# {{ scoop install
# @cmd Install apps
# @flag -g --global                       Install the app globally
# @flag -i --independent                  Don't install dependencies automatically
# @flag -k --no-cache                     Don't use the download cache
# @flag -u --no-update-scoop              Don't update Scoop before installing if it's outdated
# @flag -s --skip                         Skip hash validation (use with caution!)
# @option -a --arch[32bit|64bit|arm64]    Use the specified architecture, if the app supports it
# @arg app![`_choice_package_or_path`]
install() {
    :;
}
# }} scoop install

# {{ scoop list
# @cmd List installed apps
# @arg query
list() {
    :;
}
# }} scoop list

# {{ scoop prefix
# @cmd Returns the path to the specified app
# @arg app![`_choice_installed_package`]
prefix() {
    :;
}
# }} scoop prefix

# {{ scoop reset
# @cmd Reset an app to resolve conflicts
# @arg app![`_choice_installed_package`]
reset() {
    :;
}
# }} scoop reset

# {{ scoop search
# @cmd Search available apps
# @arg query!
search() {
    :;
}
# }} scoop search

# {{ scoop shim
# @cmd Manipulate Scoop shims
# @flag -g --global    Manipulate global shim(s)
# @arg cmd[`_choice_shim_cmd`]
# @arg name
# @arg args*
shim() {
    :;
}
# }} scoop shim

# {{ scoop status
# @cmd Show status and check for new app versions
# @flag -l --local    Checks the status for only the locally installed apps, and disables remote fetching/checking for Scoop and buckets
status() {
    :;
}
# }} scoop status

# {{ scoop unhold
# @cmd Unhold an app to enable updates
# @flag -g --global    Unhold globally installed apps
# @arg app![`_choice_installed_package`]
unhold() {
    :;
}
# }} scoop unhold

# {{ scoop uninstall
# @cmd Uninstall an app
# @flag -g --global    Uninstall a globally installed app
# @flag -p --purge     Remove all persistent data
# @arg app![`_choice_installed_package`]
uninstall() {
    :;
}
# }} scoop uninstall

# {{ scoop update
# @cmd Update apps, or Scoop itself
# @flag -f --force          Force update even when there isn't a newer version
# @flag -g --global         Update a globally installed app
# @flag -i --independent    Don't install dependencies automatically
# @flag -k --no-cache       Don't use the download cache
# @flag -s --skip           Skip hash validation (use with caution!)
# @flag -q --quiet          Hide extraneous messages
# @flag -a --all            Update all apps (alternative to '*')
# @arg app![`_choice_installed_package`]
update() {
    :;
}
# }} scoop update

# {{ scoop virustotal
# @cmd Look for app's hash or url on virustotal.com
# @flag -a --all                Check for all installed apps
# @flag -s --scan               For packages where VirusTotal has no information, send download URL for analysis (and future retrieval).
# @flag -n --no-depends         By default, all dependencies are checked too.
# @flag -u --no-update-scoop    Don't update Scoop before checking if it's outdated
# @flag -p --passthru           Return reports as objects
# @arg app*[`_choice_package`]
virustotal() {
    :;
}
# }} scoop virustotal

# {{ scoop which
# @cmd Locate a shim/executable (similar to 'which' on Linux)
# @arg command![`_module_os_command`]
which() {
    :;
}
# }} scoop which

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_alias() {
    scoop alias list | tail -n +4 | sed 's/ \+/\t/'
}

_choice_known_bucket() {
    scoop bucket known
}

_choice_bucket() {
    _helper_get_scoop_dir
    ls -1 --indicator-style=none "$scoop_dir/buckets"
}

_choice_installed_package() {
    _helper_get_scoop_dir
    ls -1 --indicator-style=none "$scoop_dir/apps"
}

_choice_package() {
    _helper_get_scoop_dir
    for bucket_dir in "$scoop_dir/buckets/"*; do
        ls -1 "$bucket_dir/bucket/" | sed 's/\.json$//'
    done
}

_choice_config_key() {
    command cat <<-'EOF'
use_external_7zip	External 7zip (from path) will be used for archives extraction.
use_lessmsi	Prefer lessmsi utility over native msiexec.
no_junction	The 'current' version alias will not be used. Shims and shortcuts will point to specific version instead.
scoop_repo	Git repository containining scoop source code.
scoop_branch	Allow to use different branch than master.
proxy	By default, Scoop will use the proxy settings from Internet Options, but with anonymous authentication.
autostash_on_conflict	When a conflict is detected during updating, Scoop will auto-stash the uncommitted changes.
default_architecture	Allow to configure preferred architecture for application installation.  If not specified, architecture is determined by system.
debug	Additional and detailed output will be shown.
force_update	Force apps updating to bucket's version.
show_update_log	Do not show changed commits on 'scoop update'
show_manifest	Displays the manifest of every app that's about to be installed, then asks user if they wish to proceed.
shim	Choose scoop shim build.
root_path	Path to Scoop root directory.
global_path	Path to Scoop root directory for global apps.
cache_path	For downloads, defaults to 'cache' folder under Scoop root directory.
gh_token	GitHub API token used to make authenticated requests.
virustotal_api_key	API key used for uploading/scanning files using virustotal.
cat_style	When set to a non-empty string, Scoop will use 'bat' to display the manifest for the `scoop cat` command and while doing manifest review.
ignore_running_processes	When set to $false (default), Scoop would stop its procedure immediately if it detects any target app process is running.
private_hosts	Array of private hosts that need additional authentication.
hold_update_until	Disable/Hold Scoop self-updates, until the specified date.
update_nightly	Nightly version is formatted as 'nightly-yyyyMMdd' and will be updated after one day if this is set to $true. Otherwise, nightly version will not be updated unless `--force` is used.
aria2-enabled	Aria2c will be used for downloading of artifacts.
aria2-warning-enabled	Disable Aria2c warning which is shown while downloading.
aria2-retry-wait	Number of seconds to wait between retries.
aria2-split	Number of connections used for downlaod.
aria2-max-connection-per-server	The maximum number of connections to one server for each download.
aria2-min-split-size	Downloaded files will be splitted by this configured size and downloaded using multiple connections.
aria2-options	Array of additional aria2 options.
EOF
}

_choice_config_value() {
    case "${argc__positionals[0]}" in
        use_external_7zip|use_lessmsi|no_junction|autostash_on_conflict| \
        debug|force_update|show_update_log|show_manifest|ignore_running_processes| \
        update_nightly|aria2-enabled|aria2-warning-enabled)
            printf "%s\n" true false
            ;;
        scoop_branch)
            printf "%s\n" master develop
            ;;
        default_architecture)
            printf "%s\n" 64bit 32bit arm64
            ;;
        shim)
            printf "%s\n" kiennq scoopcs 71
            ;;
    esac
}

_choice_package_or_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_package
}

_choice_shim_cmd() {
    printf "%s\n" add rm list info alter
}

_helper_get_config_file() {
    config_file="$(_argc_util_path_resolve $HOME .config/scoop/config.json)"
}

_helper_get_scoop_dir() {
    _helper_get_config_file
    scoop_dir="$(command cat "$config_file" | yq '.root_path // ""')"
    if [[ -z "$scoop_dir" ]]; then
        scoop_dir="$(_argc_util_path_resolve $USERPROFILE\\scoop)"
    fi
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"