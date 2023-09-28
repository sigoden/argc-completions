#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag --all-architectures                      When verifying a code signature on code that has a universal ("fat") Mach-O binary, separately verify each architecture contained.
# @option -a --architecture <architecture>       When verifying or displaying signatures, explicitly select the Mach-O architecture given.
# @option --bundle-version <version-string>      When handling versioned bundles such as frameworks, explicitly specify the version to operate on.
# @flag --check-notarization                     When verifying the code at the path(s) given, force an online notarization check to see if a notarization ticket is available.
# @flag -d --display                             Display information about the code at the path(s) given.
# @option -D --detached <filename>               When signing, designates that a detached signature should be written to the specified file.
# @flag --deep                                   (DEPRECATED for signing as of macOS 13.0) When signing a bundle, specifies that nested code content such as helpers, frameworks, and plug-ins, should be recursively signed in turn.
# @flag --detached-database                      When signing, specifies that a detached signature should be generated as with the --detached option, but that the resulting signature should be written into a system database, from where it is made automatically available whenever apparently unsigned code is validated on the system.
# @flag -f --force                               When signing, causes codesign to replace any existing signature on the path(s) given.
# @flag --generate-entitlement-der               When signing, convert the supplied entitlements XML data to DER and embed the entitlements as both XML and DER in the signature.
# @flag -h --hosting                             Constructs and prints the hosting chain of a running program.
# @option -i --identifier <identifier>           During signing, explicitly specify the unique identifier string that is embedded in code signatures.
# @option -o --options* <flag,>                  During signing, specifies a set of option flags to be embedded in the code signature.
# @option -P --pagesize <pagesize>               Indicates the granularity of code signing.
# @flag --remove-signature                       Removes the current code signature from the path(s) given.
# @option -r --requirements <requirements>       During signing, indicates that internal requirements should be embedded in the code path(s) as specified.
# @option -R --test-requirement <requirement>    During verification, indicates that the path(s) given should be verified against the code requirement specified.
# @option -s --sign <identity>                   Sign the code at the path(s) given using this identity.
# @flag --verbose                                Sets (with a numeric value) or increments the verbosity level of output.
# @flag -v --verify                              Requests verification of code signatures.
# @flag --continue                               Instructs codesign to continue processing path arguments even if processing one fails.
# @flag --dryrun                                 During signing, performs almost all signing operations, but does not actually write the result anywhere.
# @option --entitlements <path>                  When signing, take the file at the given path and embed its contents in the signature as entitlement data.
# @flag --enforce-constraint-validity            When signing, require that any supplied constraints (e.g.  --launch-constraint-* or --library-constraint ) are structurally valid and contain only keys that are known on this version of macOS or properly use the $optional operator.
# @option --extract-certificates <prefix>        When displaying a signature, extract the certificates in the embedded certificate chain and write them to individual files.
# @option --file-list <path>                     When signing or displaying a signature, codesign writes to the given path a list of files that may have been modified as part of the signing process.
# @flag --ignore-resources                       During static validation, do not validate the contents of the code's resources.
# @option --keychain <filename>                  During signing, only search for the signing identity in the keychain file specified.
# @option --prefix <string>                      If no explicit unique identifier is specified (using the -i option), and if the implicitly generated identifier does not contain any dot (.) characters, then the given string is prefixed to the identifier before use.
# @option --preserve-metadata <list>             When re-signing code that is already signed, reuse some information from the old signature.
# @option --strict <options>                     When validating code, apply additional restrictions beyond the defaults.
# @option --timestamp <URL>                      During signing, requests that a timestamp authority server be contacted to authenticate the time of signing.
# @option --runtime-version <version>            During signing, when the runtime OPTION FLAG is set, explicitly specify the hardened runtime version stored in the code signature.
# @option --launch-constraint-self <path>        When signing, take the file at the given path and embed its contents in the signature as a launch constraint on this executable.
# @option --launch-constraint-parent <path>      When signing, take the file at the given path and embed its contents in the signature as a launch constraint on this executable's parent.
# @option --launch-constraint-responsible <path>  When signing, take the file at the given path and embed its contents in the signature as a launch constraint on this executable's responsible process.
# @option --library-constraint <path>            When signing, take the file at the given path and embed its contents in the signature as a constraint on the libraries this process can load.
# @flag --strip-disallowed-xattrs                When signing, strip xattrs (such as com.apple.FinderInfo and com.apple.ResourceFork) that could interfere with code signing.
# @flag --single-threaded-signing                When signing, use one thread for building the resource seal.
# @flag --validate-constraint                    Validate that the constraint plist(s) indicated by path(s) are structurally valid and contain only keys known on this OS version or keys that are properly wrapped with the $optional operator.

command eval "$(argc --argc-eval "$0" "$@")"