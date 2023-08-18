#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -A --ignorearch      Ignore incomplete arch field in PKGBUILD
# @flag -c --clean           Clean up work files after build
# @flag -C --cleanbuild      Remove $srcdir/ dir before building the package
# @flag -d --nodeps          Skip all dependency checks
# @flag -e --noextract       Do not extract source files (use existing $srcdir/ dir)
# @flag -f --force           Overwrite existing package
# @flag -g --geninteg        Generate integrity checks for source files
# @flag -h --help            Show this help message and exit
# @flag -i --install         Install package after successful build
# @flag -L --log             Log package build process
# @flag -m --nocolor         Disable colorized output messages
# @flag -o --nobuild         Download and extract files only
# @option -p <file>          Use an alternate build script (instead of 'PKGBUILD')
# @flag -r --rmdeps          Remove installed dependencies after a successful build
# @flag -R --repackage       Repackage contents of the package without rebuilding
# @flag -s --syncdeps        Install missing dependencies with pacman
# @flag -S --source          Generate a source-only tarball without downloaded sources
# @flag -V --version         Show version information and exit
# @flag --allsource          Generate a source-only tarball including downloaded sources
# @flag --check              Run the check() function in the PKGBUILD
# @option --config <file>    Use an alternate config file (instead of '/etc/makepkg.conf')
# @flag --holdver            Do not update VCS sources
# @option --key <key>        Specify a key to use for gpg signing instead of the default
# @flag --noarchive          Do not create package archive
# @flag --nocheck            Do not run the check() function in the PKGBUILD
# @flag --noprepare          Do not run the prepare() function in the PKGBUILD
# @flag --nosign             Do not create a signature for the package
# @flag --packagelist        Only list package filepaths that would be produced
# @flag --printsrcinfo       Print the generated SRCINFO and exit
# @flag --sign               Sign the resulting package with gpg
# @flag --skipchecksums      Do not verify checksums of the source files
# @flag --skipinteg          Do not perform any verification checks on source files
# @flag --skippgpcheck       Do not verify source files with PGP signatures
# @flag --verifysource       Download source files (if needed) and perform integrity checks
# @flag --asdeps             Install packages as non-explicitly installed
# @flag --needed             Do not reinstall the targets that are already up to date
# @flag --noconfirm          Do not ask for confirmation when resolving dependencies
# @flag --noprogressbar      Do not show a progress bar when downloading files

command eval "$(argc --argc-eval "$0" "$@")"