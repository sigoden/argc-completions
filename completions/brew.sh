#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --cache*[`_choice_suggest_formula_cask`] <formula|cask>  Display Homebrew´s download cache.
# @option --caskroom* <cask>     Display Homebrew´s Caskroom path.
# @option --cellar*[`_choice_suggest_formula`] <formula>  Display Homebrew´s Cellar path.
# @flag --env                    Summarise Homebrew´s build environment as a plain list.
# @flag --prefix                 Display Homebrew´s install path.
# @option --repository* <tap>    Display where Homebrew´s git repository is located.
# @option --repo* <tap>          Display where Homebrew´s git repository is located.
# @flag -v --version             Print the version numbers of Homebrew

# {{ brew install
# @cmd Install formula.
# @flag -d --debug                        If brewing fails, open an interactive debugging session with access to IRB or a shell inside the temporary build directory.
# @flag -f --force                        Install formulae without checking for previously installed keg-only or non-migrated versions.
# @flag -v --verbose                      Print the verification and post-install steps.
# @flag -n --dry-run                      Show what would be installed, but do not actually install anything.
# @flag --formula                         Treat all named arguments as formulae.
# @flag --formulae                        Treat all named arguments as formulae.
# @flag --ignore-dependencies             An unsupported Homebrew development option to skip installing any dependencies of any kind.
# @flag --only-dependencies               Install the dependencies with specified options but do not install the formula itself.
# @flag --cc                              Attempt to compile using the specified compiler, which should be the name of the compiler's executable, e.g. gcc-7 for GCC 7.
# @flag -s --build-from-source            Compile formula from source even if a bottle is provided.
# @flag --force-bottle                    Install from a bottle if it exists for the current or newest version of macOS, even if it would not normally be used for installation.
# @flag --include-test                    Install testing dependencies required to run brew test formula.
# @flag --HEAD                            If formula defines it, install the HEAD version, aka.
# @flag --fetch-HEAD                      Fetch the upstream repository to detect if the HEAD installation of the formula is outdated.
# @flag --keep-tmp                        Retain the temporary files created during installation.
# @flag --debug-symbols                   Generate debug symbols on build.
# @flag --build-bottle                    Prepare the formula for eventual bottling during installation, skipping any post-install steps.
# @flag --skip-post-install               Install but skip any post-install steps.
# @flag --bottle-arch                     Optimise bottles for the specified architecture rather than the oldest architecture supported by the version of macOS the bottles are built on.
# @flag --display-times                   Print install times for each package at the end of the run.
# @flag -i --interactive                  Download and patch formula, then open a shell.
# @flag -g --git                          Create a Git repository, useful for creating patches to the software.
# @flag --overwrite                       Delete files that already exist in the prefix while linking.
# @flag --cask                            Treat all named arguments as casks.
# @flag --casks                           Treat all named arguments as casks.
# @flag --binaries                        Disable/enable linking of helper executables (default: enabled).
# @flag --no-binaries                     Disable/enable linking of helper executables (default: enabled).
# @flag --require-sha                     Require all casks to have a checksum.
# @flag --quarantine                      Disable/enable quarantining of downloads (default: enabled).
# @flag --no-quarantine                   Disable/enable quarantining of downloads (default: enabled).
# @flag --adopt                           Adopt existing artifacts in the destination that are identical to those being installed.
# @flag --skip-cask-deps                  Skip installing cask dependencies.
# @flag --zap                             For use with brew reinstall --cask.
# @option --appdir <dir>                  Target location for Applications (default: /Applications).
# @option --keyboard-layoutdir <dir>      Target location for Keyboard Layouts (default: /Library/Keyboard Layouts).
# @option --colorpickerdir <dir>          Target location for Color Pickers (default: ~/Library/ColorPickers).
# @option --prefpanedir <dir>             Target location for Preference Panes (default: ~/Library/PreferencePanes).
# @option --qlplugindir <dir>             Target location for QuickLook Plugins (default: ~/Library/QuickLook).
# @option --mdimporterdir <dir>           Target location for Spotlight Plugins (default: ~/Library/Spotlight).
# @option --dictionarydir <dir>           Target location for Dictionaries (default: ~/Library/Dictionaries).
# @option --fontdir <dir>                 Target location for Fonts (default: ~/Library/Fonts).
# @option --servicedir <dir>              Target location for Services (default: ~/Library/Services).
# @option --input-methoddir <dir>         Target location for Input Methods (default: ~/Library/Input Methods).
# @option --internet-plugindir <dir>      Target location for Internet Plugins (default: ~/Library/Internet Plug-Ins).
# @option --audio-unit-plugindir <dir>    Target location for Audio Unit Plugins (default: ~/Library/Audio/Plug-Ins/Components).
# @option --vst-plugindir <dir>           Target location for VST Plugins (default: ~/Library/Audio/Plug-Ins/VST).
# @option --vst3-plugindir <dir>          Target location for VST3 Plugins (default: ~/Library/Audio/Plug-Ins/VST3).
# @option --screen-saverdir <dir>         Target location for Screen Savers (default: ~/Library/Screen Savers).
# @option --language <value>              Comma-separated list of language codes to prefer for cask installation.
# @flag -q --quiet                        Make some output more quiet.
# @flag -h --help                         Show this message.
# @arg formula-cask[`_choice_suggest_formula_cask`] <formula|cask>
install() {
    :;
}
# }} brew install

# {{ brew uninstall
# @cmd Uninstall formula.
# @alias remove,rm
# @flag -f --force               Delete all installed versions of formula.
# @flag --zap                    Remove all files associated with a cask.
# @flag --ignore-dependencies    Don't fail uninstall, even if formula is a dependency of any installed formulae.
# @flag --formula                Treat all named arguments as formulae.
# @flag --formulae               Treat all named arguments as formulae.
# @flag --cask                   Treat all named arguments as casks.
# @flag --casks                  Treat all named arguments as casks.
# @flag -d --debug               Display any debugging information.
# @flag -q --quiet               Make some output more quiet.
# @flag -v --verbose             Make some output more verbose.
# @flag -h --help                Show this message.
# @arg installed_formula-installed_cask[`_choice_installed_formula_cask`] <installed_formula|installed_cask>
uninstall() {
    :;
}
# }} brew uninstall

# {{ brew list
# @cmd List all installed formulae.
# @alias ls
# @flag --formula       List only formulae, or treat all named arguments as formulae.
# @flag --formulae      List only formulae, or treat all named arguments as formulae.
# @flag --cask          List only casks, or treat all named arguments as casks.
# @flag --casks         List only casks, or treat all named arguments as casks.
# @flag --full-name     Print formulae with fully-qualified names.
# @flag --versions      Show the version number for installed formulae, or only the specified formulae if formula are provided.
# @flag --multiple      Only show formulae with multiple versions installed.
# @flag --pinned        List only pinned formulae, or only the specified (pinned) formulae if formula are provided.
# @flag -1              Force output to be one entry per line.
# @flag -l              List formulae and/or casks in long format.
# @flag -r              Reverse the order of the formulae and/or casks sort to list the oldest entries first.
# @flag -t              Sort formulae and/or casks by time modified, listing most recently modified first.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula-installed_cask*[`_choice_installed_formula_cask`] <installed_formula|installed_cask>
list() {
    :;
}
# }} brew list

# {{ brew search
# @cmd Perform a substring search of cask tokens and formula names for text.
# @flag --formula         Search for formulae.
# @flag --formulae        Search for formulae.
# @flag --cask            Search for casks.
# @flag --casks           Search for casks.
# @flag --desc            Search for formulae with a description matching text and casks with a name or description matching text.
# @flag --eval-all        Evaluate all available formulae and casks, whether installed or not, to search their descriptions.
# @flag --pull-request    Search for GitHub pull requests containing text.
# @flag --open            Search for only open GitHub pull requests.
# @flag --closed          Search for only closed GitHub pull requests.
# @flag --repology        Search for text in the given database.
# @flag --macports        Search for text in the given database.
# @flag --fink            Search for text in the given database.
# @flag --opensuse        Search for text in the given database.
# @flag --fedora          Search for text in the given database.
# @flag --archlinux       Search for text in the given database.
# @flag --debian          Search for text in the given database.
# @flag --ubuntu          Search for text in the given database.
# @flag -d --debug        Display any debugging information.
# @flag -q --quiet        Make some output more quiet.
# @flag -v --verbose      Make some output more verbose.
# @flag -h --help         Show this message.
# @arg text-regex <text|/regex/>
search() {
    :;
}
# }} brew search

# {{ brew analytics
# @cmd Control Homebrew´s anonymous aggregate user behaviour analytics.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg subcommand[state|on|off]
analytics() {
    :;
}
# }} brew analytics

# {{ brew autoremove
# @cmd Uninstall formulae that were only installed as a dependency of another formula and are now no longer needed.
# @flag -n --dry-run    List what would be uninstalled, but do not actually uninstall anything.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
autoremove() {
    :;
}
# }} brew autoremove

# {{ brew casks
# @cmd List all locally installable casks including short names.
casks() {
    :;
}
# }} brew casks

# {{ brew cleanup
# @cmd Remove stale lock files and outdated downloads for all formulae and casks, and remove old versions of installed formulae.
# @flag --prune           Remove all cache files older than specified days.
# @flag -n --dry-run      Show what would be removed, but do not actually remove anything.
# @flag -s                Scrub the cache, including downloads for even the latest versions.
# @flag --prune-prefix    Only prune the symlinks and directories from the prefix and remove no other files.
# @flag -d --debug        Display any debugging information.
# @flag -q --quiet        Make some output more quiet.
# @flag -v --verbose      Make some output more verbose.
# @flag -h --help         Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
cleanup() {
    :;
}
# }} brew cleanup

# {{ brew commands
# @cmd Show lists of built-in and external commands.
# @flag -q --quiet           List only the names of commands without category headers.
# @flag --include-aliases    Include aliases of internal commands.
# @flag -d --debug           Display any debugging information.
# @flag -v --verbose         Make some output more verbose.
# @flag -h --help            Show this message.
commands() {
    :;
}
# }} brew commands

# {{ brew completions
# @cmd Control whether Homebrew automatically links external tap shell completion files.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg subcommand[state|link|unlink]
completions() {
    :;
}
# }} brew completions

# {{ brew config
# @cmd Show Homebrew and system configuration info useful for debugging.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
config() {
    :;
}
# }} brew config

# {{ brew deps
# @cmd Show dependencies for formula.
# @flag -n --topological          Sort dependencies in topological order.
# @flag -1                        Show only the direct dependencies declared in the formula.
# @flag --direct                  Show only the direct dependencies declared in the formula.
# @flag --declared                Show only the direct dependencies declared in the formula.
# @flag --1                       Show only the direct dependencies declared in the formula.
# @flag --union                   Show the union of dependencies for multiple formula, instead of the intersection.
# @flag --full-name               List dependencies by their full name.
# @flag --include-build           Include :build dependencies for formula.
# @flag --include-optional        Include :optional dependencies for formula.
# @flag --include-test            Include :test dependencies for formula (non-recursive).
# @flag --skip-recommended        Skip :recommended dependencies for formula.
# @flag --include-requirements    Include requirements in addition to dependencies for formula.
# @flag --tree                    Show dependencies as a tree.
# @flag --graph                   Show dependencies as a directed graph.
# @flag --dot                     Show text-based graph description in DOT format.
# @flag --annotate                Mark any build, test, implicit, optional, or recommended dependencies as such in the output.
# @flag --installed               List dependencies for formulae that are currently installed.
# @flag --missing                 Show only missing dependencies.
# @flag --eval-all                Evaluate all available formulae and casks, whether installed or not, to list their dependencies.
# @flag --for-each                Switch into the mode used by the --eval-all option, but only list dependencies for each provided formula, one formula per line.
# @flag --HEAD                    Show dependencies for HEAD version instead of stable version.
# @flag --formula                 Treat all named arguments as formulae.
# @flag --formulae                Treat all named arguments as formulae.
# @flag --cask                    Treat all named arguments as casks.
# @flag --casks                   Treat all named arguments as casks.
# @flag -d --debug                Display any debugging information.
# @flag -q --quiet                Make some output more quiet.
# @flag -v --verbose              Make some output more verbose.
# @flag -h --help                 Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
deps() {
    :;
}
# }} brew deps

# {{ brew desc
# @cmd Display formula´s name and one-line description.
# @flag -s --search         Search both names and descriptions for text.
# @flag -n --name           Search just names for text.
# @flag -d --description    Search just descriptions for text.
# @flag --eval-all          Evaluate all available formulae and casks, whether installed or not, to search their descriptions.
# @flag --formula           Treat all named arguments as formulae.
# @flag --formulae          Treat all named arguments as formulae.
# @flag --cask              Treat all named arguments as casks.
# @flag --casks             Treat all named arguments as casks.
# @flag --debug             Display any debugging information.
# @flag -q --quiet          Make some output more quiet.
# @flag -v --verbose        Make some output more verbose.
# @flag -h --help           Show this message.
# @arg formula-cask-text-regex <formula|cask|text|/regex/>
desc() {
    :;
}
# }} brew desc

# {{ brew developer
# @cmd Control Homebrew´s developer mode.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg subcommand[state|on|off]
developer() {
    :;
}
# }} brew developer

# {{ brew docs
# @cmd Open Homebrew´s online documentation at https://docs.brew.sh in a browser.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
docs() {
    :;
}
# }} brew docs

# {{ brew doctor
# @cmd Check your system for potential problems.
# @alias dr
# @flag --list-checks       List all audit methods, which can be run individually if provided as arguments.
# @flag -D --audit-debug    Enable debugging and profiling of audit methods.
# @flag -d --debug          Display any debugging information.
# @flag -q --quiet          Make some output more quiet.
# @flag -v --verbose        Make some output more verbose.
# @flag -h --help           Show this message.
# @arg diagnostic_check*[`_choice_suggest_diagnostic_check`]
doctor() {
    :;
}
# }} brew doctor

# {{ brew fetch
# @cmd Download a bottle (if available) or source packages for formulae and binaries for casks.
# @option --os <value>            Download for the given operating system.
# @option --arch <value>          Download for the given CPU architecture.
# @option --bottle-tag <value>    Download a bottle for given tag.
# @flag --HEAD                    Fetch HEAD version instead of stable version.
# @flag -f --force                Remove a previously cached version and re-fetch.
# @flag -v --verbose              Do a verbose VCS checkout, if the URL represents a VCS.
# @flag --retry                   Retry if downloading fails or re-download if the checksum of a previously cached version no longer matches.
# @flag --deps                    Also download dependencies for any listed formula.
# @flag -s --build-from-source    Download source packages rather than a bottle.
# @flag --build-bottle            Download source packages (for eventual bottling) rather than a bottle.
# @flag --force-bottle            Download a bottle if it exists for the current or newest version of macOS, even if it would not be used during installation.
# @flag --quarantine              Disable/enable quarantining of downloads (default: enabled).
# @flag --no-quarantine           Disable/enable quarantining of downloads (default: enabled).
# @flag --formula                 Treat all named arguments as formulae.
# @flag --formulae                Treat all named arguments as formulae.
# @flag --cask                    Treat all named arguments as casks.
# @flag --casks                   Treat all named arguments as casks.
# @flag -d --debug                Display any debugging information.
# @flag -q --quiet                Make some output more quiet.
# @flag -h --help                 Show this message.
# @arg formula-cask[`_choice_suggest_formula_cask`] <formula|cask>
fetch() {
    :;
}
# }} brew fetch

# {{ brew formulae
# @cmd List all locally installable formulae including short names.
formulae() {
    :;
}
# }} brew formulae

# {{ brew gist-logs
# @cmd Upload logs for a failed build of formula to a new Gist.
# @flag --with-hostname    Include the hostname in the Gist.
# @flag -n --new-issue     Automatically create a new issue in the appropriate GitHub repository after creating the Gist.
# @flag -p --private       The Gist will be marked private and will not appear in listings but will be accessible with its link.
# @flag -d --debug         Display any debugging information.
# @flag -q --quiet         Make some output more quiet.
# @flag -v --verbose       Make some output more verbose.
# @flag -h --help          Show this message.
# @arg formula[`_choice_suggest_formula`]
gist-logs() {
    :;
}
# }} brew gist-logs

# {{ brew home
# @cmd Open a formula or cask´s homepage in a browser, or open Homebrew´s own homepage if no argument is provided.
# @alias homepage
# @flag --formula       Treat all named arguments as formulae.
# @flag --formulae      Treat all named arguments as formulae.
# @flag --cask          Treat all named arguments as casks.
# @flag --casks         Treat all named arguments as casks.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
home() {
    :;
}
# }} brew home

# {{ brew info
# @cmd Display brief statistics for your Homebrew installation.
# @alias abv
# @flag --analytics     List global Homebrew analytics data or, if specified, installation and build error data for formula (provided neither HOMEBREW_NO_ANALYTICS nor HOMEBREW_NO_GITHUB_API are set).
# @flag --days          How many days of analytics data to retrieve.
# @flag --category      Which type of analytics data to retrieve.
# @flag --github        Open the GitHub source page for formula and cask in a browser.
# @flag --json          Print a JSON representation.
# @flag --installed     Print JSON of formulae that are currently installed.
# @flag --eval-all      Evaluate all available formulae and casks, whether installed or not, to print their JSON.
# @flag --variations    Include the variations hash in each formula's JSON output.
# @flag -v --verbose    Show more verbose analytics data for formula.
# @flag --formula       Treat all named arguments as formulae.
# @flag --formulae      Treat all named arguments as formulae.
# @flag --cask          Treat all named arguments as casks.
# @flag --casks         Treat all named arguments as casks.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -h --help       Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
info() {
    :;
}
# }} brew info

# {{ brew leaves
# @cmd List installed formulae that are not dependencies of another installed formula or cask.
# @flag -r --installed-on-request       Only list leaves that were manually installed.
# @flag -p --installed-as-dependency    Only list leaves that were installed as dependencies.
# @flag -d --debug                      Display any debugging information.
# @flag -q --quiet                      Make some output more quiet.
# @flag -v --verbose                    Make some output more verbose.
# @flag -h --help                       Show this message.
leaves() {
    :;
}
# }} brew leaves

# {{ brew link
# @cmd Symlink all of formula´s installed files into Homebrew´s prefix.
# @flag --overwrite     Delete files that already exist in the prefix while linking.
# @flag -n --dry-run    List files which would be linked or deleted by brew link --overwrite without actually linking or deleting any files.
# @flag -f --force      Allow keg-only formulae to be linked.
# @flag --HEAD          Link the HEAD version of the formula if it is installed.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula[`_choice_installed_formula`]
link() {
    :;
}
# }} brew link

# {{ brew log
# @cmd Show the git log for formula or cask, or show the log for the Homebrew repository if no formula or cask is provided.
# @flag -p                Also print patch from commit.
# @flag -u                Also print patch from commit.
# @flag --patch           Also print patch from commit.
# @flag --stat            Also print diffstat from commit.
# @flag --oneline         Print only one line per commit.
# @flag -1                Print only one commit.
# @flag -n --max-count    Print only a specified number of commits.
# @flag --formula         Treat all named arguments as formulae.
# @flag --formulae        Treat all named arguments as formulae.
# @flag --cask            Treat all named arguments as casks.
# @flag --casks           Treat all named arguments as casks.
# @flag -d --debug        Display any debugging information.
# @flag -q --quiet        Make some output more quiet.
# @flag -v --verbose      Make some output more verbose.
# @flag -h --help         Show this message.
# @arg formula-cask[`_choice_suggest_formula_cask`] <formula|cask>
log() {
    :;
}
# }} brew log

# {{ brew migrate
# @cmd Migrate renamed packages to new names, where formula are old names of packages.
# @flag -f --force      Treat installed formula and provided formula as if they are from the same taps and migrate them anyway.
# @flag -n --dry-run    Show what would be migrated, but do not actually migrate anything.
# @flag --formula       Only migrate formulae.
# @flag --formulae      Only migrate formulae.
# @flag --cask          Only migrate casks.
# @flag --casks         Only migrate casks.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula-installed_cask[`_choice_installed_formula_cask`] <installed_formula|installed_cask>
migrate() {
    :;
}
# }} brew migrate

# {{ brew missing
# @cmd Check the given formula kegs for missing dependencies.
# @flag --hide          Act as if none of the specified hidden are installed.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula*[`_choice_suggest_formula`]
missing() {
    :;
}
# }} brew missing

# {{ brew nodenv-sync
# @cmd Create symlinks for Homebrew´s installed NodeJS versions in ~/.nodenv/versions.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
nodenv-sync() {
    :;
}
# }} brew nodenv-sync

# {{ brew options
# @cmd Show install options specific to formula.
# @flag --compact       Show all options on a single line separated by spaces.
# @flag --installed     Show options for formulae that are currently installed.
# @flag --eval-all      Evaluate all available formulae and casks, whether installed or not, to show their options.
# @flag --command       Show options for the specified command.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula*[`_choice_suggest_formula`]
options() {
    :;
}
# }} brew options

# {{ brew outdated
# @cmd List installed casks and formulae that have an updated version available.
# @flag -q --quiet               List only the names of outdated kegs (takes precedence over --verbose).
# @flag -v --verbose             Include detailed version information.
# @flag --formula                List only outdated formulae.
# @flag --formulae               List only outdated formulae.
# @flag --cask                   List only outdated casks.
# @flag --casks                  List only outdated casks.
# @flag --json                   Print output in JSON format.
# @flag --fetch-HEAD             Fetch the upstream repository to detect if the HEAD installation of the formula is outdated.
# @flag -g --greedy              Also include outdated casks with auto_updates true or version :latest.
# @flag --greedy-latest          Also include outdated casks including those with version :latest.
# @flag --greedy-auto-updates    Also include outdated casks including those with auto_updates true.
# @flag -d --debug               Display any debugging information.
# @flag -h --help                Show this message.
# @arg formula-cask*[`_choice_outdated_formula_cask`] <formula|cask>
outdated() {
    :;
}
# }} brew outdated

# {{ brew pin
# @cmd Pin the specified formula, preventing them from being upgraded when issuing the brew upgrade formula command.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula[`_choice_installed_formula`]
pin() {
    :;
}
# }} brew pin

# {{ brew postinstall
# @cmd Rerun the post-install steps for formula.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
postinstall() {
    :;
}
# }} brew postinstall

# {{ brew pyenv-sync
# @cmd Create symlinks for Homebrew´s installed Python versions in ~/.pyenv/versions.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
pyenv-sync() {
    :;
}
# }} brew pyenv-sync

# {{ brew rbenv-sync
# @cmd Create symlinks for Homebrew´s installed Ruby versions in ~/.rbenv/versions.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
rbenv-sync() {
    :;
}
# }} brew rbenv-sync

# {{ brew readall
# @cmd Import all items from the specified tap, or from all installed taps if none is provided.
# @option --os <value>      Read using the given operating system.
# @option --arch <value>    Read using the given CPU architecture.
# @flag --aliases           Verify any alias symlinks in each tap.
# @flag --syntax            Syntax-check all of Homebrew's Ruby files (if no tap is passed).
# @flag --eval-all          Evaluate all available formulae and casks, whether installed or not.
# @flag --no-simulate       Don't simulate other system configurations when checking formulae and casks.
# @flag -d --debug          Display any debugging information.
# @flag -q --quiet          Make some output more quiet.
# @flag -v --verbose        Make some output more verbose.
# @flag -h --help           Show this message.
# @arg tap*[`_choice_tap`]
readall() {
    :;
}
# }} brew readall

# {{ brew reinstall
# @cmd Uninstall and then reinstall a formula or cask using the same options it was originally installed with, plus any appended options specific to a formula.
# @flag -d --debug                        If brewing fails, open an interactive debugging session with access to IRB or a shell inside the temporary build directory.
# @flag -f --force                        Install without checking for previously installed keg-only or non-migrated versions.
# @flag -v --verbose                      Print the verification and post-install steps.
# @flag --formula                         Treat all named arguments as formulae.
# @flag --formulae                        Treat all named arguments as formulae.
# @flag -s --build-from-source            Compile formula from source even if a bottle is available.
# @flag -i --interactive                  Download and patch formula, then open a shell.
# @flag --force-bottle                    Install from a bottle if it exists for the current or newest version of macOS, even if it would not normally be used for installation.
# @flag --keep-tmp                        Retain the temporary files created during installation.
# @flag --debug-symbols                   Generate debug symbols on build.
# @flag --display-times                   Print install times for each formula at the end of the run.
# @flag -g --git                          Create a Git repository, useful for creating patches to the software.
# @flag --cask                            Treat all named arguments as casks.
# @flag --casks                           Treat all named arguments as casks.
# @flag --binaries                        Disable/enable linking of helper executables (default: enabled).
# @flag --no-binaries                     Disable/enable linking of helper executables (default: enabled).
# @flag --require-sha                     Require all casks to have a checksum.
# @flag --quarantine                      Disable/enable quarantining of downloads (default: enabled).
# @flag --no-quarantine                   Disable/enable quarantining of downloads (default: enabled).
# @flag --adopt                           Adopt existing artifacts in the destination that are identical to those being installed.
# @flag --skip-cask-deps                  Skip installing cask dependencies.
# @flag --zap                             For use with brew reinstall --cask.
# @option --appdir <dir>                  Target location for Applications (default: /Applications).
# @option --keyboard-layoutdir <dir>      Target location for Keyboard Layouts (default: /Library/Keyboard Layouts).
# @option --colorpickerdir <dir>          Target location for Color Pickers (default: ~/Library/ColorPickers).
# @option --prefpanedir <dir>             Target location for Preference Panes (default: ~/Library/PreferencePanes).
# @option --qlplugindir <dir>             Target location for QuickLook Plugins (default: ~/Library/QuickLook).
# @option --mdimporterdir <dir>           Target location for Spotlight Plugins (default: ~/Library/Spotlight).
# @option --dictionarydir <dir>           Target location for Dictionaries (default: ~/Library/Dictionaries).
# @option --fontdir <dir>                 Target location for Fonts (default: ~/Library/Fonts).
# @option --servicedir <dir>              Target location for Services (default: ~/Library/Services).
# @option --input-methoddir <dir>         Target location for Input Methods (default: ~/Library/Input Methods).
# @option --internet-plugindir <dir>      Target location for Internet Plugins (default: ~/Library/Internet Plug-Ins).
# @option --audio-unit-plugindir <dir>    Target location for Audio Unit Plugins (default: ~/Library/Audio/Plug-Ins/Components).
# @option --vst-plugindir <dir>           Target location for VST Plugins (default: ~/Library/Audio/Plug-Ins/VST).
# @option --vst3-plugindir <dir>          Target location for VST3 Plugins (default: ~/Library/Audio/Plug-Ins/VST3).
# @option --screen-saverdir <dir>         Target location for Screen Savers (default: ~/Library/Screen Savers).
# @option --language <value>              Comma-separated list of language codes to prefer for cask installation.
# @flag -q --quiet                        Make some output more quiet.
# @flag -h --help                         Show this message.
# @arg formula-cask[`_choice_suggest_formula_cask`] <formula|cask>
reinstall() {
    :;
}
# }} brew reinstall

# {{ brew setup-ruby
# @cmd Installs and configures Homebrew´s Ruby.
# @flag --groups        Installs the specified comma-separated list of gem groups (default: last used).
# @flag --add-groups    Installs the specified comma-separated list of gem groups, in addition to those already installed.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
setup-ruby() {
    :;
}
# }} brew setup-ruby

# {{ brew shellenv
# @cmd Print export statements.
shellenv() {
    :;
}
# }} brew shellenv

# {{ brew tap
# @cmd Tap a formula repository.
# @flag --full                    Convert a shallow clone to a full clone without untapping.
# @flag --shallow                 Fetch tap as a shallow clone rather than a full clone.
# @flag --force-auto-update       Auto-update tap even if it is not hosted on GitHub.
# @flag --no-force-auto-update    Auto-update tap even if it is not hosted on GitHub.
# @flag --custom-remote           Install or change a tap with a custom remote.
# @flag --repair                  Migrate tapped formulae from symlink-based to directory-based structure.
# @flag --eval-all                Evaluate all the formulae, casks and aliases in the new tap to check validity.
# @flag --force                   Force install core taps even under API mode.
# @flag -d --debug                Display any debugging information.
# @flag -q --quiet                Make some output more quiet.
# @flag -v --verbose              Make some output more verbose.
# @flag -h --help                 Show this message.
# @arg user-repo <user/repo>
# @arg url
tap() {
    :;
}
# }} brew tap

# {{ brew tap-info
# @cmd Show detailed information about one or more taps.
# @flag --installed     Show information on each installed tap.
# @flag --json          Print a JSON representation of tap.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg tap*[`_choice_tap`]
tap-info() {
    :;
}
# }} brew tap-info

# {{ brew unlink
# @cmd Remove symlinks for formula from Homebrew´s prefix.
# @flag -n --dry-run    List files which would be unlinked without actually unlinking or deleting any files.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula[`_choice_installed_formula`]
unlink() {
    :;
}
# }} brew unlink

# {{ brew unpin
# @cmd Unpin formula, allowing them to be upgraded by brew upgrade formula.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula[`_choice_installed_formula`]
unpin() {
    :;
}
# }} brew unpin

# {{ brew untap
# @cmd Remove a tapped formula repository.
# @flag -f --force      Untap even if formulae or casks from this tap are currently installed.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg tap[`_choice_tap`]
untap() {
    :;
}
# }} brew untap

# {{ brew update
# @cmd Fetch the newest version of Homebrew and all formulae from GitHub using git(1) and perform any necessary migrations.
# @flag --merge          Use git merge to apply updates (rather than git rebase).
# @flag --auto-update    Run on auto-updates (e.g. before brew install).
# @flag -f --force       Always do a slower, full update check (even if unnecessary).
# @flag -q --quiet       Make some output more quiet.
# @flag -v --verbose     Print the directories checked and git operations performed.
# @flag -d --debug       Display a trace of all shell commands as they are executed.
# @flag -h --help        Show this message.
update() {
    :;
}
# }} brew update

# {{ brew update-reset
# @cmd Fetch and reset Homebrew and all tap repositories (or any specified repository) using git(1) to their latest origin/HEAD.
# @arg path-to-tap-repository*
update-reset() {
    :;
}
# }} brew update-reset

# {{ brew upgrade
# @cmd Upgrade outdated casks and outdated, unpinned formulae using the same options they were originally installed with, plus any appended brew formula options.
# @flag -d --debug                        If brewing fails, open an interactive debugging session with access to IRB or a shell inside the temporary build directory.
# @flag -f --force                        Install formulae without checking for previously installed keg-only or non-migrated versions.
# @flag -v --verbose                      Print the verification and post-install steps.
# @flag -n --dry-run                      Show what would be upgraded, but do not actually upgrade anything.
# @flag --formula                         Treat all named arguments as formulae.
# @flag --formulae                        Treat all named arguments as formulae.
# @flag -s --build-from-source            Compile formula from source even if a bottle is available.
# @flag -i --interactive                  Download and patch formula, then open a shell.
# @flag --force-bottle                    Install from a bottle if it exists for the current or newest version of macOS, even if it would not normally be used for installation.
# @flag --fetch-HEAD                      Fetch the upstream repository to detect if the HEAD installation of the formula is outdated.
# @flag --ignore-pinned                   Set a successful exit status even if pinned formulae are not upgraded.
# @flag --keep-tmp                        Retain the temporary files created during installation.
# @flag --debug-symbols                   Generate debug symbols on build.
# @flag --display-times                   Print install times for each package at the end of the run.
# @flag --cask                            Treat all named arguments as casks.
# @flag --casks                           Treat all named arguments as casks.
# @flag --skip-cask-deps                  Skip installing cask dependencies.
# @flag -g --greedy                       Also include casks with auto_updates true or version :latest.
# @flag --greedy-latest                   Also include casks with version :latest.
# @flag --greedy-auto-updates             Also include casks with auto_updates true.
# @flag --binaries                        Disable/enable linking of helper executables (default: enabled).
# @flag --no-binaries                     Disable/enable linking of helper executables (default: enabled).
# @flag --require-sha                     Require all casks to have a checksum.
# @flag --quarantine                      Disable/enable quarantining of downloads (default: enabled).
# @flag --no-quarantine                   Disable/enable quarantining of downloads (default: enabled).
# @option --appdir <dir>                  Target location for Applications (default: /Applications).
# @option --keyboard-layoutdir <dir>      Target location for Keyboard Layouts (default: /Library/Keyboard Layouts).
# @option --colorpickerdir <dir>          Target location for Color Pickers (default: ~/Library/ColorPickers).
# @option --prefpanedir <dir>             Target location for Preference Panes (default: ~/Library/PreferencePanes).
# @option --qlplugindir <dir>             Target location for QuickLook Plugins (default: ~/Library/QuickLook).
# @option --mdimporterdir <dir>           Target location for Spotlight Plugins (default: ~/Library/Spotlight).
# @option --dictionarydir <dir>           Target location for Dictionaries (default: ~/Library/Dictionaries).
# @option --fontdir <dir>                 Target location for Fonts (default: ~/Library/Fonts).
# @option --servicedir <dir>              Target location for Services (default: ~/Library/Services).
# @option --input-methoddir <dir>         Target location for Input Methods (default: ~/Library/Input Methods).
# @option --internet-plugindir <dir>      Target location for Internet Plugins (default: ~/Library/Internet Plug-Ins).
# @option --audio-unit-plugindir <dir>    Target location for Audio Unit Plugins (default: ~/Library/Audio/Plug-Ins/Components).
# @option --vst-plugindir <dir>           Target location for VST Plugins (default: ~/Library/Audio/Plug-Ins/VST).
# @option --vst3-plugindir <dir>          Target location for VST3 Plugins (default: ~/Library/Audio/Plug-Ins/VST3).
# @option --screen-saverdir <dir>         Target location for Screen Savers (default: ~/Library/Screen Savers).
# @option --language <value>              Comma-separated list of language codes to prefer for cask installation.
# @flag -q --quiet                        Make some output more quiet.
# @flag -h --help                         Show this message.
# @arg outdated_formula-outdated_cask*[`_choice_outdated_formula_cask`] <outdated_formula|outdated_cask>
upgrade() {
    :;
}
# }} brew upgrade

# {{ brew uses
# @cmd Show formulae and casks that specify formula as a dependency; that is, show dependents of formula.
# @flag --recursive           Resolve more than one level of dependencies.
# @flag --installed           Only list formulae and casks that are currently installed.
# @flag --missing             Only list formulae and casks that are not currently installed.
# @flag --eval-all            Evaluate all available formulae and casks, whether installed or not, to show their dependents.
# @flag --include-build       Include formulae that specify formula as a :build dependency.
# @flag --include-test        Include formulae that specify formula as a :test dependency.
# @flag --include-optional    Include formulae that specify formula as an :optional dependency.
# @flag --skip-recommended    Skip all formulae that specify formula as a :recommended dependency.
# @flag --formula             Include only formulae.
# @flag --formulae            Include only formulae.
# @flag --cask                Include only casks.
# @flag --casks               Include only casks.
# @flag -d --debug            Display any debugging information.
# @flag -q --quiet            Make some output more quiet.
# @flag -v --verbose          Make some output more verbose.
# @flag -h --help             Show this message.
# @arg formula[`_choice_suggest_formula`]
uses() {
    :;
}
# }} brew uses

# {{ brew audit
# @cmd Check formula for Homebrew coding style violations.
# @option --os <value>        Audit the given operating system.
# @option --arch <value>      Audit the given CPU architecture.
# @flag --strict              Run additional, stricter style checks.
# @flag --git                 Run additional, slower style checks that navigate the Git repository.
# @flag --online              Run additional, slower style checks that require a network connection.
# @flag --installed           Only check formulae and casks that are currently installed.
# @flag --eval-all            Evaluate all available formulae and casks, whether installed or not, to audit them.
# @flag --new                 Run various additional style checks to determine if a new formula or cask is eligible for Homebrew.
# @flag --new-formula         Run various additional style checks to determine if a new formula or cask is eligible for Homebrew.
# @flag --new-cask            Run various additional style checks to determine if a new formula or cask is eligible for Homebrew.
# @flag --signing             Audit for signed apps, which are required on ARM
# @flag --no-signing          Audit for signed apps, which are required on ARM
# @flag --token-conflicts     Audit for token conflicts.
# @flag --tap                 Check the formulae within the given tap, specified as user/repo.
# @flag --fix                 Fix style violations automatically using RuboCop's auto-correct feature.
# @flag --display-filename    Prefix every line of output with the file or formula name being audited, to make output easy to grep.
# @flag --skip-style          Skip running non-RuboCop style checks.
# @flag -D --audit-debug      Enable debugging and profiling of audit methods.
# @flag --only                Specify a comma-separated method list to only run the methods named audit_method.
# @flag --except              Specify a comma-separated method list to skip running the methods named audit_method.
# @flag --only-cops           Specify a comma-separated cops list to check for violations of only the listed RuboCop cops.
# @flag --except-cops         Specify a comma-separated cops list to skip checking for violations of the listed RuboCop cops.
# @flag --formula             Treat all named arguments as formulae.
# @flag --formulae            Treat all named arguments as formulae.
# @flag --cask                Treat all named arguments as casks.
# @flag --casks               Treat all named arguments as casks.
# @flag -d --debug            Display any debugging information.
# @flag -q --quiet            Make some output more quiet.
# @flag -v --verbose          Make some output more verbose.
# @flag -h --help             Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
audit() {
    :;
}
# }} brew audit

# {{ brew bottle
# @cmd Generate a bottle (binary package) from a formula that was installed with --build-bottle.
# @flag --skip-relocation    Do not check if the bottle can be marked as relocatable.
# @flag --force-core-tap     Build a bottle even if formula is not in homebrew/core or any installed taps.
# @flag --no-rebuild         If the formula specifies a rebuild version, remove it from the generated DSL.
# @flag --keep-old           If the formula specifies a rebuild version, attempt to preserve its value in the generated DSL.
# @flag --json               Write bottle information to a JSON file, which can be used as the value for --merge.
# @flag --merge              Generate an updated bottle block for a formula and optionally merge it into the formula file.
# @flag --write              Write changes to the formula file.
# @flag --no-commit          When passed with --write, a new commit will not generated after writing changes to the formula file.
# @flag --only-json-tab      When passed with --json, the tab will be written to the JSON file but not the bottle.
# @flag --no-all-checks      Don't try to create an all bottle or stop a no-change upload.
# @flag --committer          Specify a committer name and email in git's standard author format.
# @flag --root-url           Use the specified URL as the root of the bottle's URL instead of Homebrew's default.
# @flag --root-url-using     Use the specified download strategy class for downloading the bottle's URL instead of Homebrew's default.
# @flag -d --debug           Display any debugging information.
# @flag -q --quiet           Make some output more quiet.
# @flag -v --verbose         Make some output more verbose.
# @flag -h --help            Show this message.
# @arg installed_formula-file[`_choice_installed_formula_file`] <installed_formula|file>
bottle() {
    :;
}
# }} brew bottle

# {{ brew bump
# @cmd Display out-of-date brew formulae and the latest version available.
# @flag --full-name           Print formulae/casks with fully-qualified names.
# @flag --no-pull-requests    Do not retrieve pull requests from GitHub.
# @flag --formula             Check only formulae.
# @flag --formulae            Check only formulae.
# @flag --cask                Check only casks.
# @flag --casks               Check only casks.
# @flag --installed           Check formulae and casks that are currently installed.
# @flag --open-pr             Open a pull request for the new version if none have been opened yet.
# @flag --limit               Limit number of package results returned.
# @flag --start-with          Letter or word that the list of package results should alphabetically follow.
# @flag -d --debug            Display any debugging information.
# @flag -q --quiet            Make some output more quiet.
# @flag -v --verbose          Make some output more verbose.
# @flag -h --help             Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
bump() {
    :;
}
# }} brew bump

# {{ brew bump-cask-pr
# @cmd Create a pull request to update cask with a new version.
# @flag -n --dry-run                 Print what would be done rather than doing it.
# @flag --write-only                 Make the expected file modifications without taking any Git actions.
# @flag --commit                     When passed with --write-only, generate a new commit after writing changes to the cask file.
# @flag --no-audit                   Don't run brew audit before opening the PR.
# @flag --no-style                   Don't run brew style --fix before opening the PR.
# @flag --no-browse                  Print the pull request URL instead of opening in a browser.
# @flag --no-fork                    Don't try to fork the repository.
# @option --version <value>          Specify the new version for the cask.
# @option --version-arm <value>      Specify the new cask version for the ARM architecture.
# @option --version-intel <value>    Specify the new cask version for the Intel architecture.
# @option --message <value>          Prepend message to the default pull request message.
# @option --url <value>              Specify the URL for the new download.
# @option --sha256 <value>           Specify the SHA-256 checksum of the new download.
# @option --fork-org <value>         Use the specified GitHub organization for forking.
# @flag -f --force                   Ignore duplicate open PRs.
# @flag -d --debug                   Display any debugging information.
# @flag -q --quiet                   Make some output more quiet.
# @flag -v --verbose                 Make some output more verbose.
# @flag -h --help                    Show this message.
# @arg cask[`_choice_suggest_cask`]
bump-cask-pr() {
    :;
}
# }} brew bump-cask-pr

# {{ brew bump-formula-pr
# @cmd Create a pull request to update formula with a new URL or a new tag.
# @flag -n --dry-run                            Print what would be done rather than doing it.
# @flag --write-only                            Make the expected file modifications without taking any Git actions.
# @flag --commit                                When passed with --write-only, generate a new commit after writing changes to the formula file.
# @flag --no-audit                              Don't run brew audit before opening the PR.
# @flag --strict                                Run brew audit --strict before opening the PR.
# @flag --online                                Run brew audit --online before opening the PR.
# @flag --no-browse                             Print the pull request URL instead of opening in a browser.
# @flag --no-fork                               Don't try to fork the repository.
# @option --mirror <value>                      Use the specified URL as a mirror URL.
# @option --fork-org <value>                    Use the specified GitHub organization for forking.
# @option --version <value>                     Use the specified version to override the value parsed from the URL or tag.
# @option --message <value>                     Prepend message to the default pull request message.
# @option --url <value>                         Specify the URL for the new download.
# @option --sha256 <value>                      Specify the SHA-256 checksum of the new download.
# @option --tag <value>                         Specify the new git commit tag for the formula.
# @option --revision <value>                    Specify the new commit revision corresponding to the specified git tag or specified version.
# @flag -f --force                              Ignore duplicate open PRs.
# @option --python-package-name <value>         Use the specified package-name when finding Python resources for formula.
# @option --python-extra-packages* <value>      Include these additional Python packages when finding resources.
# @option --python-exclude-packages* <value>    Exclude these Python packages when finding resources.
# @flag -d --debug                              Display any debugging information.
# @flag -q --quiet                              Make some output more quiet.
# @flag -v --verbose                            Make some output more verbose.
# @flag -h --help                               Show this message.
# @arg formula[`_choice_suggest_formula`]
bump-formula-pr() {
    :;
}
# }} brew bump-formula-pr

# {{ brew bump-revision
# @cmd Create a commit to increment the revision of formula.
# @flag -n --dry-run             Print what would be done rather than doing it.
# @flag --remove-bottle-block    Remove the bottle block in addition to bumping the revision.
# @flag --write-only             Make the expected file modifications without taking any Git actions.
# @flag --message                Append message to the default commit message.
# @flag -d --debug               Display any debugging information.
# @flag -q --quiet               Make some output more quiet.
# @flag -v --verbose             Make some output more verbose.
# @flag -h --help                Show this message.
# @arg formula[`_choice_suggest_formula`]
bump-revision() {
    :;
}
# }} brew bump-revision

# {{ brew bump-unversioned-casks
# @cmd Check all casks with unversioned URLs in a given tap for updates.
# @flag -n --dry-run             Do everything except caching state and opening pull requests.
# @option --limit <value>        Maximum runtime in minutes.
# @option --state-file <file>    File for caching state.
# @flag -d --debug               Display any debugging information.
# @flag -q --quiet               Make some output more quiet.
# @flag -v --verbose             Make some output more verbose.
# @flag -h --help                Show this message.
# @arg cask-tap[`_choice_cask_tap`] <cask|tap>
bump-unversioned-casks() {
    :;
}
# }} brew bump-unversioned-casks

# {{ brew cat
# @cmd Display the source of a formula or cask.
# @flag --formula       Treat all named arguments as formulae.
# @flag --formulae      Treat all named arguments as formulae.
# @flag --cask          Treat all named arguments as casks.
# @flag --casks         Treat all named arguments as casks.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula-cask[`_choice_suggest_formula_cask`] <formula|cask>
cat_() {
    :;
}
# }} brew cat

# {{ brew contributions
# @cmd Summarise contributions to Homebrew repositories.
# @option --repositories <value>    Specify a comma-separated list of repositories to search.
# @option --from <value>            Date (ISO-8601 format) to start searching contributions.
# @option --to <value>              Date (ISO-8601 format) to stop searching contributions.
# @option --user <value>            Specify a comma-separated list of GitHub usernames or email addresses to find contributions from.
# @option --csv <value>             Print a CSV of contributions across repositories over the time period.
# @flag -d --debug                  Display any debugging information.
# @flag -q --quiet                  Make some output more quiet.
# @flag -v --verbose                Make some output more verbose.
# @flag -h --help                   Show this message.
contributions() {
    :;
}
# }} brew contributions

# {{ brew create
# @cmd Generate a formula or, with --cask, a cask for the downloadable file at URL and open it in the editor.
# @flag --autotools                Create a basic template for an Autotools-style build.
# @flag --cask                     Create a basic template for a cask.
# @flag --cmake                    Create a basic template for a CMake-style build.
# @flag --crystal                  Create a basic template for a Crystal build.
# @flag --go                       Create a basic template for a Go build.
# @flag --meson                    Create a basic template for a Meson-style build.
# @flag --node                     Create a basic template for a Node build.
# @flag --perl                     Create a basic template for a Perl build.
# @flag --python                   Create a basic template for a Python build.
# @flag --ruby                     Create a basic template for a Ruby build.
# @flag --rust                     Create a basic template for a Rust build.
# @flag --no-fetch                 Homebrew will not download URL to the cache and will thus not add its SHA-256 to the formula for you, nor will it check the GitHub API for GitHub projects (to fill out its description and homepage).
# @flag --HEAD                     Indicate that URL points to the package's repository rather than a file.
# @option --set-name <value>       Explicitly set the name of the new formula or cask.
# @option --set-version <value>    Explicitly set the version of the new formula or cask.
# @option --set-license <value>    Explicitly set the license of the new formula.
# @flag --tap                      Generate the new formula within the given tap, specified as user/repo.
# @flag -f --force                 Ignore errors for disallowed formula names and names that shadow aliases.
# @flag -d --debug                 Display any debugging information.
# @flag -q --quiet                 Make some output more quiet.
# @flag -v --verbose               Make some output more verbose.
# @flag -h --help                  Show this message.
# @arg url
create() {
    :;
}
# }} brew create

# {{ brew dispatch-build-bottle
# @cmd Build bottles for these formulae with GitHub Actions.
# @option --tap <value>         Target tap repository (default: homebrew/core).
# @option --timeout <value>     Build timeout (in minutes, default: 60).
# @option --issue <value>       If specified, post a comment to this issue number if the job fails.
# @option --macos <value>       macOS version (or comma-separated list of versions) the bottle should be built for.
# @option --workflow <value>    Dispatch specified workflow (default: dispatch-build-bottle.yml).
# @flag --upload                Upload built bottles.
# @flag --linux                 Dispatch bottle for Linux (using GitHub runners).
# @flag --linux-self-hosted     Dispatch bottle for Linux (using self-hosted runner).
# @flag --linux-wheezy          Use Debian Wheezy container for building the bottle on Linux.
# @flag -d --debug              Display any debugging information.
# @flag -q --quiet              Make some output more quiet.
# @flag -v --verbose            Make some output more verbose.
# @flag -h --help               Show this message.
# @arg formula[`_choice_suggest_formula`]
dispatch-build-bottle() {
    :;
}
# }} brew dispatch-build-bottle

# {{ brew edit
# @cmd Open a formula, cask or tap in the editor set by EDITOR or HOMEBREW_EDITOR, or open the Homebrew repository for editing if no argument is provided.
# @flag --formula       Treat all named arguments as formulae.
# @flag --formulae      Treat all named arguments as formulae.
# @flag --cask          Treat all named arguments as casks.
# @flag --casks         Treat all named arguments as casks.
# @flag --print-path    Print the file path to be edited, without opening an editor.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg enum*[formula|cask|tap]
edit() {
    :;
}
# }} brew edit

# {{ brew extract
# @cmd Look through repository history to find the most recent version of formula and create a copy in tap.
# @flag --version       Extract the specified version of formula instead of the most recent.
# @flag -f --force      Overwrite the destination formula if it already exists.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula[`_choice_suggest_formula`]
# @arg tap[`_choice_tap`]
extract() {
    :;
}
# }} brew extract

# {{ brew formula
# @cmd Display the path where formula is located.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula[`_choice_suggest_formula`]
formula() {
    :;
}
# }} brew formula

# {{ brew generate-cask-api
# @cmd Generate homebrew/cask API data files for https://formulae.brew.sh.
# @flag -n --dry-run    Generate API data without writing it to files.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
generate-cask-api() {
    :;
}
# }} brew generate-cask-api

# {{ brew generate-formula-api
# @cmd Generate homebrew/core API data files for https://formulae.brew.sh.
# @flag -n --dry-run    Generate API data without writing it to files.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
generate-formula-api() {
    :;
}
# }} brew generate-formula-api

# {{ brew generate-man-completions
# @cmd Generate Homebrew´s manpages and shell completions.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
generate-man-completions() {
    :;
}
# }} brew generate-man-completions

# {{ brew install-bundler-gems
# @cmd Install Homebrew´s Bundler gems.
# @option --groups <value>        Installs the specified comma-separated list of gem groups (default: last used).
# @option --add-groups <value>    Installs the specified comma-separated list of gem groups, in addition to those already installed.
# @flag -d --debug                Display any debugging information.
# @flag -q --quiet                Make some output more quiet.
# @flag -v --verbose              Make some output more verbose.
# @flag -h --help                 Show this message.
install-bundler-gems() {
    :;
}
# }} brew install-bundler-gems

# {{ brew irb
# @cmd Enter the interactive Homebrew Ruby shell.
# @flag --examples      Show several examples.
# @flag --pry           Use Pry instead of IRB.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
irb() {
    :;
}
# }} brew irb

# {{ brew linkage
# @cmd Check the library links from the given formula kegs.
# @flag --test          Show only missing libraries and exit with a non-zero status if any missing libraries are found.
# @flag --strict        Exit with a non-zero status if any undeclared dependencies with linkage are found.
# @flag --reverse       For every library that a keg references, print its dylib path followed by the binaries that link to it.
# @flag --cached        Print the cached linkage values stored in HOMEBREW_CACHE, set by a previous brew linkage run.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula*[`_choice_installed_formula`]
linkage() {
    :;
}
# }} brew linkage

# {{ brew livecheck
# @cmd Check for newer versions of formulae and/or casks from upstream.
# @alias lc
# @flag --full-name       Print formulae and casks with fully-qualified names.
# @flag --tap             Check formulae and casks within the given tap, specified as user/repo.
# @flag --eval-all        Evaluate all available formulae and casks, whether installed or not, to check them.
# @flag --installed       Check formulae and casks that are currently installed.
# @flag --newer-only      Show the latest version only if it's newer than the formula/cask.
# @flag --json            Output information in JSON format.
# @flag -r --resources    Also check resources for formulae.
# @flag -q --quiet        Suppress warnings, don't print a progress bar for JSON output.
# @flag --formula         Only check formulae.
# @flag --formulae        Only check formulae.
# @flag --cask            Only check casks.
# @flag --casks           Only check casks.
# @flag -d --debug        Display any debugging information.
# @flag -v --verbose      Make some output more verbose.
# @flag -h --help         Show this message.
# @arg formula-cask*[`_choice_suggest_formula_cask`] <formula|cask>
livecheck() {
    :;
}
# }} brew livecheck

# {{ brew pr-automerge
# @cmd Find pull requests that can be automatically merged using brew pr-publish.
# @option --tap <value>               Target tap repository (default: homebrew/core).
# @option --workflow <value>          Workflow file to use with brew pr-publish.
# @option --with-label <value>        Pull requests must have this label.
# @option --without-labels <value>    Pull requests must not have these labels (default: do not merge, new formula, automerge-skip, pre-release, CI-published-bottle-commits).
# @flag --without-approval            Pull requests do not require approval to be merged.
# @flag --publish                     Run brew pr-publish on matching pull requests.
# @flag --autosquash                  Instruct brew pr-publish to automatically reformat and reword commits in the pull request to the preferred format.
# @flag --no-autosquash               Instruct brew pr-publish to skip automatically reformatting and rewording commits in the pull request to the preferred format.
# @flag --ignore-failures             Include pull requests that have failing status checks.
# @flag -d --debug                    Display any debugging information.
# @flag -q --quiet                    Make some output more quiet.
# @flag -v --verbose                  Make some output more verbose.
# @flag -h --help                     Show this message.
pr-automerge() {
    :;
}
# }} brew pr-automerge

# {{ brew pr-publish
# @cmd Publish bottles for a pull request with GitHub Actions.
# @flag --autosquash            If supported on the target tap, automatically reformat and reword commits to our preferred format.
# @flag --no-autosquash         Skip automatically reformatting and rewording commits in the pull request to the preferred format, even if supported on the target tap.
# @flag --large-runner          Run the upload job on a large runner.
# @option --branch <value>      Branch to use the workflow from (default: master).
# @option --message <value>     Message to include when autosquashing revision bumps, deletions, and rebuilds.
# @option --tap <value>         Target tap repository (default: homebrew/core).
# @option --workflow <value>    Target workflow filename (default: publish-commit-bottles.yml).
# @flag -d --debug              Display any debugging information.
# @flag -q --quiet              Make some output more quiet.
# @flag -v --verbose            Make some output more verbose.
# @flag -h --help               Show this message.
# @arg pull_request
pr-publish() {
    :;
}
# }} brew pr-publish

# {{ brew pr-pull
# @cmd Download and publish bottles, and apply the bottle commit from a pull request with artifacts generated by GitHub Actions.
# @flag --no-upload                             Download the bottles but don't upload them.
# @flag --no-commit                             Do not generate a new commit before uploading.
# @flag --no-cherry-pick                        Do not cherry-pick commits from the pull request branch.
# @flag -n --dry-run                            Print what would be done rather than doing it.
# @flag --clean                                 Do not amend the commits from pull requests.
# @flag --keep-old                              If the formula specifies a rebuild version, attempt to preserve its value in the generated DSL.
# @flag --autosquash                            Automatically reformat and reword commits in the pull request to our preferred format.
# @flag --no-autosquash                         Skip automatically reformatting and rewording commits in the pull request to our preferred format.
# @flag --branch-okay                           Do not warn if pulling to a branch besides the repository default (useful for testing).
# @flag --resolve                               When a patch fails to apply, leave in progress and allow user to resolve, instead of aborting.
# @flag --warn-on-upload-failure                Warn instead of raising an error if the bottle upload fails.
# @option --committer <value>                   Specify a committer name and email in git's standard author format.
# @option --message <value>                     Message to include when autosquashing revision bumps, deletions, and rebuilds.
# @option --artifact <value>                    Download artifacts with the specified name (default: bottles).
# @option --tap <value>                         Target tap repository (default: homebrew/core).
# @option --root-url <value>                    Use the specified URL as the root of the bottle's URL instead of Homebrew's default.
# @option --root-url-using <value>              Use the specified download strategy class for downloading the bottle's URL instead of Homebrew's default.
# @option --workflows <value>                   Retrieve artifacts from the specified workflow (default: tests.yml).
# @option --ignore-missing-artifacts <value>    Comma-separated list of workflows which can be ignored if they have not been run.
# @flag -d --debug                              Display any debugging information.
# @flag -q --quiet                              Make some output more quiet.
# @flag -v --verbose                            Make some output more verbose.
# @flag -h --help                               Show this message.
# @arg pull_request
pr-pull() {
    :;
}
# }} brew pr-pull

# {{ brew pr-upload
# @cmd Apply the bottle commit and publish bottles to a host.
# @flag --keep-old                    If the formula specifies a rebuild version, attempt to preserve its value in the generated DSL.
# @flag -n --dry-run                  Print what would be done rather than doing it.
# @flag --no-commit                   Do not generate a new commit before uploading.
# @flag --warn-on-upload-failure      Warn instead of raising an error if the bottle upload fails.
# @flag --upload-only                 Skip running brew bottle before uploading.
# @option --committer <value>         Specify a committer name and email in git's standard author format.
# @option --root-url <value>          Use the specified URL as the root of the bottle's URL instead of Homebrew's default.
# @option --root-url-using <value>    Use the specified download strategy class for downloading the bottle's URL instead of Homebrew's default.
# @flag -d --debug                    Display any debugging information.
# @flag -q --quiet                    Make some output more quiet.
# @flag -v --verbose                  Make some output more verbose.
# @flag -h --help                     Show this message.
pr-upload() {
    :;
}
# }} brew pr-upload

# {{ brew prof
# @cmd Run Homebrew with a Ruby profiler.
# @flag --stackprof     Use stackprof instead of ruby-prof (the default).
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg command~[`_choice_prof_command`]
prof() {
    :;
}
# }} brew prof

# {{ brew release
# @cmd Create a new draft Homebrew/brew release with the appropriate version number and release notes.
# @flag --major         Create a major release.
# @flag --minor         Create a minor release.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
release() {
    :;
}
# }} brew release

# {{ brew rubocop
# @cmd Installs, configures and runs Homebrew´s rubocop.
rubocop() {
    :;
}
# }} brew rubocop

# {{ brew ruby
# @cmd Run a Ruby instance with Homebrew´s libraries loaded.
# @flag -r              Load a library using require.
# @flag -e              Execute the given text string as a script.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
ruby() {
    :;
}
# }} brew ruby

# {{ brew sh
# @cmd Enter an interactive shell for Homebrew´s build environment.
# @flag --env           Use the standard PATH instead of superenv's when std is passed.
# @flag -c --cmd        Execute commands in a non-interactive shell.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg file
sh() {
    :;
}
# }} brew sh

# {{ brew style
# @cmd Check formulae or files for conformance to Homebrew style guidelines.
# @flag --fix                      Fix style violations automatically using RuboCop's auto-correct feature.
# @flag --reset-cache              Reset the RuboCop cache.
# @flag --formula                  Treat all named arguments as formulae.
# @flag --formulae                 Treat all named arguments as formulae.
# @flag --cask                     Treat all named arguments as casks.
# @flag --casks                    Treat all named arguments as casks.
# @option --only-cops <value>      Specify a comma-separated cops list to check for violations of only the listed RuboCop cops.
# @option --except-cops <value>    Specify a comma-separated cops list to skip checking for violations of the listed RuboCop cops.
# @flag -d --debug                 Display any debugging information.
# @flag -q --quiet                 Make some output more quiet.
# @flag -v --verbose               Make some output more verbose.
# @flag -h --help                  Show this message.
# @arg file-tap-formula-cask*[`_choice_file_tap_formula_cask`]
style() {
    :;
}
# }} brew style

# {{ brew tap-new
# @cmd Generate the template files for a new tap.
# @flag --no-git             Don't initialize a Git repository for the tap.
# @flag --pull-label         Label name for pull requests ready to be pulled (default: pr-pull).
# @flag --branch             Initialize Git repository and setup GitHub Actions workflows with the specified branch name (default: main).
# @flag --github-packages    Upload bottles to GitHub Packages.
# @flag -d --debug           Display any debugging information.
# @flag -q --quiet           Make some output more quiet.
# @flag -v --verbose         Make some output more verbose.
# @flag -h --help            Show this message.
# @arg user-repo <user/repo>
tap-new() {
    :;
}
# }} brew tap-new

# {{ brew test
# @cmd Run the test method provided by an installed formula.
# @flag -f --force      Test formulae even if they are unlinked.
# @flag --HEAD          Test the HEAD version of a formula.
# @flag --keep-tmp      Retain the temporary files created for the test.
# @flag --retry         Retry if a testing fails.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg installed_formula[`_choice_installed_formula`]
test() {
    :;
}
# }} brew test

# {{ brew tests
# @cmd Run Homebrew´s unit and integration tests.
# @flag --coverage      Generate code coverage reports.
# @flag --generic       Run only OS-agnostic tests.
# @flag --online        Include tests that use the GitHub API and tests that use any of the taps for official external commands.
# @flag --byebug        Enable debugging using byebug.
# @flag --changed       Only runs tests on files that were changed from the master branch.
# @flag --fail-fast     Exit early on the first failing test.
# @flag --only          Run only test_script_spec.rb.
# @flag --seed          Randomise tests with the specified value instead of a random seed.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
tests() {
    :;
}
# }} brew tests

# {{ brew typecheck
# @cmd Check for typechecking errors using Sorbet.
# @alias tc
# @flag --fix              Automatically fix type errors.
# @flag -q --quiet         Silence all non-critical errors.
# @flag --update           Update RBI files.
# @flag --update-all       Update all RBI files rather than just updated gems.
# @flag --suggest-typed    Try upgrading typed sigils.
# @option --dir <dir>      Typecheck all files in a specific directory.
# @option --file <file>    Typecheck a single file.
# @flag --ignore           Ignores input files that contain the given string in their paths (relative to the input path passed to Sorbet).
# @flag -d --debug         Display any debugging information.
# @flag -v --verbose       Make some output more verbose.
# @flag -h --help          Show this message.
typecheck() {
    :;
}
# }} brew typecheck

# {{ brew unbottled
# @cmd Show the unbottled dependents of formulae.
# @flag --tag           Use the specified bottle tag (e.g. big_sur) instead of the current OS.
# @flag --dependents    Skip getting analytics data and sort by number of dependents instead.
# @flag --total         Print the number of unbottled and total formulae.
# @flag --lost          Print the homebrew/core commits where bottles were lost in the last week.
# @flag --eval-all      Evaluate all available formulae and casks, whether installed or not, to check them.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg formula*[`_choice_suggest_formula`]
unbottled() {
    :;
}
# }} brew unbottled

# {{ brew unpack
# @cmd Unpack the source files for formula into subdirectories of the current working directory.
# @option --destdir <dir>    Create subdirectories in the directory named by path instead.
# @flag --patch              Patches for formula will be applied to the unpacked source.
# @flag -g --git             Initialise a Git repository in the unpacked source.
# @flag -f --force           Overwrite the destination directory if it already exists.
# @flag -d --debug           Display any debugging information.
# @flag -q --quiet           Make some output more quiet.
# @flag -v --verbose         Make some output more verbose.
# @flag -h --help            Show this message.
# @arg formula[`_choice_suggest_formula`]
unpack() {
    :;
}
# }} brew unpack

# {{ brew update-license-data
# @cmd Update SPDX license data in the Homebrew repository.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
update-license-data() {
    :;
}
# }} brew update-license-data

# {{ brew update-maintainers
# @cmd Update the list of maintainers in the Homebrew/brew README.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
update-maintainers() {
    :;
}
# }} brew update-maintainers

# {{ brew update-python-resources
# @cmd Update versions for PyPI resource blocks in formula.
# @flag -p --print-only                 Print the updated resource blocks instead of changing formula.
# @flag -s --silent                     Suppress any output.
# @flag --ignore-non-pypi-packages      Don't fail if formula is not a PyPI package.
# @option --version <value>             Use the specified version when finding resources for formula.
# @option --package-name <value>        Use the specified package-name when finding resources for formula.
# @option --extra-packages <value>      Include these additional packages when finding resources.
# @option --exclude-packages <value>    Exclude these packages when finding resources.
# @flag -d --debug                      Display any debugging information.
# @flag -q --quiet                      Make some output more quiet.
# @flag -v --verbose                    Make some output more verbose.
# @flag -h --help                       Show this message.
# @arg formula[`_choice_suggest_formula`]
update-python-resources() {
    :;
}
# }} brew update-python-resources

# {{ brew update-sponsors
# @cmd Update the list of GitHub Sponsors in the Homebrew/brew README.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
update-sponsors() {
    :;
}
# }} brew update-sponsors

# {{ brew update-test
# @cmd Run a test of brew update with a new repository clone.
# @flag --to-tag              Set HOMEBREW_UPDATE_TO_TAG to test updating between tags.
# @flag --keep-tmp            Retain the temporary directory containing the new repository clone.
# @option --commit <value>    Use the specified commit as the start commit.
# @option --before <value>    Use the commit at the specified date as the start commit.
# @flag -d --debug            Display any debugging information.
# @flag -q --quiet            Make some output more quiet.
# @flag -v --verbose          Make some output more verbose.
# @flag -h --help             Show this message.
update-test() {
    :;
}
# }} brew update-test

# {{ brew vendor-gems
# @cmd Install and commit Homebrew´s vendored gems.
# @flag --update        Update the specified list of vendored gems to the latest version.
# @flag --no-commit     Do not generate a new commit upon completion.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
vendor-gems() {
    :;
}
# }} brew vendor-gems

# {{ brew alias
# @cmd Show existing aliases.
# @flag --edit          Edit aliases in a text editor.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg alias*[`_choice_alias`]
alias() {
    :;
}
# }} brew alias

# {{ brew autoupdate
# @cmd An easy, convenient way to automatically update Homebrew.
# @flag --upgrade                Automatically upgrade your installed formulae.
# @flag --greedy                 Upgrade casks with --greedy (include auto-updating casks).
# @flag --cleanup                Automatically clean brew's cache and logs.
# @flag --enable-notification    Send a notification when the autoupdate process has finished successfully, if terminal-notifier is installed and found.
# @flag --immediate              Starts the autoupdate command immediately and on system boot, instead of waiting for one interval (24 hours by default) to pass first.
# @flag --sudo                   If a Cask requires sudo, autoupdate will open a GUI to ask for the password.
# @flag -d --debug               Display any debugging information.
# @flag -q --quiet               Make some output more quiet.
# @flag -v --verbose             Make some output more verbose.
# @flag -h --help                Show this message.
# @arg interval
autoupdate() {
    :;
}

# {{{ brew autoupdate stop
# @cmd Stop autoupdating, but retain plist and logs.
autoupdate::stop() {
    :;
}
# }}} brew autoupdate stop

# {{{ brew autoupdate delete
# @cmd Cancel the autoupdate, delete the plist and logs.
autoupdate::delete() {
    :;
}
# }}} brew autoupdate delete

# {{{ brew autoupdate status
# @cmd Prints the current status of this tool.
autoupdate::status() {
    :;
}
# }}} brew autoupdate status

# {{{ brew autoupdate version
# @cmd Output this tool's current version, and a short changelog.
autoupdate::version() {
    :;
}
# }}} brew autoupdate version
# }} brew autoupdate

# {{ brew bundle
# @cmd Bundler for non-Ruby dependencies from Homebrew, Homebrew Cask, Mac App Store and Whalebrew.
# @option --file <file>    Read the Brewfile from this location.
# @flag --global           Read the Brewfile from ~/.Brewfile or the HOMEBREW_BUNDLE_FILE_GLOBAL environment variable, if set.
# @flag -v --verbose       install prints output from commands as they are run.
# @flag --no-upgrade       install won't run brew upgrade on outdated dependencies.
# @flag -f --force         install runs with --force/--overwrite.
# @flag --cleanup          install performs cleanup operation, same as running cleanup --force.
# @flag --no-lock          install won't output a Brewfile.lock.json.
# @flag --all              list all dependencies.
# @flag --formula          list Homebrew dependencies.
# @flag --brews            list Homebrew dependencies.
# @flag --cask             list Homebrew Cask dependencies.
# @flag --casks            list Homebrew Cask dependencies.
# @flag --tap              list tap dependencies.
# @flag --taps             list tap dependencies.
# @flag --mas              list Mac App Store dependencies.
# @flag --whalebrew        list Whalebrew dependencies.
# @flag --vscode           list VSCode extensions.
# @flag --describe         dump adds a description comment above each line, unless the dependency does not have a description.
# @flag --no-restart       dump does not add restart_service to formula lines.
# @flag --zap              cleanup casks using the zap command instead of uninstall.
# @flag -d --debug         Display any debugging information.
# @flag -q --quiet         Make some output more quiet.
# @flag -h --help          Show this message.
bundle() {
    :;
}

# {{{ brew bundle dump
# @cmd Write all installed casks/formulae/images/taps into a Brewfile in the current directory.
bundle::dump() {
    :;
}
# }}} brew bundle dump

# {{{ brew bundle cleanup
# @cmd Uninstall all dependencies not listed from the Brewfile.
bundle::cleanup() {
    :;
}
# }}} brew bundle cleanup

# {{{ brew bundle check
# @cmd Check if all dependencies are installed from the Brewfile.
bundle::check() {
    :;
}
# }}} brew bundle check

# {{{ brew bundle list
# @cmd List all dependencies present in the Brewfile.
bundle::list() {
    :;
}
# }}} brew bundle list

# {{{ brew bundle exec
# @cmd Run an external command in an isolated build environment based on the Brewfile dependencies.
bundle::exec() {
    :;
}
# }}} brew bundle exec
# }} brew bundle

# {{ brew services
# @cmd Manage background services with macOS´ launchctl(1) daemon manager or Linux´s systemctl(1) service manager.
# @option --file <file>        Use the service file from this location to start the service.
# @flag --sudo-service-user    When run as root on macOS, run the service(s) as this user.
# @flag --all                  Run subcommand on all services.
# @flag --json                 Output as JSON.
# @flag --no-wait              Don't wait for stop to finish stopping the service.
# @flag -d --debug             Display any debugging information.
# @flag -q --quiet             Make some output more quiet.
# @flag -v --verbose           Make some output more verbose.
# @flag -h --help              Show this message.
services() {
    :;
}

# {{{ brew services list
# @cmd List information about all managed services for the current user (or root).
# @flag --json
services::list() {
    :;
}
# }}} brew services list

# {{{ brew services info
# @cmd List all managed services for the current user (or root).
# @flag --all
# @flag --json
# @arg formula[`_choice_suggest_service`]
services::info() {
    :;
}
# }}} brew services info

# {{{ brew services run
# @cmd Run the service formula without registering to launch at login (or boot).
# @flag --all
# @arg formula[`_choice_suggest_service`]
services::run() {
    :;
}
# }}} brew services run

# {{{ brew services start
# @cmd Start the service formula immediately and register it to launch at login (or boot).
# @flag --all
# @option --file <file>
# @arg formula[`_choice_suggest_service`]
services::start() {
    :;
}
# }}} brew services start

# {{{ brew services stop
# @cmd Stop the service formula immediately and unregister it from launching at login (or boot).
# @flag --all
# @arg formula[`_choice_suggest_service`]
services::stop() {
    :;
}
# }}} brew services stop

# {{{ brew services kill
# @cmd Stop the service formula immediately but keep it registered to launch at login (or boot).
# @flag --all
# @arg formula[`_choice_suggest_service`]
services::kill() {
    :;
}
# }}} brew services kill

# {{{ brew services restart
# @cmd Stop (if necessary) and start the service formula immediately and register it to launch at login (or boot).
# @flag --all
# @arg formula[`_choice_suggest_service`]
services::restart() {
    :;
}
# }}} brew services restart

# {{{ brew services cleanup
# @cmd Remove all unused services.
# @flag --all
services::cleanup() {
    :;
}
# }}} brew services cleanup
# }} brew services

# {{ brew test-bot
# @cmd Tests the full lifecycle of a Homebrew change to a tap (Git repository).
# @flag --dry-run                         Print what would be done rather than doing it.
# @flag --cleanup                         Clean all state from the Homebrew directory.
# @flag --skip-setup                      Don't check if the local system is set up correctly.
# @flag --build-from-source               Build from source rather than building bottles.
# @flag --build-dependents-from-source    Build dependents from source rather than testing bottles.
# @flag --junit                           generate a JUnit XML test results file.
# @flag --keep-old                        Run brew bottle --keep-old to build new bottles for a single platform.
# @flag --skip-relocation                 Run brew bottle --skip-relocation to build new bottles that don't require relocation.
# @flag --only-json-tab                   Run brew bottle --only-json-tab to build new bottles that do not contain a tab.
# @flag --local                           Ask Homebrew to write verbose logs under ./logs/ and set $HOME to ./home/
# @flag --tap                             Use the Git repository of the given tap.
# @flag --fail-fast                       Immediately exit on a failing step.
# @flag -v --verbose                      Print test step output in real time.
# @flag --test-default-formula            Use a default testing formula when not building a tap and no other formulae are specified.
# @option --root-url <value>              Use the specified URL as the root of the bottle's URL instead of Homebrew's default.
# @option --git-name <value>              Set the Git author/committer names to the given name.
# @option --git-email <value>             Set the Git author/committer email to the given email.
# @flag --publish                         Publish the uploaded bottles.
# @flag --skip-online-checks              Don't pass --online to brew audit and skip brew livecheck.
# @flag --skip-dependents                 Don't test any dependents.
# @flag --skip-livecheck                  Don't test livecheck.
# @flag --skip-recursive-dependents       Only test the direct dependents.
# @flag --only-cleanup-before             Only run the pre-cleanup step.
# @flag --only-setup                      Only run the local system setup check step.
# @flag --only-tap-syntax                 Only run the tap syntax check step.
# @flag --only-formulae                   Only run the formulae steps.
# @flag --only-formulae-detect            Only run the formulae detection steps.
# @flag --only-formulae-dependents        Only run the formulae dependents steps.
# @flag --only-bottles-fetch              Only run the bottles fetch steps.
# @flag --only-cleanup-after              Only run the post-cleanup step.
# @flag --testing-formulae                Use these testing formulae rather than running the formulae detection steps.
# @flag --added-formulae                  Use these added formulae rather than running the formulae detection steps.
# @flag --deleted-formulae                Use these deleted formulae rather than running the formulae detection steps.
# @flag --skipped-or-failed-formulae      Use these skipped or failed formulae from formulae steps for a formulae dependents step.
# @flag -d --debug                        Display any debugging information.
# @flag -q --quiet                        Make some output more quiet.
# @flag -h --help                         Show this message.
# @arg formula[`_choice_suggest_formula`]
test-bot() {
    :;
}
# }} brew test-bot

# {{ brew unalias
# @cmd Remove aliases.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg alias
unalias() {
    :;
}
# }} brew unalias

# {{ brew which-formula
# @cmd Prints the formula(e) which provides the given command.
# @flag --explain       Output explanation of how to get 'cmd' by installing one of the providing formulae.
# @flag -d --debug      Display any debugging information.
# @flag -q --quiet      Make some output more quiet.
# @flag -v --verbose    Make some output more verbose.
# @flag -h --help       Show this message.
# @arg command[`_module_os_command`]
which-formula() {
    :;
}
# }} brew which-formula

# {{ brew which-update
# @cmd Database update for brew which-formula
# @flag --stats              Print statistics about the database contents (number of commands and formulae, list of missing formulae).
# @flag --commit             Commit the changes using git.
# @flag --update-existing    Update database entries with outdated formula versions.
# @flag --install-missing    Install and update formulae that are missing from the database and don't have bottles.
# @flag --eval-all           Evaluate all installed taps, rather than just the core tap.
# @flag --max-downloads      Specify a maximum number of formulae to download and update.
# @flag -d --debug           Display any debugging information.
# @flag -q --quiet           Make some output more quiet.
# @flag -v --verbose         Make some output more verbose.
# @flag -h --help            Show this message.
# @arg database
which-update() {
    :;
}
# }} brew which-update

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_suggest_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_suggest_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_suggest_cask
    fi
}

_choice_suggest_formula() {
    brew formulae
}

_choice_installed_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_installed_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_installed_cask
    fi
}

_choice_suggest_diagnostic_check() {
    brew doctor --list-checks
}

_choice_installed_formula() {
    brew list --formula | sed 's/\s\+/\n/'
}

_choice_outdated_formula_cask() {
    if [[ -z "$argc_cask" ]] && [[ -z "$argc_casks" ]]; then
        _choice_outdated_formula
    elif [[ -z "$argc_formula" ]] && [[ -z "$argc_formulae" ]]; then
        _choice_outdated_cask
    fi
}

_choice_tap() {
    brew tap
}

_choice_installed_formula_file() {
    _argc_util_comp_path
    _choice_installed_formula
}

_choice_suggest_cask() {
    brew casks
}

_choice_cask_tap() {
    _choice_suggest_cask
    _choice_tap
}

_choice_prof_command() {
    _argc_util_comp_subcommand 0 brew
}

_choice_file_tap_formula_cask() {
    _argc_util_comp_path
    _argc_util_parallel _choice_suggest_cask ::: _choice_suggest_formula ::: _choice_tap
}

_choice_alias() {
    brew alias | sed "s/^brew alias \([^=]\+\)='\(.*\)'$/\1\t\2/"   
}

_choice_suggest_service() {
    brew services list | gawk '{if (NR > 1) {print $1}}'
}

_choice_installed_cask() {
    brew list --cask | sed 's/\s\+/\n/'
}

_choice_outdated_cask() {
    brew outdated --cask | sed 's/\s/\t/'
}

_choice_outdated_formula() {
    brew outdated --formula | sed 's/\s/\t/'
}

_module_os_command() {
    if _argc_util_has_path_prefix; then
        _argc_util_comp_path
        return
    fi
    if [[ "$ARGC_OS" == "windows" ]]; then
        PATH="$(echo "$PATH" | sed 's|:[^:]*/windows/system32:|:|Ig')" compgen -c
    else
        compgen -c
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"