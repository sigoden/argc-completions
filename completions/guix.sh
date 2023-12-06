#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help       display this helpful text again and exit
# @flag -V --version    display version and copyright information and exit
# @arg args*

# {{ guix deploy
# @cmd deploy operating systems on a set of machines
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @flag -x --execute                     execute the following command on all the machines
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @arg file*
deploy() {
    :;
}
# }} guix deploy

# {{ guix describe
# @cmd describe the channel revisions currently used
# @option -f --format     display information in the given FORMAT
# @flag --list-formats    display available formats
# @option -p --profile    display information about PROFILE
# @flag -h --help         display this help and exit
# @flag -V --version      display version information and exit
describe() {
    :;
}
# }} guix describe

# {{ guix gc
# @cmd invoke the garbage collector
# @option -C --collect-garbage <MIN>           collect at least MIN bytes of garbage
# @option -F --free-space <FREE>               attempt to reach FREE available space in the store
# @option -d --delete-generations <PATTERN>    delete profile generations matching PATTERN
# @flag -D --delete                            attempt to delete PATHS
# @flag --list-roots                           list the user's garbage collector roots
# @flag --list-busy                            list store items used by running processes
# @flag --optimize                             optimize the store by deduplicating identical files
# @flag --list-dead                            list dead paths
# @flag --list-live                            list live paths
# @flag --references                           list the references of PATHS
# @flag -R --requisites                        list the requisites of PATHS
# @flag --referrers                            list the referrers of PATHS
# @flag --derivers                             list the derivers of PATHS
# @option --verify <OPTS>                      verify the integrity of the store; OPTS is a comma-separated combination of 'repair' and 'contents'
# @flag --list-failures                        list cached build failures
# @flag --clear-failures                       remove PATHS from the set of cached failures
# @flag --vacuum-database                      repack the sqlite database tracking the store using less space
# @flag -h --help                              display this help and exit
# @flag -V --version                           display version information and exit
# @arg paths*
gc() {
    :;
}
# }} guix gc

# {{ guix home
# @cmd build and deploy home environments
# @option -L --load-path <DIR>            prepend DIR to the package module search path
# @flag -K --keep-failed                  keep build tree of failed builds
# @flag -k --keep-going                   keep going when some of the derivations fail
# @flag -n --dry-run                      do not build the derivations
# @flag --fallback                        fall back to building when the substituter fails
# @flag --no-substitutes                  build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>        fetch substitute from URLS if they are authorized
# @flag --no-grafts                       do not graft packages
# @flag --no-offload                      do not attempt to offload builds
# @option --max-silent-time <SECONDS>     mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>             mark the build as failed after SECONDS of activity
# @option --rounds <N>                    build N times in a row to detect non-determinism
# @option -c --cores <N>                  allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>               allow at most N build jobs
# @option --debug <LEVEL>                 produce debugging output at LEVEL
# @option -e --expression <EXPR>          consider the home-environment EXPR evaluates to instead of reading FILE, when applicable
# @flag --allow-downgrades                for 'reconfigure', allow downgrades to earlier channel revisions
# @flag -N --network                      allow containers to access the network
# @option --share <SPEC>                  for containers, share writable host file system according to SPEC
# @option --expose <SPEC>                 for containers, expose read-only host file system according to SPEC
# @option -v --verbosity <LEVEL>          use the given verbosity LEVEL
# @option --graph-backend <BACKEND>       use BACKEND for 'extension-graph' and 'shepherd-graph'
# @option -I --list-installed <REGEXP>    for 'describe' or 'list-generations', list installed packages matching REGEXP
# @flag -h --help                         display this help and exit
# @flag -V --version                      display version information and exit
# @arg action
# @arg arg*
# @arg file
home() {
    :;
}

# {{{ guix home search
# @cmd search for existing service types
home::search() {
    :;
}
# }}} guix home search

# {{{ guix home edit
# @cmd edit the definition of an existing service type
home::edit() {
    :;
}
# }}} guix home edit

# {{{ guix home container
# @cmd run the home environment configuration in a container
home::container() {
    :;
}
# }}} guix home container

# {{{ guix home reconfigure
# @cmd switch to a new home environment configuration
home::reconfigure() {
    :;
}
# }}} guix home reconfigure

# {{{ guix home roll-back
# @cmd switch to the previous home environment configuration
home::roll-back() {
    :;
}
# }}} guix home roll-back

# {{{ guix home describe
# @cmd describe the current home environment
home::describe() {
    :;
}
# }}} guix home describe

# {{{ guix home list-generations
# @cmd list the home environment generations
home::list-generations() {
    :;
}
# }}} guix home list-generations

# {{{ guix home switch-generation
# @cmd switch to an existing home environment configuration
home::switch-generation() {
    :;
}
# }}} guix home switch-generation

# {{{ guix home delete-generations
# @cmd delete old home environment generations
home::delete-generations() {
    :;
}
# }}} guix home delete-generations

# {{{ guix home build
# @cmd build the home environment without installing anything
home::build() {
    :;
}
# }}} guix home build

# {{{ guix home import
# @cmd generates a home environment definition from dotfiles
home::import() {
    :;
}
# }}} guix home import

# {{{ guix home extension-graph
# @cmd emit the service extension graph
home::extension-graph() {
    :;
}
# }}} guix home extension-graph

# {{{ guix home shepherd-graph
# @cmd emit the graph of shepherd services
home::shepherd-graph() {
    :;
}
# }}} guix home shepherd-graph
# }} guix home

# {{ guix install
# @cmd install packages
# @option -p --profile                   use PROFILE instead of the user's default profile
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --help-transform                 list package transformation options not shown here
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg packages*[`_choice_package`]
install() {
    :;
}
# }} guix install

# {{ guix package
# @cmd manage packages and profiles
# @flag -i --install                            PACKAGE ... install PACKAGEs
# @option -e --install-from-expression <EXP>    install the package EXP evaluates to
# @option -f --install-from-file <FILE>         install the package that the code within FILE evaluates to
# @flag -r --remove                             PACKAGE ... remove PACKAGEs
# @option -u --upgrade <REGEXP>                 upgrade all the installed packages matching REGEXP
# @option -m --manifest <FILE>                  create a new profile generation with the manifest from FILE
# @option --do-not-upgrade <REGEXP>             do not upgrade any packages matching REGEXP
# @flag --roll-back                             roll back to the previous generation
# @option --search-paths <KIND>                 display needed environment variable definitions
# @option -l --list-generations <PATTERN>       list generations matching PATTERN
# @option -d --delete-generations <PATTERN>     delete generations matching PATTERN
# @option -S --switch-generation <PATTERN>      switch to a generation matching PATTERN
# @flag --export-manifest                       print a manifest for the chosen profile
# @flag --export-channels                       print channels for the chosen profile
# @option -p --profile                          use PROFILE instead of the user's default profile
# @flag --list-profiles                         list the user's profiles
# @flag --allow-collisions                      do not treat collisions in the profile as an error
# @flag --bootstrap                             use the bootstrap Guile to build the profile
# @option -v --verbosity <LEVEL>                use the given verbosity LEVEL
# @option -s --search <REGEXP>                  search in synopsis and description using REGEXP
# @option -I --list-installed <REGEXP>          list installed packages matching REGEXP
# @option -A --list-available <REGEXP>          list available packages matching REGEXP
# @option --show <PACKAGE>                      show details about PACKAGE
# @option -L --load-path <DIR>                  prepend DIR to the package module search path
# @flag -K --keep-failed                        keep build tree of failed builds
# @flag -k --keep-going                         keep going when some of the derivations fail
# @flag -n --dry-run                            do not build the derivations
# @flag --fallback                              fall back to building when the substituter fails
# @flag --no-substitutes                        build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>              fetch substitute from URLS if they are authorized
# @flag --no-grafts                             do not graft packages
# @flag --no-offload                            do not attempt to offload builds
# @option --max-silent-time <SECONDS>           mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>                   mark the build as failed after SECONDS of activity
# @option --rounds <N>                          build N times in a row to detect non-determinism
# @option -c --cores <N>                        allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>                     allow at most N build jobs
# @option --debug <LEVEL>                       produce debugging output at LEVEL
# @flag --help-transform                        list package transformation options not shown here
# @flag -h --help                               display this help and exit
# @flag -V --version                            display version information and exit
package() {
    :;
}
# }} guix package

# {{ guix pull
# @cmd pull the latest revision of Guix
# @option -C --channels <FILE>                 deploy the channels defined in FILE
# @option --url                                download "guix" channel from the Git repository at URL
# @option --commit                             download the specified "guix" channel COMMIT
# @option --branch                             download the tip of the specified "guix" channel BRANCH
# @flag --allow-downgrades                     allow downgrades to earlier channel revisions
# @flag --disable-authentication               disable channel authentication
# @flag -N --news                              display news compared to the previous generation
# @option -l --list-generations <PATTERN>      list generations matching PATTERN
# @flag --details                              show details when listing generations
# @flag --roll-back                            roll back to the previous generation
# @option -d --delete-generations <PATTERN>    delete generations matching PATTERN
# @option -S --switch-generation <PATTERN>     switch to a generation matching PATTERN
# @option -p --profile                         use PROFILE instead of ~/.config/guix/current
# @option -v --verbosity <LEVEL>               use the given verbosity LEVEL
# @flag --bootstrap                            use the bootstrap Guile to build the new Guix
# @option -L --load-path <DIR>                 prepend DIR to the package module search path
# @flag -K --keep-failed                       keep build tree of failed builds
# @flag -k --keep-going                        keep going when some of the derivations fail
# @flag -n --dry-run                           do not build the derivations
# @flag --fallback                             fall back to building when the substituter fails
# @flag --no-substitutes                       build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>             fetch substitute from URLS if they are authorized
# @flag --no-grafts                            do not graft packages
# @flag --no-offload                           do not attempt to offload builds
# @option --max-silent-time <SECONDS>          mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>                  mark the build as failed after SECONDS of activity
# @option --rounds <N>                         build N times in a row to detect non-determinism
# @option -c --cores <N>                       allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>                    allow at most N build jobs
# @option --debug <LEVEL>                      produce debugging output at LEVEL
# @flag --list-systems                         list available systems
# @option -s --system                          attempt to build for SYSTEM--e.g., "i686-linux"
# @flag -h --help                              display this help and exit
# @flag -V --version                           display version information and exit
pull() {
    :;
}
# }} guix pull

# {{ guix remove
# @cmd remove installed packages
# @option -p --profile                   use PROFILE instead of the user's default profile
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg packages*[`_choice_installed_package`]
remove() {
    :;
}
# }} guix remove

# {{ guix search
# @cmd search for packages
# @flag -h --help                 display this help and exit
# @flag -V --version              display version information and exit
# @option -L --load-path <DIR>    prepend DIR to the package module search path
# @arg regexps*
search() {
    :;
}
# }} guix search

# {{ guix show
# @cmd show information about packages
# @flag -h --help                 display this help and exit
# @flag -V --version              display version information and exit
# @option -L --load-path <DIR>    prepend DIR to the package module search path
# @arg package*[`_choice_package`]
show() {
    :;
}
# }} guix show

# {{ guix system
# @cmd build and deploy full operating systems
# @option -L --load-path <DIR>            prepend DIR to the package module search path
# @flag -K --keep-failed                  keep build tree of failed builds
# @flag -k --keep-going                   keep going when some of the derivations fail
# @flag -n --dry-run                      do not build the derivations
# @flag --fallback                        fall back to building when the substituter fails
# @flag --no-substitutes                  build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>        fetch substitute from URLS if they are authorized
# @flag --no-grafts                       do not graft packages
# @flag --no-offload                      do not attempt to offload builds
# @option --max-silent-time <SECONDS>     mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>             mark the build as failed after SECONDS of activity
# @option --rounds <N>                    build N times in a row to detect non-determinism
# @option -c --cores <N>                  allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>               allow at most N build jobs
# @option --debug <LEVEL>                 produce debugging output at LEVEL
# @flag -d --derivation                   return the derivation of the given system
# @option -e --expression <EXPR>          consider the operating-system EXPR evaluates to instead of reading FILE, when applicable
# @flag --allow-downgrades                for 'reconfigure', allow downgrades to earlier channel revisions
# @option --on-error <STRATEGY>           apply STRATEGY (one of nothing-special, backtrace, or debug) when an error occurs while reading FILE
# @flag --list-image-types                list available image types
# @option -t --image-type <TYPE>          for 'image', produce an image of TYPE
# @option --image-size <SIZE>             for 'image', produce an image of SIZE
# @flag --no-bootloader                   for 'init', do not install a bootloader
# @flag --volatile                        for 'image', make the root file system volatile
# @flag --persistent                      for 'vm', make the root file system persistent
# @option --label                         for 'image', label disk image with LABEL
# @flag --save-provenance                 save provenance information
# @option --share <SPEC>                  for 'vm' and 'container', share host file system with read/write access according to SPEC
# @option --expose <SPEC>                 for 'vm' and 'container', expose host file system directory as read-only according to SPEC
# @flag -N --network                      for 'container', allow containers to access the network
# @option -r --root <FILE>                for 'vm', 'image', 'container' and 'build', make FILE a symlink to the result, and register it as a garbage collector root
# @flag --full-boot                       for 'vm', make a full boot sequence
# @flag --no-graphic                      for 'vm', use the tty that we are started in for IO
# @flag --skip-checks                     skip file system and initrd module safety checks
# @option -v --verbosity <LEVEL>          use the given verbosity LEVEL
# @option --graph-backend <BACKEND>       use BACKEND for 'extension-graph' and 'shepherd-graph'
# @option -I --list-installed <REGEXP>    for 'describe' and 'list-generations', list installed packages matching REGEXP
# @flag --list-targets                    list available targets
# @option --target <TRIPLET>              cross-build for TRIPLET--e.g., "aarch64-linux-gnu"
# @flag --list-systems                    list available systems
# @option -s --system                     attempt to build for SYSTEM--e.g., "i686-linux"
# @flag -h --help                         display this help and exit
# @flag -V --version                      display version information and exit
system() {
    :;
}

# {{{ guix system search
# @cmd search for existing service types
system::search() {
    :;
}
# }}} guix system search

# {{{ guix system edit
# @cmd edit the definition of an existing service type
system::edit() {
    :;
}
# }}} guix system edit

# {{{ guix system reconfigure
# @cmd switch to a new operating system configuration
system::reconfigure() {
    :;
}
# }}} guix system reconfigure

# {{{ guix system roll-back
# @cmd switch to the previous operating system configuration
system::roll-back() {
    :;
}
# }}} guix system roll-back

# {{{ guix system describe
# @cmd describe the current system
system::describe() {
    :;
}
# }}} guix system describe

# {{{ guix system list-generations
# @cmd list the system generations
system::list-generations() {
    :;
}
# }}} guix system list-generations

# {{{ guix system switch-generation
# @cmd switch to an existing operating system configuration
system::switch-generation() {
    :;
}
# }}} guix system switch-generation

# {{{ guix system delete-generations
# @cmd delete old system generations
system::delete-generations() {
    :;
}
# }}} guix system delete-generations

# {{{ guix system build
# @cmd build the operating system without installing anything
system::build() {
    :;
}
# }}} guix system build

# {{{ guix system container
# @cmd build a container that shares the host's store
system::container() {
    :;
}
# }}} guix system container

# {{{ guix system vm
# @cmd build a virtual machine image that shares the host's store
system::vm() {
    :;
}
# }}} guix system vm

# {{{ guix system image
# @cmd build a Guix System image
system::image() {
    :;
}
# }}} guix system image

# {{{ guix system docker-image
# @cmd build a Docker image
system::docker-image() {
    :;
}
# }}} guix system docker-image

# {{{ guix system init
# @cmd initialize a root file system to run GNU
system::init() {
    :;
}
# }}} guix system init

# {{{ guix system extension-graph
# @cmd emit the service extension graph in Dot format
system::extension-graph() {
    :;
}
# }}} guix system extension-graph

# {{{ guix system shepherd-graph
# @cmd emit the graph of shepherd services in Dot format
system::shepherd-graph() {
    :;
}
# }}} guix system shepherd-graph
# }} guix system

# {{ guix time-machine
# @cmd run commands from a different revision
# @option -C --channels <FILE>           deploy the channels defined in FILE
# @option --url                          use the Git repository at URL
# @option --commit                       use the specified COMMIT
# @option --branch                       use the tip of the specified BRANCH
# @flag --disable-authentication         disable channel authentication
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg command~[`_choice_time_machine_command`]
time-machine() {
    :;
}
# }} guix time-machine

# {{ guix upgrade
# @cmd upgrade packages to their latest version
# @option -p --profile                   use PROFILE instead of the user's default profile
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @option --do-not-upgrade <REGEXP>      do not upgrade any packages matching REGEXP
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --help-transform                 list package transformation options not shown here
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg regexp
upgrade() {
    :;
}
# }} guix upgrade

# {{ guix weather
# @cmd report on the availability of pre-built package binaries
# @option --substitute-urls <URLS>    check for available substitutes at URLS
# @option -m --manifest               look up substitutes for packages specified in MANIFEST
# @option -c --coverage <COUNT>       show substitute coverage for packages with at least COUNT dependents
# @flag --display-missing             display the list of missing substitutes
# @flag -h --help                     display this help and exit
# @flag -V --version                  display version information and exit
# @flag --list-systems                list available systems
# @option -s --system                 attempt to build for SYSTEM--e.g., "i686-linux"
# @arg packages*[`_choice_package`]
weather() {
    :;
}
# }} guix weather

# {{ guix container
# @cmd run code in containers created by 'guix environment -C'
# @flag -h --help       display this help and exit
# @flag -V --version    display version information and exit
container() {
    :;
}

# {{{ guix container exec
# @cmd execute a command inside of an existing container
# @flag -h --help       display this help and exit
# @flag -V --version    display version information and exit
# @arg pid[`_module_os_pid`]
# @arg command[`_module_os_command`]
# @arg args~[`_module_os_command_args`]
container::exec() {
    :;
}
# }}} guix container exec
# }} guix container

# {{ guix environment
# @cmd spawn one-off software environments (deprecated)
# @option -l --load <FILE>               create environment for the package that the code within FILE evaluates to
# @flag --ad-hoc                         include all specified packages in the environment instead of only their inputs
# @option -e --expression <EXPR>         create environment for the package that EXPR evaluates to
# @option -m --manifest <FILE>           create environment with the manifest from FILE
# @option -p --profile <PATH>            create environment from profile at PATH
# @flag --check                          check if the shell clobbers environment variables
# @flag --pure                           unset existing environment variables
# @option -E --preserve <REGEXP>         preserve environment variables that match REGEXP
# @flag --search-paths                   display needed environment variable definitions
# @option -r --root <FILE>               make FILE a symlink to the result, and register it as a garbage collector root
# @flag -C --container                   run command within an isolated container
# @flag -N --network                     allow containers to access the network
# @flag -P --link-profile                link environment profile to ~/.guix-profile within an isolated container
# @option -u --user                      instead of copying the name and home of the current user into an isolated container, use the name USER with home directory /home/USER
# @flag --no-cwd                         do not share current working directory with an isolated container
# @option --share <SPEC>                 for containers, share writable host file system according to SPEC
# @option --expose <SPEC>                for containers, expose read-only host file system according to SPEC
# @option -S --symlink <SPEC>            for containers, add symlinks to the profile according to SPEC, e.g. "/usr/bin/env=bin/env".
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @flag --bootstrap                      use bootstrap binaries to build the environment
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --list-systems                   list available systems
# @option -s --system                    attempt to build for SYSTEM--e.g., "i686-linux"
# @flag --help-transform                 list package transformation options not shown here
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg package*[`_choice_installed_package`]
environment() {
    :;
}
# }} guix environment

# {{ guix pack
# @cmd create application bundles
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --list-targets                   list available targets
# @option --target <TRIPLET>             cross-build for TRIPLET--e.g., "aarch64-linux-gnu"
# @flag --list-systems                   list available systems
# @option -s --system                    attempt to build for SYSTEM--e.g., "i686-linux"
# @flag --help-transform                 list package transformation options not shown here
# @flag --help-deb-format                list options specific to the deb format
# @option -f --format                    build a pack in the given FORMAT
# @flag --list-formats                   list the formats available
# @flag -R --relocatable                 produce relocatable executables
# @option -e --expression <EXPR>         consider the package EXPR evaluates to
# @option -C --compression <TOOL>        compress using TOOL--e.g., "lzip"
# @option -S --symlink <SPEC>            create symlinks to the profile according to SPEC
# @option -m --manifest <FILE>           create a pack with the manifest from FILE
# @option --entry-point <PROGRAM>        use PROGRAM as the entry point of the pack
# @flag --save-provenance                save provenance information
# @flag --localstatedir                  include /var/guix in the resulting pack
# @option --profile-name <NAME>          populate /var/guix/profiles/.../NAME
# @option -r --root <FILE>               make FILE a symlink to the result, and register it as a garbage collector root
# @flag -d --derivation                  return the derivation of the pack
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @flag --bootstrap                      use the bootstrap binaries to build the pack
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg package*[`_choice_package`]
pack() {
    :;
}
# }} guix pack

# {{ guix shell
# @cmd spawn one-off software environments
# @flag -D --development                 include the development inputs of the next package
# @option -f --file                      add to the environment the package FILE evaluates to
# @flag -q                               inhibit loading of 'guix.scm' and 'manifest.scm'
# @flag --rebuild-cache                  rebuild cached environment, if any
# @flag --export-manifest                print a manifest for the given options
# @flag -F --emulate-fhs                 for containers, emulate the Filesystem Hierarchy Standard (FHS)
# @option -e --expression <EXPR>         create environment for the package that EXPR evaluates to
# @option -m --manifest <FILE>           create environment with the manifest from FILE
# @option -p --profile <PATH>            create environment from profile at PATH
# @flag --check                          check if the shell clobbers environment variables
# @flag --pure                           unset existing environment variables
# @option -E --preserve <REGEXP>         preserve environment variables that match REGEXP
# @flag --search-paths                   display needed environment variable definitions
# @option -r --root <FILE>               make FILE a symlink to the result, and register it as a garbage collector root
# @flag -C --container                   run command within an isolated container
# @flag -N --network                     allow containers to access the network
# @flag -P --link-profile                link environment profile to ~/.guix-profile within an isolated container
# @option -u --user                      instead of copying the name and home of the current user into an isolated container, use the name USER with home directory /home/USER
# @flag --no-cwd                         do not share current working directory with an isolated container
# @option --share <SPEC>                 for containers, share writable host file system according to SPEC
# @option --expose <SPEC>                for containers, expose read-only host file system according to SPEC
# @option -S --symlink <SPEC>            for containers, add symlinks to the profile according to SPEC, e.g. "/usr/bin/env=bin/env".
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @flag --bootstrap                      use bootstrap binaries to build the environment
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --help-transform                 list package transformation options not shown here
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg packages*[`_choice_package`]
# @arg command*
shell() {
    :;
}
# }} guix shell

# {{ guix build
# @cmd build packages or derivations without installing them
# @option -e --expression <EXPR>         build the package or derivation EXPR evaluates to
# @option -f --file                      build the package or derivation that the code within FILE evaluates to
# @option -m --manifest <FILE>           build the packages that the manifest given in FILE evaluates to
# @flag -S --source                      build the packages' source derivations
# @option --sources <TYPE>               build source derivations; TYPE may optionally be one of "package", "all" (default), or "transitive"
# @flag -d --derivations                 return the derivation paths of the given packages
# @flag --check                          rebuild items to check for non-determinism issues
# @flag --repair                         repair the specified items
# @option -r --root <FILE>               make FILE a symlink to the result, and register it as a garbage collector root
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @flag -q --quiet                       do not show the build log
# @flag --log-file                       return the log file names for the given derivations
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --list-targets                   list available targets
# @option --target <TRIPLET>             cross-build for TRIPLET--e.g., "aarch64-linux-gnu"
# @flag --list-systems                   list available systems
# @option -s --system                    attempt to build for SYSTEM--e.g., "i686-linux"
# @flag --help-transform                 list package transformation options not shown here
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg package-or-derivation*[`_choice_package`]
build() {
    :;
}
# }} guix build

# {{ guix challenge
# @cmd challenge substitute servers, comparing their binaries
# @option --substitute-urls <URLS>    compare build results with those at URLS
# @flag -v --verbose                  show details about successful comparisons
# @option --diff <MODE>               show differences according to MODE
# @flag -h --help                     display this help and exit
# @flag -V --version                  display version information and exit
# @arg package*[`_choice_package`]
challenge() {
    :;
}
# }} guix challenge

# {{ guix download
# @cmd download a file to the store and print its hash
# @option -f --format <FMT>        write the hash in the given format
# @option -H --hash <ALGORITHM>    use the given hash ALGORITHM
# @flag --no-check-certificate     do not validate the certificate of HTTPS servers
# @option -o --output <FILE>       download to FILE
# @flag -h --help                  display this help and exit
# @flag -V --version               display version information and exit
# @arg url
download() {
    :;
}
# }} guix download

# {{ guix edit
# @cmd view and edit package definitions
# @option -L --load-path <DIR>    prepend DIR to the package module search path
# @flag -h --help                 display this help and exit
# @flag -V --version              display version information and exit
# @arg package*[`_choice_package`]
edit() {
    :;
}
# }} guix edit

# {{ guix graph
# @cmd view and query package dependency graphs
# @option -b --backend <TYPE>       produce a graph with the given backend TYPE
# @flag --list-backends             list the available graph backends
# @option -t --type                 represent nodes of the given TYPE
# @flag --list-types                list the available graph types
# @option -M --max-depth <DEPTH>    limit to nodes within distance DEPTH
# @flag --path                      display the shortest path between the given nodes
# @option -e --expression <EXPR>    consider the package EXPR evaluates to
# @option -L --load-path <DIR>      prepend DIR to the package module search path
# @flag --help-transform            list package transformation options not shown here
# @flag -h --help                   display this help and exit
# @flag -V --version                display version information and exit
# @flag --list-systems              list available systems
# @option -s --system               attempt to build for SYSTEM--e.g., "i686-linux"
# @arg package*[`_choice_package`]
graph() {
    :;
}
# }} guix graph

# {{ guix hash
# @cmd compute the cryptographic hash of a file
# @flag -x --exclude-vcs            exclude version control directories
# @option -H --hash <ALGORITHM>     use the given hash ALGORITHM
# @option -f --format <FMT>         write the hash in the given format
# @option -S --serializer <TYPE>    compute the hash on FILE according to TYPE serialization
# @flag -h --help                   display this help and exit
# @flag -V --version                display version information and exit
# @arg file
hash() {
    :;
}
# }} guix hash

# {{ guix import
# @cmd import a package definition from an external repository
# @flag -h --help       display this help and exit
# @flag -V --version    display version information and exit
import() {
    :;
}

# {{{ guix import gnu
# @cmd
import::gnu() {
    :;
}
# }}} guix import gnu

# {{{ guix import pypi
# @cmd
import::pypi() {
    :;
}
# }}} guix import pypi

# {{{ guix import cpan
# @cmd
import::cpan() {
    :;
}
# }}} guix import cpan

# {{{ guix import hackage
# @cmd
import::hackage() {
    :;
}
# }}} guix import hackage

# {{{ guix import stackage
# @cmd
import::stackage() {
    :;
}
# }}} guix import stackage

# {{{ guix import egg
# @cmd
import::egg() {
    :;
}
# }}} guix import egg

# {{{ guix import elpa
# @cmd
import::elpa() {
    :;
}
# }}} guix import elpa

# {{{ guix import gem
# @cmd
import::gem() {
    :;
}
# }}} guix import gem

# {{{ guix import go
# @cmd
import::go() {
    :;
}
# }}} guix import go

# {{{ guix import cran
# @cmd
import::cran() {
    :;
}
# }}} guix import cran

# {{{ guix import crate
# @cmd
import::crate() {
    :;
}
# }}} guix import crate

# {{{ guix import texlive
# @cmd
import::texlive() {
    :;
}
# }}} guix import texlive

# {{{ guix import json
# @cmd
import::json() {
    :;
}
# }}} guix import json

# {{{ guix import opam
# @cmd
import::opam() {
    :;
}
# }}} guix import opam

# {{{ guix import minetest
# @cmd
import::minetest() {
    :;
}
# }}} guix import minetest

# {{{ guix import elm
# @cmd
import::elm() {
    :;
}
# }}} guix import elm

# {{{ guix import hexpm
# @cmd
import::hexpm() {
    :;
}
# }}} guix import hexpm
# }} guix import

# {{ guix lint
# @cmd validate package definitions
# @option -c --checkers* <CHECKER1,CHECKER2>    only run the specified checkers
# @option -x --exclude* <CHECKER1,CHECKER2>     exclude the specified checkers
# @flag -n --no-network                         only run checkers that do not access the network
# @option -e --expression <EXPR>                consider the package EXPR evaluates to
# @option -L --load-path <DIR>                  prepend DIR to the package module search path
# @flag -h --help                               display this help and exit
# @flag -l --list-checkers                      display the list of available lint checkers
# @flag -V --version                            display version information and exit
# @arg package*[`_choice_package`]
lint() {
    :;
}
# }} guix lint

# {{ guix publish
# @cmd publish build results over HTTP
# @option -p --port                          listen on PORT
# @option --listen <HOST>                    listen on the network interface for HOST
# @option -u --user                          change privileges to USER as soon as possible
# @flag -a --advertise                       advertise on the local network
# @option -C --compression <METHOD:LEVEL>    compress archives with METHOD at LEVEL
# @option -c --cache <DIRECTORY>             cache published items to DIRECTORY
# @option --cache-bypass-threshold <SIZE>    serve store items below SIZE even when not cached
# @option --workers <N>                      use N workers to bake items
# @option --ttl                              announce narinfos can be cached for TTL seconds
# @option --negative-ttl <TTL>               announce missing narinfos can be cached for TTL seconds
# @option --nar-path <PATH>                  use PATH as the prefix for nar URLs
# @option --public-key <FILE>                use FILE as the public key for signatures
# @option --private-key <FILE>               use FILE as the private key for signatures
# @option -r --repl <PORT>                   spawn REPL server on PORT
# @flag -h --help                            display this help and exit
# @flag -V --version                         display version information and exit
publish() {
    :;
}
# }} guix publish

# {{ guix refresh
# @cmd update existing package definitions
# @option -e --expression <EXPR>     consider the package EXPR evaluates to
# @flag -u --update                  update source files in place
# @option -s --select <SUBSET>       select all the packages in SUBSET, one of `core' or `non-core'
# @option -m --manifest <FILE>       select all the packages from the manifest in FILE
# @option -t --type* <UPDATER,>      restrict to updates from the specified updaters (e.g., 'gnu')
# @flag --list-updaters              list available updaters and exit
# @flag -l --list-dependent          list top-level dependent packages that would need to be rebuilt as a result of upgrading PACKAGE...
# @flag -r --recursive               check the PACKAGE and its inputs for upgrades
# @flag --list-transitive            list all the packages that PACKAGE depends on
# @option --keyring <FILE>           use FILE as the keyring of upstream OpenPGP keys
# @option --key-server <HOST>        use HOST as the OpenPGP key server
# @option --gpg <COMMAND>            use COMMAND as the GnuPG 2.x command
# @option --key-download <POLICY>    handle missing OpenPGP keys according to POLICY: 'always', 'never', and 'interactive', which is also used when 'key-download' is not specified
# @option -L --load-path <DIR>       prepend DIR to the package module search path
# @flag -h --help                    display this help and exit
# @flag -V --version                 display version information and exit
# @arg package*[`_choice_package`]
refresh() {
    :;
}
# }} guix refresh

# {{ guix size
# @cmd profile the on-disk size of packages
# @option --substitute-urls <URLS>    fetch substitute from URLS if they are authorized
# @option --sort <KEY>                sort according to KEY--"closure" or "self"
# @option -m --map-file <FILE>        write to FILE a graphical map of disk usage
# @option -L --load-path <DIR>        prepend DIR to the package module search path
# @flag -h --help                     display this help and exit
# @flag -V --version                  display version information and exit
# @flag --list-systems                list available systems
# @option -s --system                 attempt to build for SYSTEM--e.g., "i686-linux"
# @arg package-store-item <PACKAGE|STORE-ITEM>
size() {
    :;
}
# }} guix size

# {{ guix style
# @cmd update the style of package definitions
# @option -S --styling <RULE>                apply RULE, a styling rule
# @flag -l --list-stylings                   display the list of available style rules
# @flag -n --dry-run                         display files that would be edited but do nothing
# @option -L --load-path <DIR>               prepend DIR to the package module search path
# @option -e --expression <EXPR>             consider the package EXPR evaluates to
# @option --input-simplification <POLICY>    follow POLICY for package input simplification, one of 'silent', 'safe', or 'always'
# @flag -f --whole-file                      format the entire contents of the given file(s)
# @flag -h --help                            display this help and exit
# @flag -V --version                         display version information and exit
# @arg package*[`_choice_package`]
style() {
    :;
}
# }} guix style

# {{ guix archive
# @cmd manipulate, export, and import normalized archives (nars)
# @flag --export                         export the specified files/packages to stdout
# @flag -r --recursive                   combined with '--export', include dependencies
# @flag --import                         import from the archive passed on stdin
# @flag --missing                        print the files from stdin that are missing
# @option -x --extract <DIR>             extract the archive on stdin to DIR
# @flag -t --list                        list the files in the archive on stdin
# @option --generate-key <PARAMETERS>    generate a key pair with the given parameters
# @flag --authorize                      authorize imports signed by the public key on stdin
# @option -e --expression <EXPR>         build the package or derivation EXPR evaluates to
# @flag -S --source                      build the packages' source derivations
# @option -v --verbosity <LEVEL>         use the given verbosity LEVEL
# @option -L --load-path <DIR>           prepend DIR to the package module search path
# @flag -K --keep-failed                 keep build tree of failed builds
# @flag -k --keep-going                  keep going when some of the derivations fail
# @flag -n --dry-run                     do not build the derivations
# @flag --fallback                       fall back to building when the substituter fails
# @flag --no-substitutes                 build instead of resorting to pre-built substitutes
# @option --substitute-urls <URLS>       fetch substitute from URLS if they are authorized
# @flag --no-grafts                      do not graft packages
# @flag --no-offload                     do not attempt to offload builds
# @option --max-silent-time <SECONDS>    mark the build as failed after SECONDS of silence
# @option --timeout <SECONDS>            mark the build as failed after SECONDS of activity
# @option --rounds <N>                   build N times in a row to detect non-determinism
# @option -c --cores <N>                 allow the use of up to N CPU cores for the build
# @option -M --max-jobs <N>              allow at most N build jobs
# @option --debug <LEVEL>                produce debugging output at LEVEL
# @flag --list-targets                   list available targets
# @option --target <TRIPLET>             cross-build for TRIPLET--e.g., "aarch64-linux-gnu"
# @flag --list-systems                   list available systems
# @option -s --system                    attempt to build for SYSTEM--e.g., "i686-linux"
# @flag -h --help                        display this help and exit
# @flag -V --version                     display version information and exit
# @arg package*[`_choice_package`]
archive() {
    :;
}
# }} guix archive

# {{ guix copy
# @cmd copy store items remotely over SSH
copy() {
    :;
}
# }} guix copy

# {{ guix git
# @cmd operate on Git repositories
# @flag -h --help       display this help and exit
# @flag -V --version    display version information and exit
git() {
    :;
}

# {{{ guix git authenticate
# @cmd verify commit signatures and authorizations
# @option -r --repository <DIRECTORY>           open the Git repository at DIRECTORY
# @option -k --keyring <REFERENCE>              load keyring from REFERENCE, a Git branch
# @flag --stats                                 display commit signing statistics upon completion
# @option --cache-key <KEY>                     cache authenticated commits under KEY
# @option --historical-authorizations <FILE>    read historical authorizations from FILE
# @flag -h --help                               display this help and exit
# @flag -V --version                            display version information and exit
# @arg commit
# @arg signer
git::authenticate() {
    :;
}
# }}} guix git authenticate
# }} guix git

# {{ guix offload
# @cmd set up and operate build offloading
# @arg system
# @arg max-silent-time
# @arg print-build-trace <PRINT-BUILD-TRACE?>
# @arg build-timeout
offload() {
    :;
}
# }} guix offload

# {{ guix processes
# @cmd list currently running sessions
# @flag -h --help         display this help and exit
# @flag -V --version      display version information and exit
# @option -f --format     display results as normalized record sets
# @flag --list-formats    display available formats
processes() {
    :;
}
# }} guix processes

# {{ guix repl
# @cmd read-eval-print loop (REPL) for interactive programming
# @option -t --type               start a REPL of the given TYPE
# @option --listen <ENDPOINT>     listen to ENDPOINT instead of standard input
# @flag -q                        inhibit loading of ~/.guile
# @option -L --load-path <DIR>    prepend DIR to the package module search path
# @flag -h --help                 display this help and exit
# @flag -V --version              display version information and exit
# @arg file-args* <FILE ARGS>
repl() {
    :;
}
# }} guix repl

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_package() {
    guix package -A
}

_choice_installed_package() {
    guix package -I
}

_choice_time_machine_command() {
    _argc_util_comp_subcommand 0 guix
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

_module_os_command_args() {
    _argc_util_comp_subcommand 0
}

_module_os_pid() {
    if [[ "$ARGC_OS" == "windows" ]]; then
        tasklist /nh /fo csv | gawk -F ',' '{ gsub("\"", "", $2); gsub("\"", "", $1); print $2 "\t" $1 }'
    elif [[ "$ARGC_OS" == "macos" ]]; then
        command ps -eo pid,comm | tail -n +2 | gawk '{split($2, arr, "/"); print $1 "\t" arr[length(arr)]}'
    else
        command ps -eo pid,comm | tail -n +2 | sed -e 's/^ \+//' -e 's/ /\t/' 
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"