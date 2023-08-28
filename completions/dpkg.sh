#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -i --install* <path>               Install the package.
# @option --unpack* <path>                   Unpack the package, but don't configure it.
# @option -A --record-avail* <path>          Unpack the package, but don't configure it.
# @option --configure*[`_choice_package`] <package>  Configure a package which has been unpacked but not yet configured.
# @option --triggers-only* <package>         Processes only triggers.
# @option -r --remove*[`_choice_package`] <package>  Remove an installed package.
# @option -P --purge*[`_choice_package`] <package>  Purge an installed or already removed package.
# @flag -R --recursive                       Run command recursively
# @flag -a --pending                         Work on pending packages only
# @option -V --verify*[`_choice_package`] <package>  Verify the integrity of package(s).
# @option --get-selections* <pattern>        Get list of selections to stdout.
# @flag --set-selections                     Set package selections from stdin.
# @flag --clear-selections                   Deselect every non-essential package.
# @option --update-avail <Packages-file>     Replace available packages info.
# @option --merge-avail <Packages-file>      Merge with info from file.
# @flag --clear-avail                        Erase existing available info.
# @flag --forget-old-unavail                 Forget uninstalled unavailable pkgs.
# @option -s --status*[`_choice_package`] <package>  Display package status details.
# @option -p --print-avail*[`_choice_package`] <package>  Display available version details.
# @option -L --listfiles*[`_choice_package`] <package>  List files 'owned' by package(s).
# @option -l --list* <pattern>               List packages concisely.
# @option -S --search* <pattern>             Find package(s) owning file(s).
# @option -C --audit*[`_choice_package`] <package>  Check for broken package(s).
# @flag --yet-to-unpack                      Print packages selected for installation.
# @flag --predep-package                     Print pre-dependencies to unpack.
# @option --add-architecture <arch>          Add <arch> to the list of architectures.
# @option --remove-architecture <arch>       Remove <arch> from the list of architectures.
# @flag --print-architecture                 Print dpkg architecture.
# @flag --print-foreign-architectures        Print allowed foreign architectures.
# @flag --assert-help                        Show help on assertions.
# @option --assert- <feature>                Assert support for the specified feature.
# @option --validate- <thing> <string>       Validate a <thing>'s <string>.
# @option --compare-versions <a> <op> <b>    Compare version numbers - see below.
# @flag --force-help                         Show help on forcing.
# @option --admindir <directory>             Use <directory> instead of /var/lib/dpkg.
# @option --root <directory>                 Install on a different root directory.
# @option --instdir <directory>              Change installation dir without changing admin dir.
# @option --pre-invoke <command>             Set a pre-invoke hook.
# @option --post-invoke <command>            Set a post-invoke hook.
# @option --path-exclude <pattern>           Do not install paths which match a shell pattern.
# @option --path-include <pattern>           Re-include a pattern after a previous exclusion.
# @flag -O --selected-only                   Skip packages not selected for install/upgrade.
# @flag -E --skip-same-version               Skip packages whose same version is installed.
# @flag -G --refuse-downgrade                Skip packages with earlier version than installed.
# @flag -B --auto-deconfigure                Install even if it would break some other package.
# @flag --triggers                           Skip or force consequential trigger processing.
# @flag --no-triggers                        Skip or force consequential trigger processing.
# @option --verify-format <format>           Verify output format (supported: 'rpm').
# @flag --no-pager                           Disables the use of any pager.
# @flag --no-debsig                          Do not try to verify package signatures.
# @option --no-act <|--simulate>             Just say what we would do - don't do it.
# @option --dry-run <|--simulate>            Just say what we would do - don't do it.
# @option -D --debug <octal>                 Enable debugging (see -Dhelp or --debug=help).
# @option --status-fd <n>                    Send status change updates to file descriptor <n>.
# @option --status-logger <command>          Send status change updates to <command>'s stdin.
# @option --log <filename>                   Log status changes and actions to <filename>.
# @option --ignore-depends* <package>        Ignore dependencies involving <package>.
# @option --force-* <thing>                  Override problems (see --force-help).
# @option --no-force-* <thing>               Stop when problems encountered.
# @option --refuse-* <thing>                 Ditto.
# @option --abort-after <n>                  Abort after encountering <n> errors.
# @flag --robot                              Use machine-readable output on some commands.

_choice_package() {
    dpkg-query -W -f '${Package}\n'
}

command eval "$(argc --argc-eval "$0" "$@")"