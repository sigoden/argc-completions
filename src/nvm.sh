_patch_help() {
    cat <<-'EOF' | _patch_help_embed_help $@
  --help                                      Show this message
  --no-colors                                 Suppress colored output
  --version                                   Print out the installed version of nvm
# install [<version>] - Download and install a <version>. Uses .nvmrc if available and version is omitted.
    -s                                        Skip binary download, install from source only.
    -b                                        Skip source download, install from binary only.
    --reinstall-packages-from=<version>       When installing, reinstall packages installed in <node|iojs|node version number>
    --lts=<LTS name>                          When installing, only select from versions for a specific LTS line
    --skip-default-packages                   When installing, skip the default-packages file if it exists
    --latest-npm                              After installing, attempt to upgrade to the latest working npm on the given node version
    --no-progress                             Disable the progress bar on any downloads
    --alias=<name>                            After installing, set the alias specified to the version specified. (same as: nvm alias <name> <version>)
    --default                                 After installing, set default alias to the version specified. (same as: nvm alias default <version>)
# uninstall <version> - Uninstall a version
    --lts=<LTS name>                          Uninstall using automatic alias for provided LTS line, if available.
# use [<version>] - Modify PATH to use <version>. Uses .nvmrc if available and version is omitted.
    --silent                                  Silences stdout/stderr output
    --lts=<LTS name>                          Uses automatic alias for provided LTS line, if available.
# exec [<version>] [<command>] - Run <command> on <version>. Uses .nvmrc if available and version is omitted.
    --silent                                  Silences stdout/stderr output
    --lts=<LTS name>                          Uses automatic alias for provided LTS line, if available.
# run [<version>] [<args>] - Run `node` on <version> with <args> as arguments. Uses .nvmrc if available and version is omitted.
    --silent                                  Silences stdout/stderr output
    --lts=<LTS name>                          Uses automatic alias for provided LTS line, if available.
# current - Display currently activated version of Node
# ls [<version>] - List installed versions, matching a given <version> if provided
    --no-colors                               Suppress colored output
    --no-alias                                Suppress `nvm alias` output
# ls-remote [<version>] - List remote versions available for install, matching a given <version> if provided
    --lts=<LTS name>                          When listing, only show versions for a specific LTS line
    --no-colors                               Suppress colored output
# version <version> - Resolve the given description to a single local version
# version-remote <version> - Resolve the given description to a single remote version
    --lts=<LTS name>                          When listing, only select from versions for a specific LTS line
# deactivate - Undo effects of `nvm` on current shell
    --silent                                  Silences stdout/stderr output
# alias [name] [version] - Show or set an alias named <name> pointing to <version>
    --no-colors                               Suppress colored output
# unalias <name> - Deletes the alias named <name>
# install-latest-npm - Attempt to upgrade to the latest working `npm` on the current node version
# reinstall-packages <version> - Reinstall global `npm` packages contained in <version> to current version
# unload - Unload `nvm` from shell
# which <version> - Display path to installed node version. Uses .nvmrc if available and version is omitted.
    --silent                                  Silences stdout/stderr output when a version is omitted
# cache - Manage cache
## dir - Display path to the cache directory for nvm
## clear - Empty cache directory for nvm
# set-colors [<color codes>] - Set five text colors using format "yMeBg". Available when supported.
EOF
}

_patch_table() {
    table="$( \
        _patch_table_edit_options \
            '--lts;[`_choice_lts_name`]' \
    )"

    if [[ "$*" == "nvm install" ]] \
    || [[ "$*" == "nvm ls-remote" ]] \
    || [[ "$*" == "nvm version-remote" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_options \
            '--reinstall-packages-from;[`_choice_installed_version`]' \
        | \
        _patch_table_edit_arguments \
            'version;[`_choice_version`]' \

    elif [[ "$*" == "nvm uninstall" ]] \
      || [[ "$*" == "nvm use" ]] \
      || [[ "$*" == "nvm exec" ]] \
      || [[ "$*" == "nvm run" ]] \
      || [[ "$*" == "nvm ls" ]] \
      || [[ "$*" == "nvm version" ]] \
      || [[ "$*" == "nvm alias" ]] \
      || [[ "$*" == "nvm reinstall-packages" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'version;[`_choice_installed_version`]' \

    elif [[ "$*" == "nvm which" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments \
            'version;[`_choice_which`]' \

    else
        echo "$table"
    fi
}

_choice_installed_version() {
    nvm ls --no-colors --no-alias | \
    sed -e 's/->/  /' -e 's/^\s*//' -e 's/ \*//' -e 's/ \+/\t/'
}

_choice_lts_name() {
    nvm alias --no-colors | \
    sed -n 's|lts/\(\w\+\) -> \(\S\+\).*|\1\t\2|p'
}

_choice_version() {
    nvm ls-remote --no-colors | \
    sed -e 's/->/  /' -e 's/^\s*//' -e 's/ \*//' -e 's/ \+/\t/'
}

_choice_which() {
    echo current
    _choice_installed_version
}
