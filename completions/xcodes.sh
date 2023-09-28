#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Show help information.

# {{ xcodes download
# @cmd Download a specific version of Xcode
# @flag --latest                                Update and then download the latest release version available.
# @flag --latest-prerelease                     Update and then download the latest prerelease version available, including GM seeds and GMs.
# @option --aria2 <aria2>                       The path to an aria2 executable.
# @flag --no-aria2                              Don't use aria2 to download Xcode, even if its available.
# @option --directory <directory>               The directory to download Xcode to.
# @flag --use-fastlane-auth                     Use fastlane spaceship session.
# @option --fastlane-user <fastlane-user>       The fastlane spaceship user (default: FASTLANE_SESSION)
# @option --data-source <data-source>           The data source for available Xcode versions.
# @flag --color                                 Determines whether output should be colored.
# @flag --no-color                              Determines whether output should be colored.
# @flag -h --help                               Show help information.
# @arg version![`_choice_available_version`]    The version to download
download() {
    :;
}
# }} xcodes download

# {{ xcodes install
# @cmd Download and install a specific version of Xcode
# @option --path <path>                         Local path to Xcode .xip
# @flag --latest                                Update and then install the latest release version available.
# @flag --latest-prerelease                     Update and then install the latest prerelease version available, including GM seeds and GMs.
# @option --aria2 <aria2>                       The path to an aria2 executable.
# @flag --no-aria2                              Don't use aria2 to download Xcode, even if its available.
# @flag --select                                Select the installed xcode version after installation.
# @flag --update                                Whether to update the list before installing
# @flag -p --print-path                         Print the path of the selected Xcode
# @flag --experimental-unxip                    Use the experimental unxip functionality.
# @flag --no-superuser                          Don't ask for superuser (root) permission.
# @flag --empty-trash                           Completely delete Xcode .xip after installation, instead of keeping it on the user's Trash.
# @option --directory <directory>               The directory to install Xcode into.
# @flag --use-fastlane-auth                     Use fastlane spaceship session.
# @option --fastlane-user <fastlane-user>       The fastlane spaceship user.
# @option --data-source <data-source>           The data source for available Xcode versions.
# @flag --color                                 Determines whether output should be colored.
# @flag --no-color                              Determines whether output should be colored.
# @flag -h --help                               Show help information.
# @arg version![`_choice_available_version`]    The version to install
install() {
    :;
}
# }} xcodes install

# {{ xcodes installed
# @cmd List the versions of Xcode that are installed
# @option --directory <directory>               The directory where your Xcodes are installed.
# @flag --color                                 Determines whether output should be colored.
# @flag --no-color                              Determines whether output should be colored.
# @flag -h --help                               Show help information.
# @arg version![`_choice_installed_version`]    The version installed to which to print the path for
installed() {
    :;
}
# }} xcodes installed

# {{ xcodes list
# @cmd List all versions of Xcode that are available to install
# @option --directory <directory>        The directory where your Xcodes are installed.
# @option --data-source <data-source>    The data source for available Xcode versions.
# @flag --color                          Determines whether output should be colored.
# @flag --no-color                       Determines whether output should be colored.
# @flag -h --help                        Show help information.
list() {
    :;
}
# }} xcodes list

# {{ xcodes runtimes
# @cmd List all simulator runtimes that are available to install
# @flag --include-betas    Include beta runtimes available to install
# @flag -h --help          Show help information.
runtimes() {
    :;
}

# {{{ xcodes runtimes download
# @cmd Download a specific simulator runtime
# @option --aria2 <aria2>                     The path to an aria2 executable.
# @flag --no-aria2                            Don't use aria2 to download the runtime, even if its available.
# @option --directory <directory>             The directory to download the runtime archive to.
# @flag --color                               Determines whether output should be colored.
# @flag --no-color                            Determines whether output should be colored.
# @flag -h --help                             Show help information.
# @arg version![`_choice_runtime_version`]    The runtime to download
runtimes::download() {
    :;
}
# }}} xcodes runtimes download

# {{{ xcodes runtimes install
# @cmd Download and install a specific simulator runtime
# @option --aria2 <aria2>                     The path to an aria2 executable.
# @flag --no-aria2                            Don't use aria2 to download the runtime, even if its available.
# @option --directory <directory>             The directory to download the runtime archive to.
# @flag --keep-archive                        Do not delete the runtime archive after the installation is finished.
# @flag --color                               Determines whether output should be colored.
# @flag --no-color                            Determines whether output should be colored.
# @flag -h --help                             Show help information.
# @arg version![`_choice_runtime_version`]    The runtime to install
runtimes::install() {
    :;
}
# }}} xcodes runtimes install
# }} xcodes runtimes

# {{ xcodes select
# @cmd Change the selected Xcode
# @flag -p --print-path              Print the path of the selected Xcode
# @option --directory <directory>    The directory where your Xcodes are installed.
# @flag --color                      Determines whether output should be colored.
# @flag --no-color                   Determines whether output should be colored.
# @flag -h --help                    Show help information.
# @arg version-or-path![`_choice_version_or_path`]  Version or path
select_() {
    :;
}
# }} xcodes select

# {{ xcodes uninstall
# @cmd Uninstall a version of Xcode
# @flag --empty-trash                           Completely delete Xcode, instead of keeping it on the user's Trash.
# @option --directory <directory>               The directory where your Xcodes are installed.
# @flag --color                                 Determines whether output should be colored.
# @flag --no-color                              Determines whether output should be colored.
# @flag -h --help                               Show help information.
# @arg version![`_choice_installed_version`]    The version to uninstall
uninstall() {
    :;
}
# }} xcodes uninstall

# {{ xcodes update
# @cmd Update the list of available versions of Xcode
# @option --directory <directory>        The directory where your Xcodes are installed.
# @option --data-source <data-source>    The data source for available Xcode versions.
# @flag --color                          Determines whether output should be colored.
# @flag --no-color                       Determines whether output should be colored.
# @flag -h --help                        Show help information.
update() {
    :;
}
# }} xcodes update

# {{ xcodes version
# @cmd Print the version number of xcodes itself
# @flag --color       Determines whether output should be colored.
# @flag --no-color    Determines whether output should be colored.
# @flag -h --help     Show help information.
version() {
    :;
}
# }} xcodes version

# {{ xcodes signout
# @cmd Clears the stored username and password
# @flag --color       Determines whether output should be colored.
# @flag --no-color    Determines whether output should be colored.
# @flag -h --help     Show help information.
signout() {
    :;
}
# }} xcodes signout

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_available_version() {
    xcodes list | sed 's/ (/\t (/'
}

_choice_installed_version() {
    xcodes installed | sed 's/ (.*//'
}

_choice_runtime_version() {
    xcodes runtimes  | sed -n '/^\(iOS\|watchOS\|tvOS\)/ {s/ (/\t (/;p}'
}

_choice_version_or_path() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    _choice_installed_version
}

command eval "$(argc --argc-eval "$0" "$@")"