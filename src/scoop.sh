_patch_help() {
    if [[ "$*" == "scoop" ]]; then
        $@ --help | \
        sed \
            -e '/^Command/,$ s/^/  /'  \
            -e '/^  Command/,+1 c\Commands:'  \
    
    else
        help_text="$( \
            cat <<-'EOF' | _patch_help_embed_help $@ 
# alias
## add <name> <value> <description> - Add alias
## list - List aliases
    -v, --verbose   Show alias description and table headers
## rm <name> - Remove alias

# bucket
## add <name> [<repo>] - Add bucket
## list - List buckets
## known - List known buckets
## rm <name> - Remove bucket

# cache
## list - List cache
## rm app... - Remove cache
    -a, --all   Remove all cache

# config <name> [value]
## rm <name> - Remove config item

EOF
)"
        if [[ $# -le 2 ]] && [[ -z "$help_text" ]]; then
            $@ --help
        else
            echo "$help_text"
        fi
    fi
}

_patch_table() {
    if [[ "$*" == "scoop alias rm" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_alias`]'

    elif [[ "$*" == "scoop bucket add" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_known_bucket`]'

    elif [[ "$*" == "scoop bucket rm" ]]; then
        _patch_table_edit_arguments 'name;[`_choice_bucket`]'

    elif [[ "$*" == "scoop cache rm" ]] \
      || [[ "$*" == "scoop cleanup" ]] \
      || [[ "$*" == "scoop prefix" ]] \
      || [[ "$*" == "scoop reset" ]] \
      || [[ "$*" == "scoop unhold" ]] \
      || [[ "$*" == "scoop uninstall" ]] \
      || [[ "$*" == "scoop update" ]] \
    ; then
        _patch_table_edit_arguments 'app;[`_choice_installed_package`]'

    elif [[ "$*" == "scoop cat" ]] \
      || [[ "$*" == "scoop cleanup" ]] \
      || [[ "$*" == "scoop depends" ]] \
      || [[ "$*" == "scoop home" ]] \
      || [[ "$*" == "scoop info" ]] \
    ; then
        _patch_table_edit_arguments 'app;[`_choice_package`]'

    elif [[ "$*" == "scoop config" ]]; then
        _patch_table_edit_arguments ';;' 'name;[`_choice_config_key`]' 'value;[`_choice_config_value`]'

    elif [[ "$*" == "scoop config rm" ]]; then
        _patch_table_edit_arguments ';;' 'name;[`_choice_config_key`]'

    elif [[ "$*" == "scoop download" ]] \
      || [[ "$*" == "scoop install" ]] \
    ; then
        _patch_table_edit_arguments 'app;[`_choice_package_or_path`]'

    elif [[ "$*" == "scoop export" ]]; then
        _patch_table_edit_arguments ';;' 

    elif [[ "$*" == "scoop hold" ]]; then
        _patch_table_edit_arguments ';;' 'app;*[`_choice_installed_package`]'

    elif [[ "$*" == "scoop shim" ]]; then
        _patch_table_edit_arguments ';;' 'cmd;[`_choice_shim_cmd`]' 'name' 'args...'

    elif [[ "$*" == "scoop virustotal" ]]; then
        _patch_table_edit_arguments ';;' 'app;*[`_choice_package`]'

    elif [[ "$*" == "scoop which" ]]; then
        _patch_table_edit_arguments 'command;[`_module_os_command`]'

    else
        cat
    fi
}

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
