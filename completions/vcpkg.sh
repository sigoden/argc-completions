#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg response_file <@response_file>

# {{ vcpkg export
# @cmd Creates a standalone deployment of installed ports
# @flag --7zip                                     Exports to a 7zip (.7z) file
# @flag --x-all-installed                          Exports all installed packages
# @option --x-asset-sources <string>               Asset caching sources.
# @option --binarysource <string>                  Binary caching sources.
# @option --x-buildtrees-root <dir>                Buildtrees directory (experimental)
# @flag --x-chocolatey                             Exports a Chocolatey package (experimental)
# @option --downloads-root <dir>                   Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                                  Does not actually export
# @option --host-triplet <string>                  Host triplet.
# @flag --ifw                                      Exports to an IFW-based installer
# @option --ifw-configuration-file-path <file>     The temporary file path for the installer configuration
# @option --ifw-installer-file-path <file>         The file path for the exported installer
# @option --ifw-packages-directory-path <dir>      The temporary directory path for the repacked packages
# @option --ifw-repository-directory-path <dir>    The directory path for the exported repository
# @option --ifw-repository-url <string>            The remote repository URL for the online installer
# @option --x-install-root <dir>                   Installed directory (experimental)
# @option --x-maintainer <string>                  The maintainer for the exported Chocolatey package (experimental)
# @flag --nuget                                    Exports a NuGet package
# @option --nuget-description <string>             Description for the exported NuGet package
# @option --nuget-id <string>                      Id for the exported NuGet package (overrides --output)
# @option --nuget-version <string>                 The version for the exported NuGet package
# @option --output-dir <dir>                       The output directory for produced artifacts
# @option --output <file>                          The output name (used to construct filename)
# @option --overlay-ports <dir>                    Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets                         string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>                  Packages directory (experimental)
# @flag --prefab                                   Exports to Prefab format
# @option --prefab-artifact-id <string>            Artifact Id is the name of the project according Maven specifications
# @flag --prefab-debug                             Enables prefab debug
# @option --prefab-group-id <string>               GroupId uniquely identifies your project according Maven specifications
# @flag --prefab-maven                             Enables Maven
# @option --prefab-min-sdk <string>                The Android minimum supported SDK version
# @option --prefab-target-sdk <string>             The Android target sdk version
# @option --prefab-version <string>                Version is the name of the project according Maven specifications
# @flag --raw                                      Exports to an uncompressed directory
# @option --triplet <string>                       Target triplet.
# @option --vcpkg-root <dir>                       The vcpkg root directory (default: $VCPKG_ROOT)
# @flag --x-version-suffix                         string The version suffix to add for the exported Chocolatey package (experimental)
# @flag --zip                                      Exports to a zip file
# @arg port-names*[`_choice_installed_package`] <port names>
export() {
    :;
}
# }} vcpkg export

# {{ vcpkg install
# @cmd Installs a package
# @flag --allow-unsupported               Continues with a warning on unsupported ports, rather than failing
# @option --x-asset-sources <string>      Asset caching sources.
# @option --binarysource <string>         Binary caching sources.
# @option --x-buildtrees-root <dir>       Buildtrees directory (experimental)
# @flag --clean-after-build               Cleans buildtrees, packages and downloads after building each package
# @flag --clean-buildtrees-after-build    Cleans buildtrees after building each package
# @flag --clean-downloads-after-build     Cleans downloads after building each package
# @flag --clean-packages-after-build      Cleans packages after building each package
# @option --downloads-root <dir>          Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                         Does not actually build or install
# @flag --editable                        Disables source re-extraction and binary caching for libraries on the command line (classic mode)
# @flag --enforce-port-checks             Fails install if a port has detected problems or attempts to use a deprecated feature
# @option --x-feature <string>            Additional features from the top-level manifest to install (manifest mode)
# @flag --head                            Installs the libraries on the command line using the latest upstream sources (classic mode)
# @option --host-triplet <string>         Host triplet.
# @option --x-install-root <dir>          Installed directory (experimental)
# @flag --keep-going                      Continues installing packages on failure
# @flag --x-no-default-features           Does not install the default features from the top-level manifest (manifest mode)
# @flag --no-downloads                    Does not download new sources
# @flag --no-print-usage                  Does not print CMake usage information after install
# @flag --only-binarycaching              Fails if cached binaries are not available
# @flag --only-downloads                  Makes best-effort attempt to download sources without building
# @option --overlay-ports <dir>           Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets                string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>         Packages directory (experimental)
# @flag --recurse                         Allows removal of packages as part of installation
# @option --triplet <string>              Target triplet.
# @flag --x-use-aria2                     Uses aria2 to perform download tasks
# @option --vcpkg-root <dir>              The vcpkg root directory (default: $VCPKG_ROOT)
# @option --x-write-nuget-packages-config <file>  Writes a NuGet packages.config-formatted file for use with external binary caching.
# @arg port-name+[`_choice_package_cached`] <port name>
install() {
    :;
}
# }} vcpkg install

# {{ vcpkg remove
# @cmd Uninstalls a package
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                       Prints the packages to be removed, but does not remove them
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --outdated                      Removes all packages with versions that do not match the built-in registry
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --recurse                       Allows removal of dependent packages not explicitly specified
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg package-name+[`_choice_installed_package`] <package name>
remove() {
    :;
}
# }} vcpkg remove

# {{ vcpkg x-set-installed
# @cmd Installs, upgrades, or removes packages such that that installed matches exactly those supplied
# @flag --allow-unsupported             Continues with a warning on unsupported ports, rather than failing
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                       Does not actually build or install
# @flag --enforce-port-checks           Fails install if a port has detected problems or attempts to use a deprecated feature
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --keep-going                    Continues installing packages on failure
# @flag --no-print-usage                Does not print CMake usage information after install
# @flag --only-downloads                Makes best-effort attempt to download sources without building
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @option --x-write-nuget-packages-config <file>  Writes a NuGet packages.config-formatted file for use with external binary caching.
# @arg package-name+[`_choice_installed_package`] <package name>
x-set-installed() {
    :;
}
# }} vcpkg x-set-installed

# {{ vcpkg upgrade
# @cmd Rebuilds all outdated packages
# @flag --allow-unsupported             Continues with a warning on unsupported ports, rather than failing
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --no-dry-run                    Actually upgrade
# @flag --no-keep-going                 Stop installing packages on failure
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
upgrade() {
    :;
}
# }} vcpkg upgrade

# {{ vcpkg x-check-support
# @cmd Tests whether a port is supported without building it
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --x-json                        Prints JSON rather than plain text
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg port-name![`_choice_package_cached`] <port name>
x-check-support() {
    :;
}
# }} vcpkg x-check-support

# {{ vcpkg depend-info
# @cmd Displays a list of dependencies for ports
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --format <string>             Chooses output format, one of `list`, `tree`, `mermaid`, `dot`, or `dgml`
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --max-recurse <string>        Sets max recursion depth.
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --show-depth                    Shows recursion depth in `list` output
# @option --sort <string>               Chooses sort order for the `list` format, one of `lexicographical`, `topological` (default), `reverse`
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg port-name![`_choice_package_cached`] <port name>
depend-info() {
    :;
}
# }} vcpkg depend-info

# {{ vcpkg list
# @cmd Lists installed libraries
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --x-full-desc                   Does not truncate long text
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --x-json                        Prints JSON rather than plain text
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
list() {
    :;
}
# }} vcpkg list

# {{ vcpkg owns
# @cmd Searches for the owner of a file in installed packages
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg pattern!
owns() {
    :;
}
# }} vcpkg owns

# {{ vcpkg x-package-info
# @cmd Display detailed information on packages
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --x-installed                   (experimental) Reports installed packages rather than available
# @flag --x-json                        Prints JSON rather than plain text
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --x-transitive                  (experimental) Also reports dependencies of installed packages
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg package-name+[`_choice_installed_package`] <package name>
x-package-info() {
    :;
}
# }} vcpkg x-package-info

# {{ vcpkg portsdiff
# @cmd Diffs changes in port versions between commits
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg branch-name! <branch name>
portsdiff() {
    :;
}
# }} vcpkg portsdiff

# {{ vcpkg search
# @cmd Searches for packages available to be built
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --x-full-desc                   Does not truncate long text
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @flag --x-json                        Prints JSON rather than plain text
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg pattern![`_choice_package_cached`]
search() {
    :;
}
# }} vcpkg search

# {{ vcpkg update
# @cmd Lists packages that can be upgraded
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
update() {
    :;
}
# }} vcpkg update

# {{ vcpkg add
# @cmd Adds dependency to manifest
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @option --version <string>            A version or version range to match; only valid for artifacts
# @arg port
# @arg port-name![`_choice_package_cached`] <port name>
add() {
    :;
}
# }} vcpkg add

# {{ vcpkg x-add-version
# @cmd Adds a version to the version database
# @flag --all                           Processes versions for all ports
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @flag --overwrite-version             Overwrites git-tree of an existing version
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --skip-formatting-check         Skips the formatting check of vcpkg.json files
# @flag --skip-version-format-check     Skips the version format check
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @flag --verbose                       Prints success messages rather than only errors
# @arg port-name![`_choice_package_cached`] <port name>
x-add-version() {
    :;
}
# }} vcpkg x-add-version

# {{ vcpkg create
# @cmd Creates a new port
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg port-name![`_choice_package_cached`] <port name>
# @arg uri!
create() {
    :;
}
# }} vcpkg create

# {{ vcpkg edit
# @cmd Edits a port, optionally with $EDITOR, defaults to "code"
# @flag --all                           Opens editor into the port as well as the port-specific buildtree subfolder
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @flag --buildtrees                    Opens editor into the port-specific buildtree subfolder
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg port-name![`_choice_package_cached`] <port name>
edit() {
    :;
}
# }} vcpkg edit

# {{ vcpkg env
# @cmd Creates a clean shell environment for development or compiling
# @option --x-asset-sources <string>    Asset caching sources.
# @flag --bin                           Adds installed bin/ to $PATH
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @flag --debug-bin                     Adds installed debug/bin/ to $PATH
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @flag --include                       Adds installed include/ to $INCLUDE
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --python                        Adds installed python/ to $PYTHONPATH
# @flag --tools                         Adds installed tools/*/ to $PATH
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg name
env() {
    :;
}
# }} vcpkg env

# {{ vcpkg format-manifest
# @cmd Prettyfies vcpkg.json
# @flag --all                           Formats all ports' manifest files
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @flag --convert-control               Converts CONTROL files to manifest files
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg vcpkg-json-path! <vcpkg.json path>
format-manifest() {
    :;
}
# }} vcpkg format-manifest

# {{ vcpkg hash
# @cmd Gets a file's SHA256 or SHA512
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg path!
hash() {
    :;
}
# }} vcpkg hash

# {{ vcpkg x-init-registry
# @cmd Creates a blank git registry
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg path!
x-init-registry() {
    :;
}
# }} vcpkg x-init-registry

# {{ vcpkg new
# @cmd Creates a new manifest
# @flag --application                   Creates an application manifest (don't require name or version)
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --name <string>               Name for the new manifest
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --single-file                   Embeds vcpkg-configuration.json into vcpkg.json
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @flag --version-date                  Interprets --version as an ISO 8601 date.
# @flag --version-relaxed               Interprets --version as a relaxed-numeric version (Nonnegative numbers separated by dots)
# @flag --version-string                Interprets --version as a string with no ordering behavior
# @option --version <string>            Version for the new manifest
new() {
    :;
}
# }} vcpkg new

# {{ vcpkg x-update-baseline
# @cmd Updates baselines of git registries in a manifest to those registries' HEAD commit
# @flag --add-initial-baseline          Adds a `builtin-baseline` to a vcpkg.json that doesn't already have it
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                       Prints out plan without execution
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
x-update-baseline() {
    :;
}
# }} vcpkg x-update-baseline

# {{ vcpkg ci
# @cmd Tries building all ports for CI testing
# @flag --allow-unexpected-passing      Suppresses 'Passing, remove from fail list' results
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --ci-baseline <file>          Path to the ci.baseline.txt file.
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @flag --dry-run                       Prints out plan without execution
# @option --exclude <string>            Comma separated list of ports to skip
# @option --failure-logs <dir>          Directory to which failure logs will be copied
# @option --host-exclude <string>       Comma separated list of ports to skip for the host triplet
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --output-hashes <file>        File to output all determined package hashes
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --parent-hashes <file>        File to read package hashes for a parent CI state, to reduce the set of changed packages
# @flag --x-randomize                   Randomizes the install order
# @flag --skip-failures                 Skips ports marked `=fail` in ci.baseline.txt
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @flag --x-xunit-all                   Reports unchanged ports in the XUnit output
# @option --x-xunit <file>              File to output results in XUnit format
ci() {
    :;
}
# }} vcpkg ci

# {{ vcpkg x-ci-verify-versions
# @cmd Checks integrity of the version database
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @flag --verbose                       Prints result for each port rather than only just errors
# @flag --verify-git-trees              Verifies that each git tree object matches its declared version (this is very slow)
x-ci-verify-versions() {
    :;
}
# }} vcpkg x-ci-verify-versions

# {{ vcpkg contact
# @cmd Displays contact information to send feedback
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
contact() {
    :;
}
# }} vcpkg contact

# {{ vcpkg fetch
# @cmd Fetches something from the system or the internet
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @flag --x-stderr-status               Prints status/downloading messages to stderr rather than stdout (Errors/failures still go to stdout)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg value
fetch() {
    :;
}
# }} vcpkg fetch

# {{ vcpkg integrate
# @cmd Integrate vcpkg with shells and buildsystems.
# @option --x-asset-sources <string>    Asset caching sources.
# @option --binarysource <string>       Binary caching sources.
# @option --x-buildtrees-root <dir>     Buildtrees directory (experimental)
# @option --downloads-root <dir>        Downloads directory (default: $VCPKG_DOWNLOADS)
# @option --host-triplet <string>       Host triplet.
# @option --x-install-root <dir>        Installed directory (experimental)
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @arg action[`_choice_integrate_action`]
integrate() {
    :;
}
# }} vcpkg integrate

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_installed_package() {
    vcpkg list --x-json | yq 'to_entries | .[] | .value.package_name'
}

_choice_package_cached() {
    _argc_util_cache 3600 _choice_package
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