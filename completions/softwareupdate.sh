#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -l --list                   List all appropriate update labels (options:  --no-scan, --product-types)
# @flag -d --download               Download Only
# @flag --list-full-installers      List the available macOS Installers
# @flag --fetch-full-installer      Install the latest recommended macOS Installer
# @flag --full-installer-version    The version of macOS to install.
# @flag --install-rosetta           Install Rosetta 2
# @flag --background                Trigger a background scan and update operation
# @flag --dump-state                Log the internal state of the SU daemon to /var/log/install.log
# @flag --evaluate-products         Evaluate a list of product keys specified by the --products option
# @flag --history                   Show the install history.
# @flag --no-scan                   Do not scan when listing or installing updates (use available updates previously scanned)
# @option --product-types <type>    Limit a scan to a particular product type only - ignoring all others Ex:  --product-types macOS  || --product-types macOS,Safari
# @flag --products                  A comma-separated (no spaces) list of product keys to operate on.
# @flag --force                     Force an operation to complete.
# @flag --agree-to-license          Agree to the software license agreement without user interaction.
# @flag --verbose                   Enable verbose output
# @flag --help                      Print this help

# {{ softwareupdate --install
# @cmd Install
# @alias -i
# @flag -a --all            All appropriate updates
# @flag -R --restart        Automatically restart (or shut down) if required to complete installation.
# @flag -r --recommended    Only recommended updates
# @flag --os-only           Only OS updates
# @flag --safari-only       Only Safari updates
# @flag --stdinpass         Password to authenticate as an owner.
# @flag --user              Local username to authenticate as an owner.
--install() {
    :;
}
# }} softwareupdate --install

command eval "$(argc --argc-eval "$0" "$@")"