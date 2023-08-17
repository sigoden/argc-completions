#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ vcpkg search
# @cmd Search for packages available to be built.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @flag --x-full-desc                   Do not truncate long text.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @flag --x-json                        (Experimental) Request JSON output.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pat[`_choice_package_cached`]
search() {
    :;
}
# }} vcpkg search

# {{ vcpkg install
# @cmd Install a package.
# @flag --allow-unsupported               Instead of erroring on an unsupported port, continue with a warning.
# @option --x-asset-sources <string>      Add sources for asset caching.
# @option --binarysource <string>         Add sources for binary caching.
# @option --x-buildtrees-root <dir>       (Experimental) Specify the buildtrees root directory.
# @flag --clean-after-build               Clean buildtrees, packages and downloads after building each package.
# @flag --clean-buildtrees-after-build    Clean buildtrees after building each package.
# @flag --clean-downloads-after-build     Clean downloads after building each package.
# @flag --clean-packages-after-build      Clean packages after building each package.
# @option --downloads-root <dir>          Specify the downloads root directory.
# @flag --dry-run                         Do not actually build or install.
# @flag --editable                        Disable source re-extraction and binary caching for libraries on the command line (classic mode)
# @flag --enforce-port-checks             Fail install if a port has detected problems or attempts to use a deprecated feature
# @option --x-feature <string>            Additional feature from the top-level manifest to install (manifest mode).
# @flag --head                            Install the libraries on the command line using the latest upstream sources (classic mode).
# @option --host-triplet <string>         Specify the host architecture triplet.
# @option --x-install-root <dir>          (Experimental) Specify the install root directory.
# @flag --keep-going                      Continue installing packages on failure.
# @flag --x-no-default-features           Don't install the default features from the top-level manifest (manifest mode).
# @flag --no-downloads                    Do not download new sources.
# @flag --no-print-usage                  Don't print CMake usage information after install.
# @flag --only-binarycaching              Fail if cached binaries are not available.
# @flag --only-downloads                  Make a best-effort attempt to download sources without building.
# @option --overlay-ports <dir>           Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>       Specifiy directories containing triplets files.
# @option --x-packages-root <dir>         (Experimental) Specify the packages root directory.
# @flag --recurse                         Allow removal of packages as part of installation.
# @option --triplet <string>              Specify the target architecture triplet.
# @flag --x-use-aria2                     Use aria2 to perform download tasks.
# @option --vcpkg-root <dir>              Specify the vcpkg root directory.
# @option --x-write-nuget-packages-config <file>  Writes out a NuGet packages.config-formatted file for use with external binary caching.
# @arg pkg+[`_choice_package_cached`]
install() {
    :;
}
# }} vcpkg install

# {{ vcpkg remove
# @cmd Uninstall a package.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @flag --dry-run                       Print the packages to be removed, but do not remove them
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @flag --outdated                      Select all packages with versions that do not match the portfiles
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @flag --recurse                       Allow removal of packages not explicitly specified on the command line
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pkg+[`_choice_installed_package`]
remove() {
    :;
}
# }} vcpkg remove

# {{ vcpkg update
# @cmd List packages that can be updated.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
update() {
    :;
}
# }} vcpkg update

# {{ vcpkg upgrade
# @cmd Rebuild all outdated packages.
# @flag --allow-unsupported             Instead of erroring on an unsupported port, continue with a warning.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @flag --no-dry-run                    Actually upgrade
# @flag --no-keep-going                 Stop installing packages on failure
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
upgrade() {
    :;
}
# }} vcpkg upgrade

# {{ vcpkg hash
# @cmd Hash a file by specific algorithm, default SHA512.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg file!
# @arg alg
hash() {
    :;
}
# }} vcpkg hash

# {{ vcpkg list
# @cmd List installed packages.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @flag --x-full-desc                   Do not truncate long text.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @flag --x-json                        (Experimental) Request JSON output.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
list() {
    :;
}
# }} vcpkg list

# {{ vcpkg integrate
# @cmd Integrate vcpkg with shells and buildsystems.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg action[`_choice_integrate_action`]
integrate() {
    :;
}
# }} vcpkg integrate

# {{ vcpkg export
# @cmd Exports a package.
# @flag --7zip                                     Export to a 7zip (.7z) file
# @flag --x-all-installed                          Export all installed packages
# @option --x-asset-sources <string>               Add sources for asset caching.
# @option --binarysource <string>                  Add sources for binary caching.
# @option --x-buildtrees-root <dir>                (Experimental) Specify the buildtrees root directory.
# @flag --x-chocolatey                             Export a Chocolatey package (experimental feature)
# @option --downloads-root <dir>                   Specify the downloads root directory.
# @flag --dry-run                                  Do not actually export.
# @option --host-triplet <string>                  Specify the host architecture triplet.
# @flag --ifw                                      Export to an IFW-based installer
# @option --ifw-configuration-file-path <file>     Specify the temporary file path for the installer configuration
# @option --ifw-installer-file-path <file>         Specify the file path for the exported installer
# @option --ifw-packages-directory-path <dir>      Specify the temporary directory path for the repacked packages
# @option --ifw-repository-directory-path <dir>    Specify the directory path for the exported repository
# @option --ifw-repository-url <string>            Specify the remote repository URL for the online installer
# @option --x-install-root <dir>                   (Experimental) Specify the install root directory.
# @option --x-maintainer <string>                  Specify the maintainer for the exported Chocolatey package (experimental feature)
# @flag --nuget                                    Export a NuGet package
# @option --nuget-description <string>             Specify a description for the exported NuGet package
# @option --nuget-id <string>                      Specify the id for the exported NuGet package (overrides --output)
# @option --nuget-version <string>                 Specify the version for the exported NuGet package
# @option --output-dir <dir>                       Specify the output directory for produced artifacts
# @option --output <file>                          Specify the output name (used to construct filename)
# @option --overlay-ports <dir>                    Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>                Specifiy directories containing triplets files.
# @option --x-packages-root <dir>                  (Experimental) Specify the packages root directory.
# @flag --prefab                                   Export to Prefab format
# @option --prefab-artifact-id <string>            Artifact Id is the name of the project according Maven specifications
# @flag --prefab-debug                             Enable prefab debug
# @option --prefab-group-id <string>               GroupId uniquely identifies your project according Maven specifications
# @flag --prefab-maven                             Enable Maven
# @option --prefab-min-sdk <string>                Android minimum supported SDK version
# @option --prefab-target-sdk <string>             Android target sdk version
# @option --prefab-version <string>                Version is the name of the project according Maven specifications
# @flag --raw                                      Export to an uncompressed directory
# @option --triplet <string>                       Specify the target architecture triplet.
# @option --vcpkg-root <dir>                       Specify the vcpkg root directory.
# @option --x-version-suffix <string>              Specify the version suffix to add for the exported Chocolatey package (experimental feature)
# @flag --zip                                      Export to a zip file
# @arg pkg*[`_choice_installed_package`]
export() {
    :;
}
# }} vcpkg export

# {{ vcpkg edit
# @cmd Open a port for editing (use the environment variable 'EDITOR' to set an editor program, defaults to 'code').
# @flag --all                           Open editor into the port as well as the port-specific buildtree subfolder
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @flag --buildtrees                    Open editor into the port-specific buildtree subfolder
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pkg![`_choice_package_cached`]
edit() {
    :;
}
# }} vcpkg edit

# {{ vcpkg create
# @cmd Create a new port.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pkg!
# @arg url!
# @arg archivename
create() {
    :;
}
# }} vcpkg create

# {{ vcpkg x-init-registry
# @cmd Initializes a registry in the directory <path>.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg path!
x-init-registry() {
    :;
}
# }} vcpkg x-init-registry

# {{ vcpkg format-manifest
# @cmd Formats all vcpkg.json files.
# @flag --all                           Format all ports' manifest files.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @flag --convert-control               Convert CONTROL files to manifest files.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
format-manifest() {
    :;
}
# }} vcpkg format-manifest

# {{ vcpkg owns
# @cmd Search for files in installed packages.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pat!
owns() {
    :;
}
# }} vcpkg owns

# {{ vcpkg depend-info
# @cmd Display a list of dependencies for ports.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --format <string>             Choose output format, one of `list`, `tree`, `mermaid`, `dot`, or `dgml`.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --max-recurse <string>        Set max recursion depth.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @flag --show-depth                    Show recursion depth in `list` output.
# @option --sort <string>               Choose sort order for the `list` format, one of `lexicographical`, `topological` (default), `reverse`
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
# @arg pkg+[`_choice_package_cached`]
depend-info() {
    :;
}
# }} vcpkg depend-info

# {{ vcpkg env
# @cmd Creates a clean shell environment for development or compiling.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @flag --bin                           Add installed bin/ to PATH
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @flag --debug-bin                     Add installed debug/bin/ to PATH
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @flag --include                       Add installed include/ to INCLUDE
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @flag --python                        Add installed python/ to PYTHONPATH
# @flag --tools                         Add installed tools/*/ to PATH
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
env() {
    :;
}
# }} vcpkg env

# {{ vcpkg version
# @cmd Display version information.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
version() {
    :;
}
# }} vcpkg version

# {{ vcpkg contact
# @cmd Display contact information to send feedback.
# @option --x-asset-sources <string>    Add sources for asset caching.
# @option --binarysource <string>       Add sources for binary caching.
# @option --x-buildtrees-root <dir>     (Experimental) Specify the buildtrees root directory.
# @option --downloads-root <dir>        Specify the downloads root directory.
# @option --host-triplet <string>       Specify the host architecture triplet.
# @option --x-install-root <dir>        (Experimental) Specify the install root directory.
# @option --overlay-ports <dir>         Specify directories to be used when searching for ports.
# @option --overlay-triplets <path>     Specifiy directories containing triplets files.
# @option --x-packages-root <dir>       (Experimental) Specify the packages root directory.
# @flag --survey                        Launch default browser to the current vcpkg survey
# @option --triplet <string>            Specify the target architecture triplet.
# @option --vcpkg-root <dir>            Specify the vcpkg root directory.
contact() {
    :;
}
# }} vcpkg contact

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package_cached() {
    _argc_util_cache 3600 _choice_package
}

_choice_installed_package() {
    vcpkg list --x-json | yq 'to_entries | .[] | .value.package_name'
}

_choice_integrate_action() {
    cat <<-'EOF'
install	Make installed packages available user-wide.
remove	Remove user-wide integration.
project	Creates a linked NuGet package for MSBuild integration.
powershell	Enable powershell tab-completion.
bash	Enable bash tab-completion.
zsh	Enable zsh tab-completion.
x-fish	Enable fish tab-completion.
EOF
}

_choice_package() {
    vcpkg search --x-json | yq 'to_entries | .[] | .key + "	" + .value.description[0]'
}

command eval "$(argc --argc-eval "$0" "$@")"