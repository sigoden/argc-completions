#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                    Show this help message and exit.
# @flag --version                    Show version info and exit.
# @flag --dev                        Enable the sub-repositories in rocks servers for rockspecs of in-development versions.
# @option --server <server>          Fetch rocks/rockspecs from this server (takes priority over config file).
# @option --only-server <server>     Fetch rocks/rockspecs from this server only (overrides any entries in the config file).
# @option --only-sources <url>       Restrict downloads to paths matching the given URL.
# @option --namespace <namespace>    Specify the rocks server namespace to use.
# @option --lua-dir <prefix>         Which Lua installation to use.
# @option --lua-version <ver>        Which Lua version to use.
# @option --tree <tree>              Which tree to operate on.
# @flag --local                      Use the tree in the user's home directory.
# @flag --global                     Use the system tree when `local_by_default` is `true`.
# @flag --no-project                 Do not use project tree even if running from a project folder.
# @flag --verbose                    Display verbose output of commands executed.
# @option --timeout <seconds>        Timeout on network operations, in seconds.

# {{ luarocks completion
# @cmd Output a shell completion script.
# @flag -h --help             Show this help message and exit.
# @arg enum[bash|zsh|fish]    The shell to output a completion script for.
completion() {
    :;
}
# }} luarocks completion

# {{ luarocks build
# @cmd Build/compile a rock.
# @flag -h --help               Show this help message and exit.
# @option --branch <name>       Override the `source.branch` field in the loaded rockspec.
# @flag --no-install            Do not install the rock.
# @flag --no-doc                Install the rock without its documentation.
# @flag --pack-binary-rock      Do not install rock.
# @flag --keep                  Do not remove previously installed versions of the rock after building a new one.
# @flag --force                 If --keep is not specified, force removal of previously installed versions if it would break dependencies.
# @flag --force-fast            Like --force, but performs a forced removal without reporting dependency issues.
# @flag --verify                Verify signature of the rockspec or src.rock being built.
# @flag --sign                  To be used with --pack-binary-rock.
# @flag --check-lua-versions    If the rock can't be found, check repository and report if it is available for another Lua version.
# @flag --pin                   Pin the exact dependencies used for the rockspecbeing built into a luarocks.lock file in the current directory.
# @flag --no-manifest           Skip creating/updating the manifest
# @flag --only-deps             Install only the dependencies of the rock.
# @flag --deps-only             Install only the dependencies of the rock.
# @option --deps-mode[`_choice_deps_mode`] <mode>  How to handle dependencies.
# @arg rock                     A rockspec file, a source rock file, or the name of a rock to be fetched from a repository.
# @arg version                  Rock version.
build() {
    :;
}
# }} luarocks build

# {{ luarocks config
# @cmd Query information about the LuaRocks configuration.
# @flag -h --help                         Show this help message and exit.
# @option --scope[system|user|project]    The scope indicates which config file should be rewritten.
# @flag --unset                           Delete the key from the configuration file.
# @flag --json                            Output as JSON.
# @arg key                                The configuration key.
# @arg value                              The configuration value.
config() {
    :;
}
# }} luarocks config

# {{ luarocks doc
# @cmd Show documentation for an installed rock.
# @flag -h --help      Show this help message and exit.
# @flag --home         Open the home page of project.
# @flag --list         List documentation files only.
# @flag --porcelain    Produce machine-friendly output.
# @arg rock            Name of the rock.
# @arg version         Version of the rock.
doc() {
    :;
}
# }} luarocks doc

# {{ luarocks download
# @cmd Download a specific rock file from a rocks server.
# @flag -h --help               Show this help message and exit.
# @flag --all                   Download all files if there are multiple matches.
# @flag --source                Download .src.rock if available.
# @flag --rockspec              Download .rockspec if available.
# @option --arch <arch>         Download rock for a specific architecture.
# @flag --check-lua-versions    If the rock can't be found, check repository and report if it is available for another Lua version.
# @arg name                     Name of the rock.
# @arg version                  Version of the rock.
download() {
    :;
}
# }} luarocks download

# {{ luarocks init
# @cmd Initialize a directory for a Lua project using LuaRocks.
# @option --output <file>            Write the rockspec with the given filename.
# @option --license <string>         A license string, such as "MIT/X11" or "GNU GPL v3".
# @option --summary <txt>            A short one-line description summary.
# @option --detailed <txt>           A longer description string.
# @option --homepage <txt>           Project homepage.
# @option --lua-versions <ver>       Supported Lua versions.
# @option --rockspec-format <ver>    Rockspec format version, such as "1.0" or "1.1".
# @option --tag <tag>                Tag to use.
# @option --lib <libs>               A comma-separated list of libraries that C files need to link to.
# @flag -h --help                    Show this help message and exit.
# @flag --reset                      Delete .luarocks/config-5.x.lua and ./lua and generate new ones.
# @arg name                          The project name.
# @arg version                       An optional project version.
init() {
    :;
}
# }} luarocks init

# {{ luarocks install
# @cmd Install a rock.
# @flag -h --help               Show this help message and exit.
# @flag --keep                  Do not remove previously installed versions of the rock after building a new one.
# @flag --force                 If --keep is not specified, force removal of previously installed versions if it would break dependencies.
# @flag --force-fast            Like --force, but performs a forced removal without reporting dependency issues.
# @flag --only-deps             Install only the dependencies of the rock.
# @flag --deps-only             Install only the dependencies of the rock.
# @flag --no-doc                Install the rock without its documentation.
# @flag --verify                Verify signature of the rockspec or src.rock being built.
# @flag --check-lua-versions    If the rock can't be found, check repository and report if it is available for another Lua version.
# @option --deps-mode[`_choice_deps_mode`] <mode>  How to handle dependencies.
# @flag --no-manifest           Skip creating/updating the manifest
# @flag --pin                   If the installed rock is a Lua module, create a luarocks.lock file listing the exact versions of each dependency found for this rock (recursively), and store it in the rock's directory.
# @arg rock                     The name of a rock to be fetched from a repository or a filename of a locally available rock.
# @arg version                  Version of the rock.
install() {
    :;
}
# }} luarocks install

# {{ luarocks lint
# @cmd Check syntax of a rockspec.
# @flag -h --help    Show this help message and exit.
# @arg rockspec      The rockspec to check.
lint() {
    :;
}
# }} luarocks lint

# {{ luarocks list
# @cmd List currently installed rocks.
# @flag -h --help      Show this help message and exit.
# @flag --outdated     List only rocks for which there is a higher version available in the rocks server.
# @flag --porcelain    Produce machine-friendly output.
# @arg filter          A substring of a rock name to filter by.
# @arg version         Rock version to filter by.
list() {
    :;
}
# }} luarocks list

# {{ luarocks make
# @cmd Compile package in current directory using a rockspec.
# @flag -h --help               Show this help message and exit.
# @flag --no-install            Do not install the rock.
# @flag --no-doc                Install the rock without its documentation.
# @flag --pack-binary-rock      Do not install rock.
# @flag --keep                  Do not remove previously installed versions of the rock after building a new one.
# @flag --force                 If --keep is not specified, force removal of previously installed versions if it would break dependencies.
# @flag --force-fast            Like --force, but performs a forced removal without reporting dependency issues.
# @flag --verify                Verify signature of the rockspec or src.rock being built.
# @flag --sign                  To be used with --pack-binary-rock.
# @flag --check-lua-versions    If the rock can't be found, check repository and report if it is available for another Lua version.
# @flag --pin                   Pin the exact dependencies used for the rockspecbeing built into a luarocks.lock file in the current directory.
# @flag --no-manifest           Skip creating/updating the manifest
# @flag --only-deps             Install only the dependencies of the rock.
# @flag --deps-only             Install only the dependencies of the rock.
# @option --deps-mode[`_choice_deps_mode`] <mode>  How to handle dependencies.
# @arg rockspec                 Rockspec for the rock to build.
make() {
    :;
}
# }} luarocks make

# {{ luarocks new_version
# @cmd Auto-write a rockspec for a new version of a rock.
# @flag -h --help        Show this help message and exit.
# @option --dir <dir>    Output directory for the new rockspec.
# @option --tag <tag>    New SCM tag.
# @arg rock              Package name or rockspec.
# @arg new_version       New version of the rock.
# @arg new_url           New URL of the rock.
new_version() {
    :;
}
# }} luarocks new_version

# {{ luarocks pack
# @cmd Create a rock, packing sources or binaries.
# @flag -h --help    Show this help message and exit.
# @flag --sign       Produce a signature file as well.
# @arg rock          A rockspec file, for creating a source rock, or the name of an installed package, for creating a binary rock.
# @arg version       A version may be given if the first argument is a rock name.
pack() {
    :;
}
# }} luarocks pack

# {{ luarocks path
# @cmd Return the currently configured package path.
# @flag -h --help     Show this help message and exit.
# @flag --no-bin      Do not export the PATH variable.
# @flag --append      Appends the paths to the existing paths.
# @flag --lr-path     Exports the Lua path (not formatted as shell command).
# @flag --lr-cpath    Exports the Lua cpath (not formatted as shell command).
# @flag --lr-bin      Exports the system path (not formatted as shell command).
path() {
    :;
}
# }} luarocks path

# {{ luarocks purge
# @cmd Remove all installed rocks from a tree.
# @flag -h --help         Show this help message and exit.
# @flag --old-versions    Keep the highest-numbered version of each rock and remove the other ones.
# @flag --force           If --old-versions is specified, force removal of previously installed versions if it would break dependencies.
# @flag --force-fast      Like --force, but performs a forced removal without reporting dependency issues.
purge() {
    :;
}
# }} luarocks purge

# {{ luarocks remove
# @cmd Uninstall a rock.
# @flag -h --help       Show this help message and exit.
# @flag --force         Force removal if it would break dependencies.
# @flag --force-fast    Perform a forced removal without reporting dependency issues.
# @option --deps-mode[`_choice_deps_mode`] <mode>  How to handle dependencies.
# @arg rock             Name of the rock to be uninstalled.
# @arg version          Version of the rock to uninstall.
remove() {
    :;
}
# }} luarocks remove

# {{ luarocks search
# @cmd Query the LuaRocks servers.
# @flag -h --help      Show this help message and exit.
# @flag --source       Return only rockspecs and source rocks, to be used with the "build" command.
# @flag --binary       Return only pure Lua and binary rocks (rocks that can be used with the "install" command without requiring a C toolchain).
# @flag --all          List all contents of the server that are suitable to this platform, do not filter by name.
# @flag --porcelain    Return a machine readable format.
# @arg name            Name of the rock to search for.
# @arg version         Rock version to search for.
search() {
    :;
}
# }} luarocks search

# {{ luarocks show
# @cmd Show information about an installed rock.
# @flag -h --help           Show this help message and exit.
# @flag --home              Show home page of project.
# @flag --modules           Show all modules provided by the package as used by require().
# @flag --deps              Show packages the package depends on.
# @flag --build-deps        Show build-only dependencies for the package.
# @flag --test-deps         Show dependencies for testing the package.
# @flag --rockspec          Show the full path of the rockspec file.
# @flag --mversion          Show the package version.
# @flag --rock-tree         Show local tree where rock is installed.
# @flag --rock-namespace    Show rock namespace.
# @flag --rock-dir          Show data directory of the installed rock.
# @flag --rock-license      Show rock license.
# @flag --issues            Show URL for project's issue tracker.
# @flag --labels            List the labels of the rock.
# @flag --porcelain         Produce machine-friendly output.
# @arg rock                 Name of an installed rock.
# @arg version              Rock version.
show() {
    :;
}
# }} luarocks show

# {{ luarocks test
# @cmd Run the test suite in the current directory.
# @flag -h --help               Show this help message and exit.
# @flag --prepare               Only install dependencies needed for testing only, but do not run the test
# @option --test-type <type>    Specify the test suite type manually if it was not specified in the rockspec and it could not be auto-detected.
# @arg rockspec                 Project rockspec.
# @arg args*                    Test suite arguments.
test() {
    :;
}
# }} luarocks test

# {{ luarocks unpack
# @cmd Unpack the contents of a rock.
# @flag -h --help               Show this help message and exit.
# @flag --force                 Unpack files even if the output directory already exists.
# @flag --check-lua-versions    If the rock can't be found, check repository and report if it is available for another Lua version.
# @arg rock                     A rock file or the name of a rock.
# @arg version                  Rock version.
unpack() {
    :;
}
# }} luarocks unpack

# {{ luarocks upload
# @cmd Upload a rockspec to the public rocks repository.
# @flag -h --help             Show this help message and exit.
# @flag --skip-pack           Do not pack and send source rock.
# @option --api-key <key>     Pass an API key.
# @option --temp-key <key>    Use the given a temporary API key in this invocation only.
# @flag --force               Replace existing rockspec if the same revision of a module already exists.
# @flag --sign                Upload a signature file alongside each file as well.
# @arg rockspec               Rockspec for the rock to upload.
# @arg src-rock               A corresponding .src.rock file; if not given it will be generated.
upload() {
    :;
}
# }} luarocks upload

# {{ luarocks which
# @cmd Tell which file corresponds to a given module name.
# @flag -h --help    Show this help message and exit.
# @arg modname       Module name.
which() {
    :;
}
# }} luarocks which

# {{ luarocks write_rockspec
# @cmd Write a template for a rockspec file.
# @flag -h --help                    Show this help message and exit.
# @option --output <file>            Write the rockspec with the given filename.
# @option --license <string>         A license string, such as "MIT/X11" or "GNU GPL v3".
# @option --summary <txt>            A short one-line description summary.
# @option --detailed <txt>           A longer description string.
# @option --homepage <txt>           Project homepage.
# @option --lua-versions <ver>       Supported Lua versions.
# @option --rockspec-format <ver>    Rockspec format version, such as "1.0" or "1.1".
# @option --tag <tag>                Tag to use.
# @option --lib <libs>               A comma-separated list of libraries that C files need to link to.
# @arg name                          Name of the rock.
# @arg version                       Rock version.
# @arg location                      URL or path to the rock sources.
write_rockspec() {
    :;
}
# }} luarocks write_rockspec

_choice_deps_mode() {
    cat <<'EOF'
all	use all trees from the rocks_trees list for finding dependencies
one	use only the current tree (possibly set with --tree)
order	use trees based on order (use the current tree and all trees below it on the rocks_trees list)
none	ignore dependencies altogether.
EOF

}

command eval "$(argc --argc-eval "$0" "$@")"