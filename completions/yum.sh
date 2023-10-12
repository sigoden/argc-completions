#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture

# {{ yum alias
# @cmd List or create command aliases
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --enable-resolving                     enable aliases resolving
# @flag --disable-resolving                    disable aliases resolving
# @arg action[add|list|delete]
alias() {
    :;
}
# }} yum alias

# {{ yum autoremove
# @cmd remove all unneeded packages that were originally installed as dependencies
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_installed_package`]
autoremove() {
    :;
}
# }} yum autoremove

# {{ yum check
# @cmd check for problems in the packagedb
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  show all problems; default
# @flag --dependencies                         show dependency problems
# @flag --duplicates                           show duplicate problems
# @flag --obsoleted                            show obsoleted packages
# @flag --provides                             show problems with provides
check() {
    :;
}
# }} yum check

# {{ yum check-update
# @cmd check for available package upgrades
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --changelogs                           show changelogs before update
# @arg package*[`_choice_package`]
check-update() {
    :;
}
# }} yum check-update

# {{ yum clean
# @cmd remove cached data
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg action[metadata|packages|dbcache|expire-cache|all]
clean() {
    :;
}
# }} yum clean

# {{ yum deplist
# @cmd [deprecated, use repoquery --deplist] List package's dependencies and what packages provide them
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag -a --all                               Query all packages (shorthand for repoquery '*' or repoquery without argument)
# @flag --show-duplicates                      Query all versions of packages (default)
# @option --arch <arch>                        show only results from this ARCH
# @option --archlist <arch>                    show only results from this ARCH
# @option -f --file <FILE+>                    show only results that owns FILE
# @option --whatconflicts <REQ>                show only results that conflict REQ
# @option --whatdepends <REQ>                  shows results that requires, suggests, supplements, enhances, or recommends package provides and files REQ
# @option --whatobsoletes <REQ>                show only results that obsolete REQ
# @option --whatprovides <REQ>                 show only results that provide REQ
# @option --whatrequires <REQ>                 shows results that requires package provides and files REQ
# @option --whatrecommends <REQ>               show only results that recommend REQ
# @option --whatenhances <REQ>                 show only results that enhance REQ
# @option --whatsuggests <REQ>                 show only results that suggest REQ
# @option --whatsupplements <REQ>              show only results that supplement REQ
# @flag --alldeps                              check non-explicit dependencies (files and Provides); default
# @flag --exactdeps                            check dependencies exactly as given, opposite of --alldeps
# @flag --recursive                            used with --whatrequires, and --requires --resolve, query packages recursively.
# @flag --deplist                              show a list of all dependencies and what packages provide them
# @flag --resolve                              resolve capabilities to originating package(s)
# @flag --tree                                 show recursive tree for package(s)
# @flag --srpm                                 operate on corresponding source RPM
# @option --latest-limit <LATEST_LIMIT>        show N latest packages for a given name.arch (or latest but N if N is negative)
# @flag --disable-modular-filtering            list also packages of inactive module streams
# @flag -i --info                              show detailed information about the package
# @flag -l --list                              show list of files in the package
# @flag -s --source                            show package source RPM name
# @flag --changelogs                           show changelogs of the package
# @option --qf <QUERYFORMAT>                   display format for listing packages: "%{name} %{version} ...", use --querytags to view full tag list
# @option --queryformat <QUERYFORMAT>          display format for listing packages: "%{name} %{version} ...", use --querytags to view full tag list
# @flag --querytags                            show available tags to use with --queryformat
# @flag --nevra                                use name-epoch:version-release.architecture format for displaying found packages (default)
# @flag --nvr                                  use name-version-release format for displaying found packages (rpm query default)
# @flag --envra                                use epoch:name-version-release.architecture format for displaying found packages
# @flag --groupmember                          Display in which comps groups are presented selected packages
# @flag --duplicates                           limit the query to installed duplicate packages
# @flag --installonly                          limit the query to installed installonly packages
# @flag --unsatisfied                          limit the query to installed packages with unsatisfied dependencies
# @flag --location                             show a location from where packages can be downloaded
# @flag --conflicts                            Display capabilities that the package conflicts with.
# @flag --depends                              Display capabilities that the package can depend on, enhance, recommend, suggest, and supplement.
# @flag --enhances                             Display capabilities that the package can enhance.
# @flag --provides                             Display capabilities provided by the package.
# @flag --recommends                           Display capabilities that the package recommends.
# @flag --requires                             Display capabilities that the package depends on.
# @flag --requires-pre                         If the package is not installed display capabilities that it depends on for running %pre and %post scriptlets.
# @flag --suggests                             Display capabilities that the package suggests.
# @flag --supplements                          Display capabilities that the package can supplement.
# @flag --available                            Display only available packages.
# @flag --installed                            Display only installed packages.
# @flag --extras                               Display only packages that are not present in any of available repositories.
# @flag --upgrades                             Display only packages that provide an upgrade for some already installed package.
# @flag --unneeded                             Display only packages that can be removed by "yum autoremove" command.
# @flag --userinstalled                        Display only packages that were installed by user.
# @flag --recent                               Display only recently edited packages
# @arg key*
deplist() {
    :;
}
# }} yum deplist

# {{ yum distro-sync
# @cmd synchronize installed packages to the latest available versions
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_installed_package`]
distro-sync() {
    :;
}
# }} yum distro-sync

# {{ yum downgrade
# @cmd Downgrade a package
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_installed_package`]
downgrade() {
    :;
}
# }} yum downgrade

# {{ yum group
# @cmd display, or use, the groups information
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --with-optional                        include optional packages from group
# @flag --hidden                               show also hidden groups
# @flag --installed                            show only installed groups
# @flag --available                            show only available groups
# @flag --ids                                  show also ID of groups
# @arg cmd[summary|list|info|remove|install|upgrade|mark]
# @arg args*
group() {
    :;
}
# }} yum group

# {{ yum history
# @cmd display, or use, the transaction history
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --reverse                              display history list output reversed
# @option -o --output                          For the store command, file path to store the transaction to
# @flag --ignore-installed                     For the replay command, don't check for installed packages matching those in transaction
# @flag --ignore-extras                        For the replay command, don't check for extra packages pulled into the transaction
# @flag --skip-unavailable                     For the replay command, skip packages that are not available or have missing dependencies
# @arg cmd[list|info|redo|replay|rollback|store|undo|userinstalled]
# @arg transaction
# @arg file
history() {
    :;
}
# }} yum history

# {{ yum info
# @cmd display details about a package or group of packages
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  show all packages (default)
# @flag --available                            show only available packages
# @flag --installed                            show only installed packages
# @flag --extras                               show only extras packages
# @flag --updates                              show only upgrades packages
# @flag --upgrades                             show only upgrades packages
# @flag --autoremove                           show only autoremove packages
# @flag --recent                               show only recently changed packages
# @arg package*[`_choice_package`]
info() {
    :;
}
# }} yum info

# {{ yum install
# @cmd install a package or packages on your system
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_package`]
install() {
    :;
}
# }} yum install

# {{ yum list
# @cmd list a package or groups of packages
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  show all packages (default)
# @flag --available                            show only available packages
# @flag --installed                            show only installed packages
# @flag --extras                               show only extras packages
# @flag --updates                              show only upgrades packages
# @flag --upgrades                             show only upgrades packages
# @flag --autoremove                           show only autoremove packages
# @flag --recent                               show only recently changed packages
# @arg package*[`_choice_package`]
list() {
    :;
}
# }} yum list

# {{ yum makecache
# @cmd generate the metadata cache
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --timer
makecache() {
    :;
}
# }} yum makecache

# {{ yum mark
# @cmd mark or unmark installed packages as installed by user.
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_installed_package`]
mark() {
    :;
}
# }} yum mark

# {{ yum module
# @cmd Interact with Modules.
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --enabled                              show only enabled modules
# @flag --disabled                             show only disabled modules
# @flag --installed                            show only installed modules or packages
# @flag --profile                              show profile content
# @flag --available                            show only available packages
# @flag --all                                  remove all modular packages
# @arg cmd[`_choice_module_cmd`]
# @arg module-spec*
module() {
    :;
}
# }} yum module

# {{ yum provides
# @cmd find what package provides the given value
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg provide-spec*
provides() {
    :;
}
# }} yum provides

# {{ yum reinstall
# @cmd reinstall a package
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_installed_package`]
reinstall() {
    :;
}
# }} yum reinstall

# {{ yum remove
# @cmd remove a package or packages from your system
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --duplicates                           remove duplicated packages
# @flag --oldinstallonly                       remove installonly packages over the limit
# @arg package*[`_choice_installed_package`]
remove() {
    :;
}
# }} yum remove

# {{ yum repolist
# @cmd display the configured software repositories
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  show all repos
# @flag --enabled                              show enabled repos (default)
# @flag --disabled                             show disabled repos
# @arg repository*
repolist() {
    :;
}
# }} yum repolist

# {{ yum repoquery
# @cmd search for packages matching keyword
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag -a --all                               Query all packages (shorthand for repoquery '*' or repoquery without argument)
# @flag --show-duplicates                      Query all versions of packages (default)
# @option --arch <arch>                        show only results from this ARCH
# @option --archlist <arch>                    show only results from this ARCH
# @option -f --file <FILE+>                    show only results that owns FILE
# @option --whatconflicts <REQ>                show only results that conflict REQ
# @option --whatdepends <REQ>                  shows results that requires, suggests, supplements, enhances, or recommends package provides and files REQ
# @option --whatobsoletes <REQ>                show only results that obsolete REQ
# @option --whatprovides <REQ>                 show only results that provide REQ
# @option --whatrequires <REQ>                 shows results that requires package provides and files REQ
# @option --whatrecommends <REQ>               show only results that recommend REQ
# @option --whatenhances <REQ>                 show only results that enhance REQ
# @option --whatsuggests <REQ>                 show only results that suggest REQ
# @option --whatsupplements <REQ>              show only results that supplement REQ
# @flag --alldeps                              check non-explicit dependencies (files and Provides); default
# @flag --exactdeps                            check dependencies exactly as given, opposite of --alldeps
# @flag --recursive                            used with --whatrequires, and --requires --resolve, query packages recursively.
# @flag --deplist                              show a list of all dependencies and what packages provide them
# @flag --resolve                              resolve capabilities to originating package(s)
# @flag --tree                                 show recursive tree for package(s)
# @flag --srpm                                 operate on corresponding source RPM
# @option --latest-limit <LATEST_LIMIT>        show N latest packages for a given name.arch (or latest but N if N is negative)
# @flag --disable-modular-filtering            list also packages of inactive module streams
# @flag -i --info                              show detailed information about the package
# @flag -l --list                              show list of files in the package
# @flag -s --source                            show package source RPM name
# @flag --changelogs                           show changelogs of the package
# @option --qf <QUERYFORMAT>                   display format for listing packages: "%{name} %{version} ...", use --querytags to view full tag list
# @option --queryformat <QUERYFORMAT>          display format for listing packages: "%{name} %{version} ...", use --querytags to view full tag list
# @flag --querytags                            show available tags to use with --queryformat
# @flag --nevra                                use name-epoch:version-release.architecture format for displaying found packages (default)
# @flag --nvr                                  use name-version-release format for displaying found packages (rpm query default)
# @flag --envra                                use epoch:name-version-release.architecture format for displaying found packages
# @flag --groupmember                          Display in which comps groups are presented selected packages
# @flag --duplicates                           limit the query to installed duplicate packages
# @flag --installonly                          limit the query to installed installonly packages
# @flag --unsatisfied                          limit the query to installed packages with unsatisfied dependencies
# @flag --location                             show a location from where packages can be downloaded
# @flag --conflicts                            Display capabilities that the package conflicts with.
# @flag --depends                              Display capabilities that the package can depend on, enhance, recommend, suggest, and supplement.
# @flag --enhances                             Display capabilities that the package can enhance.
# @flag --provides                             Display capabilities provided by the package.
# @flag --recommends                           Display capabilities that the package recommends.
# @flag --requires                             Display capabilities that the package depends on.
# @flag --requires-pre                         If the package is not installed display capabilities that it depends on for running %pre and %post scriptlets.
# @flag --suggests                             Display capabilities that the package suggests.
# @flag --supplements                          Display capabilities that the package can supplement.
# @flag --available                            Display only available packages.
# @flag --installed                            Display only installed packages.
# @flag --extras                               Display only packages that are not present in any of available repositories.
# @flag --upgrades                             Display only packages that provide an upgrade for some already installed package.
# @flag --unneeded                             Display only packages that can be removed by "yum autoremove" command.
# @flag --userinstalled                        Display only packages that were installed by user.
# @flag --recent                               Display only recently edited packages
# @arg key*
repoquery() {
    :;
}
# }} yum repoquery

# {{ yum repository-packages
# @cmd run commands on top of all packages in given repository
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  show all packages (default)
# @flag --available                            show only available packages
# @flag --installed                            show only installed packages
# @flag --extras                               show only extras packages
# @flag --updates                              show only upgrades packages
# @flag --upgrades                             show only upgrades packages
# @flag --autoremove                           show only autoremove packages
# @flag --recent                               show only recently changed packages
# @arg repoid
# @arg cmd[remove|install|remove-or-reinstall|info|remove-or-distro-sync|check-update|reinstall|reinstall-old|move-to|upgrade|list]
# @arg package*[`_choice_package`]
repository-packages() {
    :;
}
# }} yum repository-packages

# {{ yum search
# @cmd search package details for the given string
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --all                                  search also package description and URL
# @arg keyword*
search() {
    :;
}
# }} yum search

# {{ yum shell
# @cmd run an interactive YUM shell
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg script
shell() {
    :;
}
# }} yum shell

# {{ yum swap
# @cmd run an interactive YUM mod for remove and install one spec
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg remove-spec
# @arg install-spec
swap() {
    :;
}
# }} yum swap

# {{ yum updateinfo
# @cmd display advisories about packages
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @flag --available                            advisories about newer versions of installed packages (default)
# @flag --installed                            advisories about equal and older versions of installed packages
# @flag --updates                              advisories about newer versions of those installed packages for which a newer version is available
# @flag --all                                  advisories about any versions of installed packages
# @flag --summary                              show summary of advisories (default)
# @flag --list                                 show list of advisories
# @flag --info                                 show info of advisories
# @flag --with-cve                             show only advisories with CVE reference
# @flag --with-bz                              show only advisories with bugzilla reference
# @arg package*[`_choice_package`]
updateinfo() {
    :;
}
# }} yum updateinfo

# {{ yum upgrade
# @cmd upgrade a package or packages on your system
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_upgradable_pkg`]
upgrade() {
    :;
}
# }} yum upgrade

# {{ yum upgrade-minimal
# @cmd upgrade, but only 'newest' package match which fixes a problem that affects your system
# @option -c --config <config file>            config file location
# @flag -q --quiet                             quiet operation
# @flag -v --verbose                           verbose operation
# @flag --version                              show YUM version and exit
# @option --installroot <path>                 set install root
# @flag --nodocs                               do not install documentations
# @flag --noplugins                            disable all plugins
# @option --enableplugin <plugin>              enable plugins by name
# @option --disableplugin <plugin>             disable plugins by name
# @option --releasever                         override the value of $releasever in config and repo files
# @option --setopt <SETOPTS>                   set arbitrary config and repo options
# @flag --skip-broken                          resolve depsolve problems by skipping packages
# @flag -h                                     show command help
# @flag --help                                 show command help
# @flag --help-cmd                             show command help
# @flag --allowerasing                         allow erasing of installed packages to resolve dependencies
# @flag -b --best                              try the best available package versions in transactions.
# @flag --nobest                               do not limit the transaction to the best candidate
# @flag -C --cacheonly                         run entirely from system cache, don't update cache
# @option -R --randomwait <minutes>            maximum command wait time
# @option -d --debuglevel <debug level>        debugging output level
# @flag --debugsolver                          dumps detailed solving results into files
# @flag --showduplicates                       show duplicates, in repos, in list/search commands
# @option -e --errorlevel                      error output level
# @flag --obsoletes                            enables yum's obsoletes processing logic for upgrade or display capabilities that the package obsoletes for info, list and repoquery
# @option --rpmverbosity <debug level name>    debugging output level for rpm
# @flag -y --assumeyes                         automatically answer yes for all questions
# @flag --assumeno                             automatically answer no for all questions
# @option --enablerepo <repo>                  Temporarily enable repositories for the purpose of the current dnf command.
# @option --disablerepo <repo>                 Temporarily disable active repositories for the purpose of the current dnf command.
# @option --repo <repo>                        enable just specific repositories by an id or a glob, can be specified multiple times
# @option --repoid <repo>                      enable just specific repositories by an id or a glob, can be specified multiple times
# @flag --enable                               enable repos with config-manager command (automatically saves)
# @flag --disable                              disable repos with config-manager command (automatically saves)
# @option -x <package>                         exclude packages by name or glob
# @option --exclude <package>                  exclude packages by name or glob
# @option --excludepkgs <package>              exclude packages by name or glob
# @option --disableexcludes <repo>             disable excludepkgs
# @option --disableexcludepkgs <repo>          disable excludepkgs
# @option --repofrompath <repo,path>           label and path to an additional repository to use (same path as in a baseurl), can be specified multiple times.
# @flag --noautoremove                         disable removal of dependencies that are no longer used
# @flag --nogpgcheck                           disable gpg signature checking (if RPM policy allows)
# @option --color                              control whether color is used
# @flag --refresh                              set metadata as expired before running the command
# @flag -4                                     resolve to IPv4 addresses only
# @flag -6                                     resolve to IPv6 addresses only
# @option --destdir <DESTDIR>                  set directory to copy packages to
# @option --downloaddir <DESTDIR>              set directory to copy packages to
# @flag --downloadonly                         only download packages
# @option --comment                            add a comment to transaction
# @flag --bugfix                               Include bugfix relevant packages, in updates
# @flag --enhancement                          Include enhancement relevant packages, in updates
# @flag --newpackage                           Include newpackage relevant packages, in updates
# @flag --security                             Include security relevant packages, in updates
# @option --advisory <ADVISORY>                Include packages needed to fix the given advisory, in updates
# @option --advisories <ADVISORY>              Include packages needed to fix the given advisory, in updates
# @option --bz <BUGZILLA>                      Include packages needed to fix the given BZ, in updates
# @option --bzs <BUGZILLA>                     Include packages needed to fix the given BZ, in updates
# @option --cve <CVES>                         Include packages needed to fix the given CVE, in updates
# @option --cves <CVES>                        Include packages needed to fix the given CVE, in updates
# @option --sec-severity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --secseverity[Critical|Important|Moderate|Low]  Include security relevant packages matching the severity, in updates
# @option --forcearch <ARCH>                   Force the use of an architecture
# @arg package*[`_choice_upgradable_pkg`]
upgrade-minimal() {
    :;
}
# }} yum upgrade-minimal

_choice_installed_package() {
    yum list --installed | _helper_transform_pkg
}

_choice_package() {
    yum list --all | _helper_transform_pkg
}

_choice_module_cmd() {
    cat <<-'EOF'
disable	disable a module with all its streams
enable	enable a module stream
info	print detailed information about a module
install	install a module profile including its packages
list	list all module streams, profiles and states
provides	list modular packages
remove	remove installed module profiles and their packages
repoquery	list packages belonging to a module
reset	reset a module
switch-to	switch a module to a stream and distrosync rpm packages
update	update packages associated with an active stream
EOF
}

_choice_upgradable_pkg() {
    yum list --upgrade | _helper_transform_pkg
}

_helper_transform_pkg() {
    gawk '{if (NR>1) { gsub(/\.[^.]+$/, "", $1); print $1 } }'
}

command eval "$(argc --argc-eval "$0" "$@")"