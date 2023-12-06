#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @arg response_file <@response_file>

# {{ vcpkg export
# @cmd Creates a standalone deployment of installed ports
# @arg pkg*[`_choice_installed_package`]
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
# @flag --no-print-usage                Does not print CMake usage information after install
# @flag --only-downloads                Makes best-effort attempt to download sources without building
# @option --overlay-ports <dir>         Directories of overlay ports (also: $VCPKG_OVERLAY_PORTS)
# @flag --overlay-triplets              string Directories of overlay triplets (also: $VCPKG_OVERLAY_TRIPLETS)
# @option --x-packages-root <dir>       Packages directory (experimental)
# @option --triplet <string>            Target triplet.
# @option --vcpkg-root <dir>            The vcpkg root directory (default: $VCPKG_ROOT)
# @option --x-write-nuget-packages-config <file>  Writes a NuGet packages.config-formatted file for use with external binary caching.
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
# @option --exclude <string>            Comma-separated list of ports to skip
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

command eval "$(argc --argc-eval "$0" "$@")"