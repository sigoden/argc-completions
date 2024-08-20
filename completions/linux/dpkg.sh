#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @option --admindir <directory>         Use <directory> instead of /var/lib/dpkg.
# @option --root <directory>             Install on a different root directory.
# @option --instdir <directory>          Change installation dir without changing admin dir.
# @option --pre-invoke <command>         Set a pre-invoke hook.
# @option --post-invoke <command>        Set a post-invoke hook.
# @option --path-exclude <pattern>       Do not install paths which match a shell pattern.
# @option --path-include <pattern>       Re-include a pattern after a previous exclusion.
# @flag -O --selected-only               Skip packages not selected for install/upgrade.
# @flag -E --skip-same-version           Skip packages whose same version is installed.
# @flag -G --refuse-downgrade            Skip packages with earlier version than installed.
# @flag -B --auto-deconfigure            Install even if it would break some other package.
# @flag --triggers                       Skip or force consequential trigger processing.
# @flag --no-triggers                    Skip or force consequential trigger processing.
# @option --verify-format <format>       Verify output format (supported: 'rpm').
# @flag --no-pager                       Disables the use of any pager.
# @flag --no-debsig                      Do not try to verify package signatures.
# @flag --no-act                         Just say what we would do - don't do it.
# @flag --dry-run                        Just say what we would do - don't do it.
# @flag --simulate                       Just say what we would do - don't do it.
# @option -D --debug <octal>             Enable debugging (see -Dhelp or --debug=help).
# @option --status-fd <n>                Send status change updates to file descriptor <n>.
# @option --status-logger <command>      Send status change updates to <command>'s stdin.
# @option --log <filename>               Log status changes and actions to <filename>.
# @option --ignore-depends* <package>    Ignore dependencies involving <package>.
# @option --force-* <thing>              Override problems (see --force-help).
# @option --no-force-* <thing>           Stop when problems encountered.
# @option --refuse-* <thing>             Ditto.
# @option --abort-after <n>              Abort after encountering <n> errors.
# @flag --robot                          Use machine-readable output on some commands.

# {{ dpkg --install
# @cmd
# @alias -i
# @option -R --recursive* <dir>
# @arg path+
--install() {
    :;
}
# }} dpkg --install

# {{ dpkg --unpack
# @cmd
# @option -R --recursive* <dir>
# @arg path+
--unpack() {
    :;
}
# }} dpkg --unpack

# {{ dpkg --record-avail
# @cmd
# @alias -A
# @option -R --recursive* <dir>
# @arg path+
--record-avail() {
    :;
}
# }} dpkg --record-avail

# {{ dpkg --configure
# @cmd
# @flag -a --pending
# @arg package+[`_choice_package`]
--configure() {
    :;
}
# }} dpkg --configure

# {{ dpkg --triggers-only
# @cmd
# @flag -a --pending
# @arg package+[`_choice_package`]
--triggers-only() {
    :;
}
# }} dpkg --triggers-only

# {{ dpkg --remove
# @cmd
# @alias -r
# @flag -a --pending
# @arg package+[`_choice_package`]
--remove() {
    :;
}
# }} dpkg --remove

# {{ dpkg --purge
# @cmd
# @alias -P
# @flag -a --pending
# @arg package+[`_choice_package`]
--purge() {
    :;
}
# }} dpkg --purge

# {{ dpkg --verify
# @cmd Verify the integrity of package(s).
# @alias -V
# @arg package*[`_choice_package`]
--verify() {
    :;
}
# }} dpkg --verify

# {{ dpkg --get-selections
# @cmd Get list of selections to stdout.
# @arg pattern*
--get-selections() {
    :;
}
# }} dpkg --get-selections

# {{ dpkg --set-selections
# @cmd Set package selections from stdin.
--set-selections() {
    :;
}
# }} dpkg --set-selections

# {{ dpkg --clear-selections
# @cmd Deselect every non-essential package.
--clear-selections() {
    :;
}
# }} dpkg --clear-selections

# {{ dpkg --update-avail
# @cmd Replace available packages info.
# @arg packages-file
--update-avail() {
    :;
}
# }} dpkg --update-avail

# {{ dpkg --merge-avail
# @cmd Merge with info from file.
# @arg packages-file
--merge-avail() {
    :;
}
# }} dpkg --merge-avail

# {{ dpkg --clear-avail
# @cmd Erase existing available info.
--clear-avail() {
    :;
}
# }} dpkg --clear-avail

# {{ dpkg --forget-old-unavail
# @cmd Forget uninstalled unavailable pkgs.
--forget-old-unavail() {
    :;
}
# }} dpkg --forget-old-unavail

# {{ dpkg --status
# @cmd Display package status details.
# @alias -s
# @arg package*[`_choice_package`]
--status() {
    :;
}
# }} dpkg --status

# {{ dpkg --print-avail
# @cmd Display available version details.
# @alias -p
# @arg package*[`_choice_package`]
--print-avail() {
    :;
}
# }} dpkg --print-avail

# {{ dpkg --listfiles
# @cmd List files 'owned' by package(s).
# @alias -L
# @arg package+[`_choice_package`]
--listfiles() {
    :;
}
# }} dpkg --listfiles

# {{ dpkg --list
# @cmd List packages concisely.
# @alias -l
# @arg pattern*
--list() {
    :;
}
# }} dpkg --list

# {{ dpkg --search
# @cmd Find package(s) owning file(s).
# @alias -S
# @arg pattern+
--search() {
    :;
}
# }} dpkg --search

# {{ dpkg --audit
# @cmd Check for broken package(s).
# @alias -C
# @arg package*[`_choice_package`]
--audit() {
    :;
}
# }} dpkg --audit

# {{ dpkg --yet-to-unpack
# @cmd Print packages selected for installation.
--yet-to-unpack() {
    :;
}
# }} dpkg --yet-to-unpack

# {{ dpkg --predep-package
# @cmd Print pre-dependencies to unpack.
--predep-package() {
    :;
}
# }} dpkg --predep-package

# {{ dpkg --add-architecture
# @cmd Add <arch> to the list of architectures.
# @arg arch!
--add-architecture() {
    :;
}
# }} dpkg --add-architecture

# {{ dpkg --remove-architecture
# @cmd Remove <arch> from the list of architectures.
# @arg arch!
--remove-architecture() {
    :;
}
# }} dpkg --remove-architecture

# {{ dpkg --print-architecture
# @cmd Print dpkg architecture.
--print-architecture() {
    :;
}
# }} dpkg --print-architecture

# {{ dpkg --print-foreign-architectures
# @cmd Print allowed foreign architectures.
--print-foreign-architectures() {
    :;
}
# }} dpkg --print-foreign-architectures

# {{ dpkg --compare-versions
# @cmd Compare version numbers - see below.
# @arg a!
# @arg op!
# @arg b!
--compare-versions() {
    :;
}
# }} dpkg --compare-versions

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}

command eval "$(argc --argc-eval "$0" "$@")"