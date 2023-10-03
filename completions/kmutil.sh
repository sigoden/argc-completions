#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Show help information.

# {{ kmutil create
# @cmd Create one or more new artifacts based on the arguments provided.
# @option -V --variant-suffix <variant-suffix>     The image suffix to use for the kernel variant.
# @option -a --arch <arch>                         The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                      Skip approval checks for this action.
# @flag -v --verbose                               Toggle verbosity.
# @option -r --repository <repository>             Paths to directories containing extensions.
# @option -R --volume-root <volume-root>           The target volume.
# @option --build <build>                          (If known) The system build version number (default: nil)
# @option --sdk <sdk>                              The path to the sdk to use.
# @option --kdk <kdk>                              The path to the kdk to use.
# @option -f --filter <filter>                     Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option -F --filter-all <filter-all>             Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option --optional-identifier <optional-identifier>  Search for, and/or include this identifier in the results, if possible.
# @option --elide-identifier <elide-identifier>    Do not include this identifier in the results.
# @option -p --bundle-path <bundle-path>           Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @flag -L --no-system-collection                  If building an auxiliary collection, don't look for or generate a system collection.
# @option -s --strip <strip>                       The strip mode to use when creating new collections.
# @option -n --new <new>                           Which types of artifact to build.
# @option -k --kernel <kernel>                     The path to the kernel to use.
# @option --emit-macho-with-ext <emit-macho-with-ext>  Emit raw Mach-O files for each collection suffixed with the given extension (default: nil)
# @flag -x --explicit-only                         Only consider the bundle identifiers and paths explicitly specified, along with their dependencies.
# @flag --compress                                 Compress the collection using LZFSE.
# @flag --img4-encode                              Encode the collection in an img4 payload.
# @flag --split-ro-rx-tags                         Split RO RX region payload property tags for iBoot.
# @option -Z --authentication </--no-authentication>  Perform codesigning checks (local to this utility) for this action.
# @option -m --manifest <manifest>                 The source build manifest for kernel collection rebuilding (Apple Silicon only).
# @option -B --boot-path <boot-path>               The path to the boot kernel collection.
# @option -S --system-path <system-path>           The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>     The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections             Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                     Don't append the build variant as an extension to the collection path.
# @flag -u --update-all                            Rebuild all collections on a target volume, if the target is writable.
# @flag --force                                    Force a collection rebuild even if none of the contents has changed.
# @flag --allow-missing-kdk                        Force a collection rebuild even if a KDK matching the volume's build is not found.
# @flag --include-volume-kexts                     Include kexts installed on the ARV that are not included in the build manifest (Apple Silicon only).
# @flag -h --help                                  Show help information.
create() {
    :;
}
# }} kmutil create

# {{ kmutil rebuild
# @cmd Attempts an auxiliary kernel collection rebuild
# @flag -h --help    Show help information.
rebuild() {
    :;
}
# }} kmutil rebuild

# {{ kmutil load
# @cmd Load one or more extensions based on the arguments provided.
# @option -V --variant-suffix <variant-suffix>    The image suffix to use for the kernel variant.
# @option -a --arch <arch>                        The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                     Skip approval checks for this action.
# @flag -v --verbose                              Toggle verbosity.
# @option -r --repository <repository>            Paths to directories containing extensions.
# @option -R --volume-root <volume-root>          The target volume.
# @option --build <build>                         (If known) The system build version number (default: nil)
# @option --sdk <sdk>                             The path to the sdk to use.
# @option --kdk <kdk>                             The path to the kdk to use.
# @option -p --bundle-path <bundle-path>          Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @option -P --personality-name <personality-name>  If this kext is already loaded, send the named personality to the catalog.
# @flag -e --no-default-repositories              Don't use the default repositories for kexts.
# @option --load-style[start-only|match-only|start-and-match] <load-style>  The load style used when loading extensions: start-only, match-only, start-and-match.
# @flag -h --help                                 Show help information.
load() {
    :;
}
# }} kmutil load

# {{ kmutil unload
# @cmd Unload the named kexts and all personalities.
# @option -V --variant-suffix <variant-suffix>    The image suffix to use for the kernel variant.
# @option -a --arch <arch>                        The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                     Skip approval checks for this action.
# @flag -v --verbose                              Toggle verbosity.
# @option -c --class-name <class-name>            Terminate all instances of IOService class <class_name>, but do not unload its kext or unload its personalities.
# @flag -P --personalities-only                   Terminate services and remove personalities only; do not unload kexts.
# @option -p --bundle-path <bundle-path>          Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @flag -h --help                                 Show help information.
unload() {
    :;
}
# }} kmutil unload

# {{ kmutil log
# @cmd Display logging information about the KernelManagement subsystem.
# @flag -h --help    Show help information.
# @arg log-arguments+
log() {
    :;
}
# }} kmutil log

# {{ kmutil libraries
# @cmd Search for library kexts that define symbols needed for linking by a kernel extension.
# @option -V --variant-suffix <variant-suffix>     The image suffix to use for the kernel variant.
# @option -a --arch <arch>                         The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                      Skip approval checks for this action.
# @flag -v --verbose                               Toggle verbosity.
# @option -r --repository <repository>             Paths to directories containing extensions.
# @option -R --volume-root <volume-root>           The target volume.
# @option --build <build>                          (If known) The system build version number (default: nil)
# @option --sdk <sdk>                              The path to the sdk to use.
# @option --kdk <kdk>                              The path to the kdk to use.
# @option -p --bundle-path <bundle-path>           Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @option -f --filter <filter>                     Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option -F --filter-all <filter-all>             Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option --optional-identifier <optional-identifier>  Search for, and/or include this identifier in the results, if possible.
# @option --elide-identifier <elide-identifier>    Do not include this identifier in the results.
# @flag --all-symbols                              List all symbols; found, not found, or found more than once.
# @flag --onedef-symbols                           List all symbols found, with the library kext they were found in.
# @flag --multdef-symbols                          List all symbols found more than once, with their library kexts.
# @flag --undef-symbols                            List all symbols not found in any library.
# @flag -c --compatible-versions                   Use library kext compatble versions rather than current versions.
# @flag --unsupported                              Look in unsupported kexts for symbols.
# @flag --xml                                      Print XML fragment suitable for pasting.
# @option -B --boot-path <boot-path>               The path to the boot kernel collection.
# @option -S --system-path <system-path>           The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>     The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections             Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                     Don't append the build variant as an extension to the collection path.
# @flag -h --help                                  Show help information.
libraries() {
    :;
}
# }} kmutil libraries

# {{ kmutil dumpstate
# @cmd Dumps kernelmanagerd(8) state for debugging
# @flag -h --help    Show help information.
dumpstate() {
    :;
}
# }} kmutil dumpstate

# {{ kmutil inspect
# @cmd Inspect & display a kext collection's contents according to the options provided.
# @option -V --variant-suffix <variant-suffix>     The image suffix to use for the kernel variant.
# @option -a --arch <arch>                         The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                      Skip approval checks for this action.
# @flag -v --verbose                               Toggle verbosity.
# @flag --show-mach-header                         Print the mach header(s) in the collection(s).
# @flag --show-fileset-entries                     Print the fileset entries of the mach header(s) in the collection(s).
# @flag --show-kext-load-addresses                 Print the load addresses of each kext in the collection(s).
# @flag --show-kext-uuids                          Print the UUIDs of each kext in the collection(s).
# @flag --show-kernel-uuid                         Print the UUID of the kernel in the collection.
# @flag --show-kernel-uuid-only                    Print the UUID of the kernel in the collection, and suppress default kext information.
# @flag --no-header                                Don't show the header describing the collection the data came from.
# @flag --show-prelink-info                        Dump the __PRELINK_INFO section(s) of the collection(s).
# @flag --show-collection-metadata                 Print the metadata of the collection(s).
# @flag --show-mach-boot-properties                Print derived Mach-O boot properties
# @flag --show-extension-info                      Show extension information.
# @flag --json                                     Print the section layout of the collection(s) as JSON.
# @option -p --bundle-path <bundle-path>           Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @option -f --filter <filter>                     Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option -F --filter-all <filter-all>             Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option --optional-identifier <optional-identifier>  Search for, and/or include this identifier in the results, if possible.
# @option --elide-identifier <elide-identifier>    Do not include this identifier in the results.
# @option -B --boot-path <boot-path>               The path to the boot kernel collection.
# @option -S --system-path <system-path>           The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>     The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections             Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                     Don't append the build variant as an extension to the collection path.
# @flag -h --help                                  Show help information.
inspect() {
    :;
}
# }} kmutil inspect

# {{ kmutil clear-staging
# @cmd Clears all contents of the kext staging locations on the system
# @flag -h --help    Show help information.
clear-staging() {
    :;
}
# }} kmutil clear-staging

# {{ kmutil configure-boot
# @cmd Configure custom boot object policy (recovery-mode only)
# @option -c --custom-boot-object <custom-boot-object>  File to set as the custom boot object
# @flag -C --compress                    Compress the Mach-O payload
# @option -v --volume <volume>           Target volume to configure
# @flag -r --raw                         Treat boot object as a raw file to be installed with a custom entry point (--entry-point) and lowest virtual address (--lowest-virtual-address)
# @option --lowest-virtual-address <lowest-virtual-address>  Lowest virtual memory address (iBoot will map the raw boot object at this virtual address)
# @option --entry-point <entry-point>    Virtual memory address of entry point into the raw boot object
# @flag -h --help                        Show help information.
# @arg volume!
configure-boot() {
    :;
}
# }} kmutil configure-boot

# {{ kmutil find
# @cmd Find kexts available on the operating system.
# @option -V --variant-suffix <variant-suffix>     The image suffix to use for the kernel variant.
# @option -a --arch <arch>                         The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                      Skip approval checks for this action.
# @flag -v --verbose                               Toggle verbosity.
# @option -r --repository <repository>             Paths to directories containing extensions.
# @option -R --volume-root <volume-root>           The target volume.
# @option --build <build>                          (If known) The system build version number (default: nil)
# @option --sdk <sdk>                              The path to the sdk to use.
# @option --kdk <kdk>                              The path to the kdk to use.
# @option -B --boot-path <boot-path>               The path to the boot kernel collection.
# @option -S --system-path <system-path>           The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>     The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections             Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                     Don't append the build variant as an extension to the collection path.
# @option -p --bundle-path <bundle-path>           Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @option -f --filter <filter>                     Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option -F --filter-all <filter-all>             Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option --optional-identifier <optional-identifier>  Search for, and/or include this identifier in the results, if possible.
# @option --elide-identifier <elide-identifier>    Do not include this identifier in the results.
# @option --location <location>                    Default: 'bundle'.
# @flag -h --help                                  Show help information.
find() {
    :;
}
# }} kmutil find

# {{ kmutil showloaded
# @cmd Show the loaded state of the extensions on the system, according to the options provided.
# @option -V --variant-suffix <variant-suffix>     The image suffix to use for the kernel variant.
# @option -a --arch <arch>                         The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                      Skip approval checks for this action.
# @flag -v --verbose                               Toggle verbosity.
# @option -p --bundle-path <bundle-path>           Include the bundle specified at this path in the results.
# @option -b --bundle-identifier <bundle-identifier>  Search for, and/or include this identifier in the results.
# @option -f --filter <filter>                     Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option -F --filter-all <filter-all>             Filter results by the given predicate string, which specifies properties in an extension's Info.plist.
# @option --optional-identifier <optional-identifier>  Search for, and/or include this identifier in the results, if possible.
# @option --elide-identifier <elide-identifier>    Do not include this identifier in the results.
# @flag --show-mach-headers                        Show the Mach-O headers of the loaded extensions.
# @option --show <show>                            Restrict output to a specific load state.
# @option --collection <collection>                Restrict the load information to a particular collection kind.
# @flag --sort                                     Sort by load address of each extension, instead of by load tag.
# @flag --list-only                                Print the list only, omitting the column headers.
# @flag --arch-info                                Include the architecture info in output.
# @flag --no-kernel-components                     Omit kernel components from output.
# @flag --show-kernel                              Show kernel information in output.
# @flag -h --help                                  Show help information.
showloaded() {
    :;
}
# }} kmutil showloaded

# {{ kmutil trigger-panic-medic
# @cmd Delete and disable loading of third party kexts in order to safely boot into a target volume.
# @option -R --volume-root <volume-root>    The target volume to fix
# @flag -h --help                           Show help information.
# @arg volumes-volumename </Volumes/<VolumeName>`>
trigger-panic-medic() {
    :;
}
# }} kmutil trigger-panic-medic

# {{ kmutil check
# @cmd Check the consistency of kext collections against each other and/or load information in-kernel.
# @option --collection <collection>    Which types of artifact to check.
# @flag --collection-linkage           Check to see that the collections on the system are properly linked together.
# @flag --load-info                    Default: check to see that load info matches collections on disk.
# @flag --kernel-only                  When checking load info, just check the kernel UUID and nothing else.
# @flag -h --help                      Show help information.
check() {
    :;
}
# }} kmutil check

# {{ kmutil print-diagnostics
# @cmd Perform all possible tests on a specified kext, and indicate whether the kext is loadable.
# @option -p --bundle-path <bundle-path>          Print diagnostics for the bundle specified at this path (can be specified more than once).
# @flag -Z --no-resolve-dependencies              Don't resolve dependencies.
# @flag -D --diagnose-dependencies                Recursively diagnose dependencies.
# @flag --plugins                                 Recurse into the standard PlugIns directory and validate kext inside.
# @flag --do-staging                              Perform staging to SIP protected location (requires root).
# @option -V --variant-suffix <variant-suffix>    The image suffix to use for the kernel variant.
# @option -a --arch <arch>                        The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                     Skip approval checks for this action.
# @flag -v --verbose                              Toggle verbosity.
# @option -r --repository <repository>            Paths to directories containing extensions.
# @option -R --volume-root <volume-root>          The target volume.
# @option --build <build>                         (If known) The system build version number (default: nil)
# @option --sdk <sdk>                             The path to the sdk to use.
# @option --kdk <kdk>                             The path to the kdk to use.
# @option -B --boot-path <boot-path>              The path to the boot kernel collection.
# @option -S --system-path <system-path>          The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>    The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections            Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                    Don't append the build variant as an extension to the collection path.
# @flag -h --help                                 Show help information.
print-diagnostics() {
    :;
}
# }} kmutil print-diagnostics

# {{ kmutil emit-macho
# @cmd Unwrap and uncompress given kernel collections to emit raw Mach-O files
# @option -V --variant-suffix <variant-suffix>    The image suffix to use for the kernel variant.
# @option -a --arch <arch>                        The architecture to use for the extension(s)/collection(s) specified.
# @flag -z --no-authorization                     Skip approval checks for this action.
# @flag -v --verbose                              Toggle verbosity.
# @option -B --boot-path <boot-path>              The path to the boot kernel collection.
# @option -S --system-path <system-path>          The path to the system kernel collection.
# @option -A --auxiliary-path <auxiliary-path>    The path to the auxiliary kernel collection.
# @flag -M --allow-missing-collections            Recover gracefully, where applicable, if any collections are missing.
# @flag --no-variant-extension                    Don't append the build variant as an extension to the collection path.
# @flag -h --help                                 Show help information.
emit-macho() {
    :;
}
# }} kmutil emit-macho

command eval "$(argc --argc-eval "$0" "$@")"