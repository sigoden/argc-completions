#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.



# {{ go bug
# @cmd start a bug report
bug() {
    :;
}
# }} go bug

# {{ go build
# @cmd compile packages and dependencies
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @arg path*
build() {
    :;
}
# }} go build

# {{ go clean
# @cmd remove object files and cached files
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @flag --cache                               remove the entire go build cache
# @flag --i                                   remove the corresponding installed archive or binary
# @flag --modcache                            remove the entire module download cache
# @flag --r                                   apply recursively to all the dependencies
# @flag --testcache                           expire all test results in the go build cache
clean() {
    :;
}
# }} go clean

# {{ go doc
# @cmd show documentation for package or symbol
# @flag -all      Show all the documentation for the package.
# @flag -c        Respect case when matching symbols.
# @flag -cmd      Treat a command (package main) like a regular package.
# @flag -short    One-line representation for each symbol.
# @flag -src      Show the full source code for the symbol.
# @flag -u        Show documentation for unexported as well as exported symbols, methods, and fields.
doc() {
    :;
}
# }} go doc

# {{ go env
# @cmd print Go environment information
# @flag -json           print the environment in JSON format
# @flag -u              unsets the default setting for the named environment variables
# @option -w <value>    changes the default settings of the named environment variables
# @arg env*[`_choice_env`]
env() {
    :;
}
# }} go env

# {{ go fix
# @cmd update packages to use new APIs
# @arg packages*
fix() {
    :;
}
# }} go fix

# {{ go fmt
# @cmd gofmt (reformat) package sources
# @option -mod[readonly|vendor|mod]    set module download mode
# @flag -n                             print commands that would be executed
# @flag -x                             print commands as they are executed
# @arg path*
fmt() {
    :;
}
# }} go fmt

# {{ go generate
# @cmd generate Go files by processing source
# @option -run     if non-empty, specifies a regular expression to select directives whose full original source text (excluding any trailing spaces and final newline) matches the expression.
# @option -skip    if non-empty, specifies a regular expression to suppress directives whose full original source text (excluding any trailing spaces and final newline) matches the expression.
# @flag -n         print commands that would be executed
# @flag -v         print the names of packages and files as they are processed
# @flag -x         print commands as they are executed
# @arg file-go! <file:.go>
generate() {
    :;
}
# }} go generate

# {{ go get
# @cmd add dependencies to current module and install them
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @flag -d                                    only download the source code needed to build
# @flag -insecure                             permit using insecure schemes such as HTTP
# @flag -t                                    consider modules needed to build tests
# @flag -u                                    update modules providing dependencies
get() {
    :;
}
# }} go get

# {{ go install
# @cmd compile and install packages and dependencies
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @flag -i                                    install the packages that are dependencies of the target
# @option -o <file>                           set output file or directory
install() {
    :;
}
# }} go install

# {{ go list
# @cmd list packages or modules
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @flag -compiled                             set CompiledGoFiles to the Go source files presented to the compiler
# @flag -deps                                 iterate over not just the named packages but also all their dependencies
# @flag -e                                    change the handling of erroneous packages
# @flag -export                               set the Export field to the name of a file containing up-to-date export information
# @option -f <value>                          specify an alternate format for the list
# @flag -find                                 identify the named packages but not resolve their dependencies
# @flag -json                                 print package data in JSON format
# @flag -m                                    list modules instead of packages
# @flag -test                                 report not only the named packages but also their test binaries
# @flag -u                                    add information about available upgrades
# @flag -versions                             set the Module's Versions field to list of all known versions
list() {
    :;
}
# }} go list

# {{ go mod
# @cmd module maintenance
mod() {
    :;
}

# {{{ go mod download
# @cmd download modules to local cache
# @flag -json    print a sequence of JSON objects
# @flag -x       print the commands download executes
# @arg modules*[`_choice_mod`]
mod::download() {
    :;
}
# }}} go mod download

# {{{ go mod edit
# @cmd edit go.mod from tools or scripts
# @option -dropexclude[`_choice_mod_dropexclude`] <value>  drop an exclusion
# @option -dropreplace[`_choice_mod_dropreplace`] <value>  drop a module replacement
# @option -droprequire[`_choice_mod_droprequire`] <value>  drop a requirement
# @option -exclude <value>    add an exclusion
# @flag -fmt                  reformats the go.mod file without making other changes
# @option -go <value>         set the expected Go language version
# @flag -json                 print the final go.mod file in JSON format instead instead of writing back
# @option -module <path>      changes the module's path
# @flag -print                print the final go.mod in its text format instead of writing back
# @option -replace[`_choice_mod_replace`] <value>  add a module replacement
# @option -require <value>    add a requirement
# @arg modfile <file:go.mod>
mod::edit() {
    :;
}
# }}} go mod edit

# {{{ go mod graph
# @cmd print module requirement graph
mod::graph() {
    :;
}
# }}} go mod graph

# {{{ go mod init
# @cmd initialize new module in current directory
# @arg module-path
mod::init() {
    :;
}
# }}} go mod init

# {{{ go mod tidy
# @cmd add missing and remove unused modules
# @option -compat <value>    preserve additional checksums needed for given version
# @flag -e                   attempt to proceed despite errors
# @option -go <value>        update the 'go' directive to given version
# @flag -v                   print information about removed modules
mod::tidy() {
    :;
}
# }}} go mod tidy

# {{{ go mod vendor
# @cmd make vendored copy of dependencies
# @flag -v    print the names of vendored modules and packages
mod::vendor() {
    :;
}
# }}} go mod vendor

# {{{ go mod verify
# @cmd verify dependencies have expected content
mod::verify() {
    :;
}
# }}} go mod verify

# {{{ go mod why
# @cmd explain why packages or modules are needed
# @flag -m         treat arguments as a list of modules
# @flag -vendor    exclude tests of dependencies
# @arg packages*[`_choice_mod_why`]
mod::why() {
    :;
}
# }}} go mod why
# }} go mod

# {{ go work
# @cmd workspace maintenance
work() {
    :;
}

# {{{ go work edit
# @cmd edit go.work from tools or scripts
# @option -dropreplace*|[`_choice_work_dropreplace`] <value>  drop a replacement
# @option -dropuse*|[`_choice_work_dropuse`] <value>  drop a use directive
# @flag -fmt              reformat the go.work file without making other changes
# @option -go <value>     set the expected Go language version
# @flag -json             print the final go.work in JSON format
# @flag -print            print the final go.work in its text format
# @option -replace*|[`_choice_work_replace`] <value>  add a replacement
# @option -use* <file>    add a use directive
# @arg workfile <file:go.work>
work::edit() {
    :;
}
# }}} go work edit

# {{{ go work init
# @cmd initialize workspace file
# @arg moddirs*
work::init() {
    :;
}
# }}} go work init

# {{{ go work sync
# @cmd sync workspace build list to modules
work::sync() {
    :;
}
# }}} go work sync

# {{{ go work use
# @cmd add modules to workspace file
# @flag -r    recursively for modules in the argument directories
work::use() {
    :;
}
# }}} go work use
# }} go work

# {{ go run
# @cmd compile and run Go program
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @option -exec <xprog>                       invoke the binary using xprog
run() {
    :;
}
# }} go run

# {{ go test
# @cmd test packages
# @option -C <dir>                            Change to dir before running the command.
# @flag -a                                    force rebuilding of packages that are already up-to-date.
# @flag -n                                    print the commands but do not run them.
# @option -p <n>                              the number of programs, such as build commands or test binaries, that can be run in parallel.
# @flag -race                                 enable data race detection.
# @flag -msan                                 enable interoperation with memory sanitizer.
# @flag -asan                                 enable interoperation with address sanitizer.
# @flag -cover                                enable code coverage instrumentation.
# @option -covermode <set,count,atomic>       set the mode for coverage analysis.
# @option -coverpkg <pattern1,pattern2,pattern3>  For a build that targets package 'main' (e.g. building a Go executable), apply coverage analysis to each package matching the patterns.
# @flag -v                                    print the names of packages as they are compiled.
# @flag -work                                 print the name of the temporary work directory and do not delete it when exiting.
# @flag -x                                    print the commands.
# @option -asmflags <[pattern=]arg list>      arguments to pass on each go tool asm invocation.
# @option -buildmode[`_choice_buildmode`] <mode>  build mode to use.
# @option -buildvcs[true|false|auto]          Whether to stamp binaries with version control information ("true", "false", or "auto").
# @option -compiler[gccgo|gc] <name>          name of compiler to use, as in runtime.Compiler (gccgo or gc).
# @option -gccgoflags <[pattern=]arg list>    arguments to pass on each gccgo compiler/linker invocation.
# @option -gcflags <[pattern=]arg list>       arguments to pass on each go tool compile invocation.
# @option -installsuffix <suffix>             a suffix to use in the name of the package installation directory, in order to keep output separate from default builds.
# @option -ldflags <[pattern=]arg list>       arguments to pass on each go tool link invocation.
# @flag -linkshared                           build code that will be linked against shared libraries previously created with -buildmode=shared.
# @option -mod[readonly|vendor|mod] <mode>    module download mode to use: readonly, vendor, or mod.
# @flag -modcacherw                           leave newly-created directories in the module cache read-write instead of making them read-only.
# @option -modfile <file>                     in module aware mode, read (and possibly write) an alternate go.mod file instead of the one in the module root directory.
# @option -overlay <file:.json>               read a JSON config file that provides an overlay for build operations.
# @option -pgo <file:.pgo>                    specify the file path of a profile for profile-guided optimization (PGO).
# @option -pkgdir <dir>                       install and load all packages from dir instead of the usual locations.
# @option -tags <tag,list>                    a comma-separated list of additional build tags to consider satisfied during the build.
# @flag -trimpath                             remove all file system paths from the resulting executable.
# @option -toolexec <cmd args>                a program to use to invoke toolchain programs like vet and asm.
# @flag -args                                 Pass the remainder of the command line (everything after -args) to the test binary, uninterpreted and unchanged.
# @flag -c                                    Compile the test binary to pkg.test in the current directory but do not run it (where pkg is the last element of the package's import path).
# @option -exec <xprog>                       Run the test binary using xprog.
# @flag -json                                 Convert test output to JSON suitable for automated processing.
# @option -o <file>                           Compile the test binary to the named file.
# @option -bench*|[`_choice_bench_target`] <value>  run only those benchmarks matching a regular expression
# @option -benchtime <value>                  Run enough iterations of each benchmark to take given duration
# @option -count <value>                      run each test and benchmark n times
# @flag -cpu                                  specify a list of GOMAXPROCS values for which the tests or benchmarks should be executed
# @flag -failfast                             Do not start new tests after the first test failure
# @flag -i                                    install packages that are dependencies of the test
# @option -list <value>                       list tests, benchmarks, or examples matching the regular expression
# @option -parallel <value>                   Allow parallel execution of test functions that call t.Paralle
# @option -run <value>                        run only those tests and examples matching the regular expression
# @flag -short                                tell long-running tests to shorten their run time
# @option -timeout <value>                    if a test binary runs longer than duration d, panic
# @option -vet <value>                        configure the invocation of "go vet" during "go test" to use the comma-separated list of vet check
# @arg target*|[`_choice_test_target`]
test() {
    :;
}
# }} go test

# {{ go tool
# @cmd run specified go tool
# @flag -n    only print the command that would be executed
# @arg name[`_choice_tool`]
# @arg args*
tool() {
    :;
}
# }} go tool

# {{ go version
# @cmd print Go version
# @flag -m    print each executable's embedded module version information
# @flag -v    report unrecognized files
# @arg file*
version() {
    :;
}
# }} go version

# {{ go vet
# @cmd report likely mistakes in packages
# @flag -n    print commands that would be executed
# @flag -x    print commands as they are executed
vet() {
    :;
}
# }} go vet

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_buildmode() {
    cat <<-'EOF'
archive
c-archive
c-shared
default
shared
exe
pie
plugin
EOF
}

_choice_env() {
    go env --json | yq 'to_entries | map(.key + "	" + .value) | .[]'
}

_choice_mod() {
    _helper_mod_json | yq '(.Require // []) | map(.Path + "@" + .Version) | .[]'
}

_choice_mod_dropexclude() {
    _helper_mod_json | yq '(.Exclude // []) | map(.Path + "@" + .Version) | .[]'
}

_choice_mod_dropreplace() {
    _helper_mod_json | yq '(.Replace // []) | .[].Old.Path'
}

_choice_mod_droprequire() {
    _helper_mod_json | yq '(.Require // []) | filter(.Indirect != true) | .[].Path'
}

_choice_mod_replace() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _choice_mod_no_version | _argc_util_transform suffix== nospace
    else
        if [[ -f "$argc_modfile" ]]; then
            chdir="$(dirname "$argc_modfile")"
        else
            chdir="$(_argc_util_path_search_parent -p go.mod)"
        fi
        _argc_util_comp_path cd="$chdir" filter="$argc__kv_filter"
    fi
}

_choice_mod_why() {
    _argc_util_parallel _choice_mod_no_version ::: _helper_list_imports
}

_choice_work_dropreplace() {
    _helper_work_json  | \
    yq '.Replace | .[] | with(select(.New | has("Version")); .New.Path = .New.Path + "@" + .New.Version) | .Old.Path + "	" + .New.Path'
}

_choice_work_dropuse() {
    _helper_work_json  | yq '(.Use // []) | .[].DiskPath'
}

_choice_work_replace() {
    _argc_util_mode_kv =
    if [[ -f "$argc_workfile" ]]; then
        root_dir="$(dirname "$argc_workfile")"
    else
        root_dir="$(_argc_util_path_search_parent -p go.work)"
    fi
    if [[ -z "$argc__kv_prefix" ]]; then
        while IFS=$'\n' read -r disk_path; do
            mod_path="$(_argc_util_path_resolve "$root_dir" "$disk_path")"
            (cd "$mod_path" && _choice_mod_no_version | _argc_util_transform suffix==)
        done < <(_choice_work_dropuse)
    else
        _argc_util_comp_path cd="$root_dir" filter="$argc__kv_filter"
    fi
}

_choice_bench_target() {
    go test -list='^Bench' 2>/dev/null | sed '$d'
}

_choice_test_target() {
    go test -list='^(Test|Example)' 2>/dev/null | sed '$d'
}

_choice_tool() {
    go tool
}

_choice_mod_no_version() {
    _helper_mod_json | yq '(.Require // []) | .[].Path'
}

_helper_list_imports() {
     go list -f "{{.ImportPath}}	{{.Doc}}" all
}

_helper_mod_json() {
    local args=()
    if [[ -f "$argc_modfile" ]]; then
        args+=( "$argc_modfile" )
    fi
    go mod edit -json "${args[@]}" 2>/dev/null
}

_helper_work_json() {
    local args=()
    if [[ -f "$argc_workfile" ]]; then
        args+=( "$argc_workfile" )
    fi
    go work edit -json "${args[@]}" 2>/dev/null
}

command eval "$(argc --argc-eval "$0" "$@")"