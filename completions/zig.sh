#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help    Print command-specific usage

# {{ zig build
# @cmd Build project from build.zig
# @option -p --prefix <path>             Override default install prefix
# @option --prefix-lib-dir <path>        Override default library directory path
# @option --prefix-exe-dir <path>        Override default executable directory path
# @option --prefix-include-dir <path>    Override default include directory path
# @option --sysroot <path>               Set the system root directory (usually /)
# @option --search-prefix <path>         Add a path to look for binaries, libraries, headers
# @option --libc <file>                  Provide a file which specifies libc paths
# @flag -fdarling                        Integration with system-installed Darling to execute macOS programs on Linux hosts (default: no)
# @flag -fno-darling                     Integration with system-installed Darling to execute macOS programs on Linux hosts (default: no)
# @flag -fqemu                           -fno-qemu  Integration with system-installed QEMU to execute foreign-architecture programs on Linux hosts (default: no)
# @option --glibc-runtimes <path>        Enhances QEMU integration by providing glibc built for multiple foreign architectures, allowing execution of non-native programs that link with glibc.
# @flag -frosetta                        Rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts.
# @flag -fno-rosetta                     Rely on Rosetta to execute x86_64 programs on ARM64 macOS hosts.
# @flag -fwasmtime                       Integration with system-installed wasmtime to execute WASI binaries.
# @flag -fno-wasmtime                    Integration with system-installed wasmtime to execute WASI binaries.
# @flag -fwine                           -fno-wine  Integration with system-installed Wine to execute Windows programs on Linux hosts.
# @flag -h --help                        Print this help and exit
# @flag -l --list-steps                  Print available steps
# @flag --verbose                        Print commands before executing them
# @option --color[auto|off|on]           Enable or disable colored error messages
# @option --summary <mode>               Control the printing of the build summary
# @option -j <N>                         Limit concurrent jobs (default is to use all CPU cores)
# @option --maxrss <bytes>               Limit memory usage (default is to use available memory)
# @option -Dtarget <string>              The CPU architecture, OS, and ABI to build for
# @option -Dcpu <string>                 Target CPU features to add or subtract
# @option -Doptimize <enum>              Prioritize performance, safety, or binary size (-O flag) Supported Values:
# @option -freference-trace <num>        How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace             Disable reference trace
# @option --build-file <file>            Override path to build.zig
# @option --cache-dir <path>             Override path to local Zig cache directory
# @option --global-cache-dir <path>      Override path to global Zig cache directory
# @option --zig-lib-dir <arg>            Override path to Zig lib directory
# @option --build-runner <file>          Override path to build runner
# @option --debug-log <scope>            Enable debugging the compiler
# @flag --debug-pkg-config               Fail if unknown pkg-config flags encountered
# @flag --verbose-link                   Enable compiler debug output for linking
# @flag --verbose-air                    Enable compiler debug output for Zig AIR
# @option --verbose-llvm-ir <file>       Enable compiler debug output for LLVM IR
# @option --verbose-llvm-bc <file>       Enable compiler debug output for LLVM BC
# @flag --verbose-cimport                Enable compiler debug output for C imports
# @flag --verbose-cc                     Enable compiler debug output for C compilation
# @flag --verbose-llvm-cpu-features      Enable compiler debug output for LLVM CPU features
# @arg steps*[`_choice_steps`]
build() {
    :;
}
# }} zig build

# {{ zig init-exe
# @cmd Initialize a `zig build` application in the cwd
# @flag -h --help    Print this help and exit
init-exe() {
    :;
}
# }} zig init-exe

# {{ zig init-lib
# @cmd Initialize a `zig build` library in the cwd
# @flag -h --help    Print this help and exit
init-lib() {
    :;
}
# }} zig init-lib

# {{ zig ast-check
# @cmd Look for simple compile errors in any set of files
# @flag -h --help                 Print this help and exit
# @option --color[auto|off|on]    Enable or disable colored error messages
# @flag -t                        (debug option) Output ZIR in text form to stdout
# @arg file
ast-check() {
    :;
}
# }} zig ast-check

# {{ zig build-exe
# @cmd Create executable from source or object files
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
build-exe() {
    :;
}
# }} zig build-exe

# {{ zig build-lib
# @cmd Create library from source or object files
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
build-lib() {
    :;
}
# }} zig build-lib

# {{ zig build-obj
# @cmd Create object from source or object files
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
build-obj() {
    :;
}
# }} zig build-obj

# {{ zig fmt
# @cmd Reformat Zig source into canonical form
# @flag -h --help                 Print this help and exit
# @option --color[auto|off|on]    Enable or disable colored error messages
# @flag --stdin                   Format code from stdin; output to stdout
# @flag --check                   List non-conforming files and exit with an error if the list is non-empty
# @flag --ast-check               Run zig ast-check on every file
# @option --exclude <file>        Exclude file or directory from formatting
# @arg file*
fmt() {
    :;
}
# }} zig fmt

# {{ zig run
# @cmd Create executable and run immediately
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
run() {
    :;
}
# }} zig run

# {{ zig test
# @cmd Create and run a test build
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
test() {
    :;
}
# }} zig test

# {{ zig translate-c
# @cmd Convert C code to Zig code
# @flag -h --help                         Print this help and exit
# @option --color[auto|off|on]            Enable or disable colored error messages
# @option -femit-bin <path>               (default) Output machine code
# @flag -fno-emit-bin                     Do not output machine code
# @option -femit-asm <path>               Output .s (assembly code)
# @flag -fno-emit-asm                     (default) Do not output .s (assembly code)
# @option -femit-llvm-ir <path>           Produce a .ll file with optimized LLVM IR (requires LLVM extensions)
# @flag -fno-emit-llvm-ir                 (default) Do not produce a .ll file with optimized LLVM IR
# @option -femit-llvm-bc <path>           Produce an optimized LLVM module as a .bc file (requires LLVM extensions)
# @flag -fno-emit-llvm-bc                 (default) Do not produce an optimized LLVM module as a .bc file
# @option -femit-h <path>                 Generate a C header file (.h)
# @flag -fno-emit-h                       (default) Do not generate a C header file (.h)
# @option -femit-docs <path>              Create a docs/ dir with html documentation
# @flag -fno-emit-docs                    (default) Do not produce docs/ dir with html documentation
# @option -femit-implib <path>            (default) Produce an import .lib when building a Windows DLL
# @flag -fno-emit-implib                  Do not produce an import .lib when building a Windows DLL
# @flag --show-builtin                    Output the source of @import("builtin") then exit
# @option --cache-dir <path>              Override the local cache directory
# @option --global-cache-dir <path>       Override the global cache directory
# @option --zig-lib-dir <path>            Override path to Zig installation lib directory
# @option -target <name>                  <arch><sub>-<os>-<abi> see the targets command
# @option -mcpu <cpu>                     Specify target CPU and feature set
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @option -x <language>                   Treat subsequent input files as having type <language>
# @flag -mred-zone                        Force-enable the "red-zone"
# @flag -mno-red-zone                     Force-disable the "red-zone"
# @flag -fomit-frame-pointer              Omit the stack frame pointer
# @flag -fno-omit-frame-pointer           Store the stack frame pointer
# @option -mexec-model <value>            (WASI) Execution model
# @option --name <name>                   Override root name (not a file path)
# @option -O <mode>                       Choose what to optimize for
# @option --mod <[name]:[deps]:[src]>     Make a module available for dependency under the given name
# @option --deps* <[dep],[dep],>          Set dependency names for the root package
# @flag --main-pkg-path                   Set the directory of the root package
# @flag -fPIC                             Force-enable Position Independent Code
# @flag -fno-PIC                          Force-disable Position Independent Code
# @flag -fPIE                             Force-enable Position Independent Executable
# @flag -fno-PIE                          Force-disable Position Independent Executable
# @flag -flto                             Force-enable Link Time Optimization (requires LLVM extensions)
# @flag -fno-lto                          Force-disable Link Time Optimization
# @flag -fstack-check                     Enable stack probing in unsafe builds
# @flag -fno-stack-check                  Disable stack probing in safe builds
# @flag -fstack-protector                 Enable stack protection in unsafe builds
# @flag -fno-stack-protector              Disable stack protection in safe builds
# @flag -fsanitize-c                      Enable C undefined behavior detection in unsafe builds
# @flag -fno-sanitize-c                   Disable C undefined behavior detection in safe builds
# @flag -fvalgrind                        Include valgrind client requests in release builds
# @flag -fno-valgrind                     Omit valgrind client requests in debug builds
# @flag -fsanitize-thread                 Enable Thread Sanitizer
# @flag -fno-sanitize-thread              Disable Thread Sanitizer
# @flag -fdll-export-fns                  Mark exported functions as DLL exports (Windows)
# @flag -fno-dll-export-fns               Force-disable marking exported functions as DLL exports
# @flag -funwind-tables                   Always produce unwind table entries for all functions
# @flag -fno-unwind-tables                Never produce unwind table entries
# @flag -fllvm                            Force using LLVM as the codegen backend
# @flag -fno-llvm                         Prevent using LLVM as the codegen backend
# @flag -flibllvm                         Force using the LLVM API in the codegen backend
# @flag -fno-libllvm                      Prevent using the LLVM API in the codegen backend
# @flag -fclang                           Force using Clang as the C/C++ compilation backend
# @flag -fno-clang                        Prevent using Clang as the C/C++ compilation backend
# @option -freference-trace <num>         How many lines of reference trace should be shown per compile error
# @flag -fno-reference-trace              Disable reference trace
# @flag -ferror-tracing                   Enable error tracing in ReleaseFast mode
# @flag -fno-error-tracing                Disable error tracing in Debug and ReleaseSafe mode
# @flag -fsingle-threaded                 Code assumes there is only one thread
# @flag -fno-single-threaded              Code may not assume there is only one thread
# @flag -fbuiltin                         Enable implicit builtin knowledge of functions
# @flag -fno-builtin                      Disable implicit builtin knowledge of functions
# @flag -ffunction-sections               Places each function in a separate section
# @flag -fno-function-sections            All functions go into same section
# @flag -fstrip                           Omit debug symbols
# @flag -fno-strip                        Keep debug symbols
# @flag -fformatted-panics                Enable formatted safety panics
# @flag -fno-formatted-panics             Disable formatted safety panics
# @option -ofmt[`_choice_ofmt`] <mode>    Override target object format
# @option -idirafter <dir>                Add directory to AFTER include search path
# @flag -isystem                          [dir]  Add directory to SYSTEM include search path
# @option -I <dir>                        Add directory to include search path
# @option -D <[macro]=[value]>            Define C [macro] to [value] (1 if [value] omitted)
# @option --libc <file>                   Provide a file which specifies libc paths
# @option -cflags <flags>                 Set extra flags for the next positional C source files
# @option -l --library <lib>              Link against system library (only if actually used)
# @option -needed-l <lib>                 Link against system library (even if unused)
# @option --needed-library <lib>
# @option -weak-l <lib>                   link against system library marking it and all
# @option -weak_library <lib>             referenced symbols as weak
# @option -L --library-directory <d>      Add a directory to the library search path
# @flag -search_paths_first               For each library search path, check for dynamic lib then static lib before proceeding to next path.
# @flag -search_paths_first_static        For each library search path, check for static lib then dynamic lib before proceeding to next path.
# @flag -search_dylibs_first              Search for dynamic libs in all library search paths, then static libs.
# @flag -search_static_first              Search for static libs in all library search paths, then dynamic libs.
# @flag -search_dylibs_only               Only search for dynamic libs.
# @flag -search_static_only               Only search for static libs.
# @option -T --script <script>            Use a custom linker script
# @option --version-script <path>         Provide a version .map file
# @option --dynamic-linker <path>         Set the dynamic interpreter path (usually ld.so)
# @option --sysroot <path>                Set the system root directory (usually /)
# @option --version <ver>                 Dynamic library semver
# @option --entry <name>                  Set the entrypoint symbol name
# @option --force_undefined <name>        Specify the symbol must be defined for the link to succeed
# @option -fsoname <name>                 Override the default SONAME value
# @flag -fno-soname                       Disable emitting a SONAME
# @flag -flld                             Force using LLD as the linker
# @flag -fno-lld                          Prevent using LLD as the linker
# @flag -fcompiler-rt                     Always include compiler-rt symbols in output
# @flag -fno-compiler-rt                  Prevent including compiler-rt symbols in output
# @flag -rdynamic                         Add all symbols to the dynamic symbol table
# @option -rpath <path>                   Add directory to the runtime library search path
# @flag -feach-lib-rpath                  Ensure adding rpath for each used dynamic library
# @flag -fno-each-lib-rpath               Prevent adding rpath for each used dynamic library
# @flag -fallow-shlib-undefined           Allows undefined symbols in shared libraries
# @flag -fno-allow-shlib-undefined        Disallows undefined symbols in shared libraries
# @option --build-id[fast|uuid|sha1|md5|none] <style>  At a minor link-time expense, coordinates stripped binaries
# @flag --eh-frame-hdr                    Enable C++ exception handling by passing --eh-frame-hdr to linker
# @flag --emit-relocs                     Enable output of relocation sections for post build tools
# @option -z <arg>                        Set linker extension flags
# @flag -dynamic                          Force output to be dynamically linked
# @flag -static                           Force output to be statically linked
# @flag -Bsymbolic                        Bind global references locally
# @option --compress-debug-sections[none|zlib] <e>  Debug section compression settings
# @flag --gc-sections                     Force removal of functions and data that are unreachable by the entry point or exported symbols
# @flag --no-gc-sections                  Don't force removal of unreachable functions and data
# @option --sort-section <value>          Sort wildcard section patterns by 'name' or 'alignment'
# @option --subsystem <subsystem>         (Windows) /SUBSYSTEM:<subsystem> to the linker
# @option --stack <size>                  Override default stack size
# @option --image-base <addr>             Set base address for executable image
# @option -framework <name>               (Darwin) link against framework
# @option -needed_framework <name>        (Darwin) link against framework (even if unused)
# @option -needed_library <lib>           link against system library (even if unused)
# @option -weak_framework <name>          (Darwin) link against framework and mark it and all referenced symbols as weak
# @option -F <dir>                        (Darwin) add search path for frameworks
# @option -install_name <value>           (Darwin) add dylib's install name
# @option --entitlements <path>           (Darwin) add path to entitlements file for embedding in code signature
# @option -pagezero_size <value>          (Darwin) size of the __PAGEZERO segment in hexadecimal notation
# @option -headerpad <value>              (Darwin) set minimum space for future expansion of the load commands in hexadecimal notation
# @flag -headerpad_max_install_names      (Darwin) set enough space as if all paths were MAXPATHLEN
# @flag -dead_strip                       (Darwin) remove functions and data that are unreachable by the entry point or exported symbols
# @flag -dead_strip_dylibs                (Darwin) remove dylibs that are unreachable by the entry point or exported symbols
# @flag --import-memory                   (WebAssembly) import memory from the environment
# @flag --export-memory                   (WebAssembly) export memory to the host (Default unless --import-memory used)
# @flag --import-symbols                  (WebAssembly) import missing symbols from the host environment
# @flag --import-table                    (WebAssembly) import function table from the host environment
# @flag --export-table                    (WebAssembly) export function table to the host environment
# @option --initial-memory <bytes>        (WebAssembly) initial size of the linear memory
# @option --max-memory <bytes>            (WebAssembly) maximum size of the linear memory
# @flag --shared-memory                   (WebAssembly) use shared linear memory
# @option --global-base <addr>            (WebAssembly) where to start to place global data
# @option --export <value>                (WebAssembly) Force a symbol to be exported
# @option --test-filter <text>            Skip tests that do not match filter
# @option --test-name-prefix <text>       Add prefix to all tests
# @option --test-cmd <arg>                Specify test execution command one arg at a time
# @flag --test-cmd-bin                    Appends test binary path to test cmd args
# @flag --test-evented-io                 Runs the test in evented I/O mode
# @flag --test-no-exec                    Compiles test binary without running it
# @option --test-runner <path>            Specify a custom test runner
# @option -fopt-bisect-limit <limit>      Only run [limit] first LLVM optimization passes
# @flag -ftime-report                     Print timing diagnostics
# @flag -fstack-report                    Print stack size diagnostics
# @flag --verbose-link                    Display linker invocations
# @flag --verbose-cc                      Display C compiler invocations
# @flag --verbose-air                     Enable compiler debug output for Zig AIR
# @flag --verbose-intern-pool             Enable compiler debug output for InternPool
# @flag --verbose-generic-instances       Enable compiler debug output for generic instance generation
# @option --verbose-llvm-ir <path>        Enable compiler debug output for unoptimized LLVM IR
# @option --verbose-llvm-bc <path>        Enable compiler debug output for unoptimized LLVM BC
# @flag --verbose-cimport                 Enable compiler debug output for C imports
# @flag --verbose-llvm-cpu-features       Enable compiler debug output for LLVM CPU features
# @option --debug-log <scope>             Enable printing debug/info log messages for scope
# @flag --debug-compile-errors            Crash with helpful diagnostics at the first compile error
# @flag --debug-link-snapshot             Enable dumping of the linker's state in JSON format
# @arg files*
translate-c() {
    :;
}
# }} zig translate-c

# {{ zig ar
# @cmd Use Zig as a drop-in archiver
# @option --format[default|gnu|darwin|bsd|bigarchive]  archive format to create
# @option --plugin <string>               ignored for compatibility
# @flag -h --help                         display this help and exit
# @flag --output                          the directory to extract archive members to
# @option --rsp-quoting[posix|windows]    quoting style for response files
# @flag --thin                            create a thin archive
# @flag --version                         print the version and exit
# @option -X[32|64|32_64|any]             object mode (only for AIX OS)
# @arg words~[`_argc_ar`]
ar() {
    :;
}
# }} zig ar

# {{ zig cc
# @cmd Use Zig as a drop-in C compiler
# @option --amdgpu-arch-tool <value>               Tool used for detecting AMD GPU arch in the system.
# @option --analyzer-output <value>                Static analyzer report output format (html|plist|plist-multi-file|plist-html|sarif|sarif-html|text).
# @flag --analyze                                  Run the static analyzer
# @flag -arcmt-migrate-emit-errors                 Emit ARC errors even if the migrator can fix them
# @option -arcmt-migrate-report-output <value>     Output path for the plist report
# @option -B <prefix>                              Search $prefix$file for executables, libraries, and data files.
# @option -b <arg>                                 Pass -b <arg> to the linker on AIX
# @flag -CC                                        Include comments from within macros in preprocessed output
# @flag -cl-denorms-are-zero                       OpenCL only.
# @option -cl-ext <value>                          OpenCL only.
# @flag -cl-fast-relaxed-math                      OpenCL only.
# @flag -cl-finite-math-only                       OpenCL only.
# @flag -cl-fp32-correctly-rounded-divide-sqrt     OpenCL only.
# @flag -cl-kernel-arg-info                        OpenCL only.
# @flag -cl-mad-enable                             OpenCL only.
# @flag -cl-no-signed-zeros                        OpenCL only.
# @flag -cl-no-stdinc                              OpenCL only.
# @flag -cl-opt-disable                            OpenCL only.
# @flag -cl-single-precision-constant              OpenCL only.
# @option -cl-std <value>                          OpenCL language standard to compile for.
# @flag -cl-strict-aliasing                        OpenCL only.
# @flag -cl-uniform-work-group-size                OpenCL only.
# @flag -cl-unsafe-math-optimizations              OpenCL only.
# @option --config <file>                          Specify configuration file
# @flag --cuda-compile-host-device                 Compile CUDA code for both host and device (default).
# @flag --cuda-device-only                         Compile CUDA code for device only
# @option --cuda-feature <value>                   Manually specify the CUDA feature to use
# @flag --cuda-host-only                           Compile CUDA code for host only.
# @option --cuda-include-ptx <value>               Include PTX for the following GPU architecture (e.g. sm_35) or 'all'.
# @flag --cuda-noopt-device-debug                  Enable device-side debug info generation.
# @flag --cuda-path-ignore-env                     Ignore environment variables to detect CUDA installation
# @option --cuda-path <value>                      CUDA installation path
# @option -cuid <value>                            An ID for compilation unit, which should be the same for the same compilation unit but different for different compilation units.
# @option -cxx-isystem <directory>                 Add directory to the C++ SYSTEM include search path
# @flag -C                                         Include comments in preprocessed output
# @flag -c                                         Only run preprocess, compile, and assemble steps
# @option -darwin-target-variant-triple <value>    Specify the darwin target variant triple
# @option -darwin-target-variant <value>           Generate code for an additional runtime variant of the deployment target
# @flag -dD                                        Print macro definitions in -E mode in addition to normal output
# @option -dependency-dot <value>                  Filename to write DOT-formatted header dependencies to
# @option -dependency-file <value>                 Filename (or -) to write dependency output to
# @flag -dI                                        Print include directives in -E mode in addition to normal output
# @flag -dM                                        Print macro definitions in -E mode instead of normal output
# @option -dsym-dir <dir>                          Directory to output dSYM's (if any) to
# @option -D <<macro>=<value>>                     Define <macro> to <value> (or 1 if <value> omitted)
# @flag -emit-ast                                  Emit Clang AST files for source inputs
# @flag -emit-interface-stubs                      Generate Interface Stub Files.
# @flag -emit-llvm                                 Use the LLVM representation for assembler and object files
# @flag -emit-merged-ifs                           Generate Interface Stub Files, emit merged text not binary.
# @flag --emit-static-lib                          Enable linker job to emit a static library.
# @flag --end-no-unused-arguments                  Start emitting warnings for unused driver arguments
# @option --extract-api-ignores <value>            File containing a new line separated list of API symbols to ignore when extracting API information.
# @flag -extract-api                               Extract API information
# @flag -E                                         Only run the preprocessor
# @flag -faapcs-bitfield-load                      Follows the AAPCS standard that all volatile bit-field write generates at least one load.
# @flag -faapcs-bitfield-width                     Follow the AAPCS standard requirement stating that volatile bit-field width is dictated by the field container type.
# @flag -faddrsig                                  Emit an address-significance table
# @option -falign-loops <N>                        N must be a power of two.
# @flag -faligned-allocation                       Enable C++17 aligned allocation functions
# @flag -fallow-editor-placeholders                Treat editor placeholders as valid source code
# @option -faltivec-src-compat <value>             Source-level compatibility for Altivec vectors (for PowerPC targets).
# @flag -fansi-escape-codes                        Use ANSI escape codes for diagnostics
# @flag -fapple-kext                               Use Apple's kernel extensions ABI
# @flag -fapple-link-rtlib                         Force linking the clang builtins runtime library
# @flag -fapple-pragma-pack                        Enable Apple gcc-compatible ♯pragma pack handling
# @flag -fapplication-extension                    Restrict code to those available for App Extensions
# @flag -fapprox-func                              Allow certain math function calls to be replaced with an approximately equivalent calculation
# @flag -fasync-exceptions                         Enable EH Asynchronous exceptions
# @option -fbasic-block-sections <value>           Place each function's basic blocks in unique sections (ELF Only)
# @option -fbinutils-version <major.minor>         Produced object files can use all ELF features supported by this binutils version and newer.
# @flag -fblocks                                   Enable the 'blocks' language feature
# @flag -fborland-extensions                       Accept non-standard constructs supported by the Borland compiler
# @option -fbuild-session-file <file>              Use the last modification time of <file> as the build session timestamp
# @option -fbuild-session-timestamp <time since Epoch in seconds>  Time when the current build session started
# @flag -fbuiltin-module-map                       Load the clang builtins module map file.
# @option -fc <++-abi=<value>>                     C++ ABI to use.
# @flag -fcall-saved-x10                           Make the x10 register call-saved (AArch64 only)
# @flag -fcall-saved-x11                           Make the x11 register call-saved (AArch64 only)
# @flag -fcall-saved-x12                           Make the x12 register call-saved (AArch64 only)
# @flag -fcall-saved-x13                           Make the x13 register call-saved (AArch64 only)
# @flag -fcall-saved-x14                           Make the x14 register call-saved (AArch64 only)
# @flag -fcall-saved-x15                           Make the x15 register call-saved (AArch64 only)
# @flag -fcall-saved-x18                           Make the x18 register call-saved (AArch64 only)
# @flag -fcall-saved-x8                            Make the x8 register call-saved (AArch64 only)
# @flag -fcall-saved-x9                            Make the x9 register call-saved (AArch64 only)
# @option -fcf-protection <value>                  Instrument control-flow architecture protection
# @flag -fchar8_t                                  Enable C++ builtin type char8_t
# @option -fclang-abi-compat <version>             Attempt to match the ABI of Clang <version>
# @flag -fcolor-diagnostics                        Enable colors in diagnostics
# @option -fcomment-block-commands <arg>           Treat each comma separated argument in <arg> as a documentation comment block command
# @flag -fcommon                                   Place uninitialized global variables in a common block
# @flag -fcomplete-member-pointers                 Require member pointer base types to be complete if they would be significant under the Microsoft ABI
# @flag -fconvergent-functions                     Assume functions may be convergent
# @flag -fcoro-aligned-allocation                  Prefer aligned allocation for C++ Coroutines
# @flag -fcoroutines-ts                            Enable support for the C++ Coroutines TS
# @option -fcoverage-compilation-dir <value>       The compilation directory to embed in the coverage mapping.
# @flag -fcoverage-mapping                         Generate coverage mapping to enable code coverage analysis
# @option -fcoverage-prefix-map <value>            remap file source paths in coverage mapping
# @option -fcrash-diagnostics-dir <dir>            Put crash-report files in <dir>
# @option -fcrash-diagnostics[off|compiler|all] <value>  Set level of crash diagnostic reporting,
# @option -fcs-profile-generate <directory>        Generate instrumented code to collect context sensitive execution counts into <directory>/default.profraw (overridden by LLVM_PROFILE_FILE env var)
# @flag -fcuda-approx-transcendentals              Use approximate transcendental functions
# @flag -fcuda-short-ptr                           Use 32-bit pointers for accessing const/local/shared address spaces
# @flag -fcxx-exceptions                           Enable C++ exceptions
# @flag -fcxx-modules                              Enable modules for C++
# @flag -fdata-sections                            Place each data in its own section
# @option -fdebug-compilation-dir <value>          The compilation directory to embed in the debug info
# @option -fdebug-default-version <value>          Default DWARF version to use, if a -g option caused DWARF debug info to be produced
# @flag -fdebug-info-for-profiling                 Emit extra debug info to make sample profile more accurate
# @flag -fdebug-macro                              Emit macro debug information
# @option -fdebug-prefix-map <value>               remap file source paths in debug info
# @flag -fdebug-ranges-base-address                Use DWARF base address selection entries in .debug_ranges
# @flag -fdebug-types-section                      Place debug types in their own section (ELF Only)
# @flag -fdeclspec                                 Allow __declspec as a keyword
# @flag -fdelayed-template-parsing                 Parse templated function definitions at the end of the translation unit
# @flag -fdelete-null-pointer-checks               Treat usage of null pointers as undefined behavior (default)
# @flag -fdiagnostics-absolute-paths               Print absolute paths in diagnostics
# @option -fdiagnostics-hotness-threshold <value>  Prevent optimization remarks from being output if they do not have at least this profile count.
# @option -fdiagnostics-misexpect-tolerance <value>  Prevent misexpect diagnostics from being output if the profile counts are within N% of the expected.
# @flag -fdiagnostics-parseable-fixits             Print fix-its in machine parseable form
# @flag -fdiagnostics-print-source-range-info      Print source range spans in numeric form
# @flag -fdiagnostics-show-hotness                 Enable profile hotness information in diagnostic line
# @flag -fdiagnostics-show-note-include-stack      Display include stacks for diagnostic notes
# @flag -fdiagnostics-show-option                  Print option name with mappable diagnostics
# @flag -fdiagnostics-show-template-tree           Print a template comparison tree for differing templates
# @flag -fdigraphs                                 Enable alternative token representations '<:', ':>', '<%', '%>', '%:', '%:%:' (default)
# @flag -fdirect-access-external-data              Don't use GOT indirection to reference external data symbols
# @flag -fdiscard-value-names                      Discard value names in LLVM IR
# @flag -fdollars-in-identifiers                   Allow '$' in identifiers
# @flag -fdouble-square-bracket-attributes         Enable '[[]]' attributes in all C and C++ language modes
# @flag -fdriver-only                              Only run the driver.
# @flag -fdwarf-exceptions                         Use DWARF style exceptions
# @flag -feliminate-unused-debug-types             Do not emit  debug info for defined but unused types
# @flag -fembed-bitcode-marker                     Embed placeholder LLVM IR data as a marker
# @option -fembed-bitcode <option>                 Embed LLVM bitcode
# @option -fembed-offload-object <value>           Embed Offloading device-side binary into host object file as a section.
# @flag -femit-all-decls                           Emit all declarations, even if unused
# @option -femit-dwarf-unwind <value>              When to emit DWARF unwind (EH frame) info
# @flag -femulated-tls                             Use emutls functions to access thread_local variables
# @flag -fenable-matrix                            Enable matrix data type and related builtin functions
# @flag -fexceptions                               Enable support for exception handling
# @option -fexcess-precision <value>               Allows control over excess precision on targets where native support for the precision types is not available.
# @flag -fexperimental-library                     Control whether unstable and experimental library features are enabled.
# @flag -fexperimental-new-constant-interpreter    Enable the experimental new constant interpreter
# @option -fexperimental-relative-c <++-abi-vtables>  Use the experimental C++ class ABI for classes with virtual tables
# @option -fexperimental-sanitize-metadata <value>  Specify the type of metadata to emit for binary analysis sanitizers
# @flag -fexperimental-strict-floating-point       Enables experimental strict floating point in LLVM.
# @option -fextend-arguments <value>               Controls how scalar integer arguments are extended in calls to unprototyped and varargs functions
# @flag -ffast-math                                Allow aggressive, lossy floating-point optimizations
# @option -ffile-compilation-dir <value>           The compilation directory to embed in the debug info and coverage mapping.
# @option -ffile-prefix-map <value>                remap file source paths in debug info, predefined preprocessor macros and __builtin_FILE().
# @flag -ffile-reproducible                        Use the target's platform-specific path separator character when expanding the __FILE__ macro
# @flag -ffine-grained-bitfield-accesses           Use separate accesses for consecutive bitfield runs with legal widths and alignments.
# @flag -ffinite-loops                             Assume all loops are finite.
# @flag -ffixed-a0                                 Reserve the a0 register (M68k only)
# @flag -ffixed-a1                                 Reserve the a1 register (M68k only)
# @flag -ffixed-a2                                 Reserve the a2 register (M68k only)
# @flag -ffixed-a3                                 Reserve the a3 register (M68k only)
# @flag -ffixed-a4                                 Reserve the a4 register (M68k only)
# @flag -ffixed-a5                                 Reserve the a5 register (M68k only)
# @flag -ffixed-a6                                 Reserve the a6 register (M68k only)
# @flag -ffixed-d0                                 Reserve the d0 register (M68k only)
# @flag -ffixed-d1                                 Reserve the d1 register (M68k only)
# @flag -ffixed-d2                                 Reserve the d2 register (M68k only)
# @flag -ffixed-d3                                 Reserve the d3 register (M68k only)
# @flag -ffixed-d4                                 Reserve the d4 register (M68k only)
# @flag -ffixed-d5                                 Reserve the d5 register (M68k only)
# @flag -ffixed-d6                                 Reserve the d6 register (M68k only)
# @flag -ffixed-d7                                 Reserve the d7 register (M68k only)
# @flag -ffixed-point                              Enable fixed point types
# @flag -ffixed-r19                                Reserve register r19 (Hexagon only)
# @flag -ffixed-r9                                 Reserve the r9 register (ARM only)
# @flag -ffixed-x10                                Reserve the x10 register (AArch64/RISC-V only)
# @flag -ffixed-x11                                Reserve the x11 register (AArch64/RISC-V only)
# @flag -ffixed-x12                                Reserve the x12 register (AArch64/RISC-V only)
# @flag -ffixed-x13                                Reserve the x13 register (AArch64/RISC-V only)
# @flag -ffixed-x14                                Reserve the x14 register (AArch64/RISC-V only)
# @flag -ffixed-x15                                Reserve the x15 register (AArch64/RISC-V only)
# @flag -ffixed-x16                                Reserve the x16 register (AArch64/RISC-V only)
# @flag -ffixed-x17                                Reserve the x17 register (AArch64/RISC-V only)
# @flag -ffixed-x18                                Reserve the x18 register (AArch64/RISC-V only)
# @flag -ffixed-x19                                Reserve the x19 register (AArch64/RISC-V only)
# @flag -ffixed-x1                                 Reserve the x1 register (AArch64/RISC-V only)
# @flag -ffixed-x20                                Reserve the x20 register (AArch64/RISC-V only)
# @flag -ffixed-x21                                Reserve the x21 register (AArch64/RISC-V only)
# @flag -ffixed-x22                                Reserve the x22 register (AArch64/RISC-V only)
# @flag -ffixed-x23                                Reserve the x23 register (AArch64/RISC-V only)
# @flag -ffixed-x24                                Reserve the x24 register (AArch64/RISC-V only)
# @flag -ffixed-x25                                Reserve the x25 register (AArch64/RISC-V only)
# @flag -ffixed-x26                                Reserve the x26 register (AArch64/RISC-V only)
# @flag -ffixed-x27                                Reserve the x27 register (AArch64/RISC-V only)
# @flag -ffixed-x28                                Reserve the x28 register (AArch64/RISC-V only)
# @flag -ffixed-x29                                Reserve the x29 register (AArch64/RISC-V only)
# @flag -ffixed-x2                                 Reserve the x2 register (AArch64/RISC-V only)
# @flag -ffixed-x30                                Reserve the x30 register (AArch64/RISC-V only)
# @flag -ffixed-x31                                Reserve the x31 register (AArch64/RISC-V only)
# @flag -ffixed-x3                                 Reserve the x3 register (AArch64/RISC-V only)
# @flag -ffixed-x4                                 Reserve the x4 register (AArch64/RISC-V only)
# @flag -ffixed-x5                                 Reserve the x5 register (AArch64/RISC-V only)
# @flag -ffixed-x6                                 Reserve the x6 register (AArch64/RISC-V only)
# @flag -ffixed-x7                                 Reserve the x7 register (AArch64/RISC-V only)
# @flag -ffixed-x8                                 Reserve the x8 register (AArch64/RISC-V only)
# @flag -ffixed-x9                                 Reserve the x9 register (AArch64/RISC-V only)
# @flag -fforce-dwarf-frame                        Always emit a debug frame section
# @flag -fforce-emit-vtables                       Emits more virtual tables to improve devirtualization
# @flag -fforce-enable-int128                      Enable support for int128_t type
# @option -ffp-contract <value>                    Form fused FP ops (e.g. FMAs)
# @option -ffp-eval-method <value>                 Specifies the evaluation method to use for floating-point arithmetic.
# @option -ffp-exception-behavior <value>          Specifies the exception behavior of floating-point operations.
# @option -ffp-model <value>                       Controls the semantics of floating-point calculations.
# @flag -ffreestanding                             Assert that the compilation takes place in a freestanding environment
# @option -ffuchsia-api-level <value>              Set Fuchsia API level
# @flag -ffunction-sections                        Place each function in its own section
# @flag -fglobal-isel                              Enables the global instruction selector
# @flag -fgnu-keywords                             Allow GNU-extension keywords regardless of language standard
# @flag -fgnu-runtime                              Generate output compatible with the standard GNU Objective-C runtime
# @flag -fgnu89-inline                             Use the gnu89 inline semantics
# @option -fgnuc-version <value>                   Sets various macros to claim compatibility with the given GCC version (default is 4.2.1)
# @flag -fgpu-allow-device-init                    Allow device side init function in HIP (experimental)
# @option -fgpu-default-stream <value>             Specify default stream.
# @flag -fgpu-defer-diag                           Defer host/device related diagnostic messages for CUDA/HIP
# @flag -fgpu-flush-denormals-to-zero              Flush denormal floating point values to zero in CUDA/HIP device mode.
# @flag -fgpu-rdc                                  Generate relocatable device code, also known as separate compilation mode
# @flag -fgpu-sanitize                             Enable sanitizer for AMDGPU target
# @flag -fhip-fp32-correctly-rounded-divide-sqrt   Specify that single precision floating-point divide and sqrt used in the program source are correctly rounded (HIP device compilation only)
# @flag -fhip-kernel-arg-name                      Specify that kernel argument names are preserved (HIP only)
# @flag -fhip-new-launch-api                       Use new kernel launching API for HIP
# @flag -fignore-exceptions                        Enable support for ignoring exception handling constructs
# @flag -fimplicit-module-maps                     Implicitly search the file system for module map files.
# @flag -fincremental-extensions                   Enable incremental processing extensions such as processingstatements on the global scope.
# @flag -finline-functions                         Inline suitable functions
# @flag -finline-hint-functions                    Inline functions which are (explicitly or implicitly) marked inline
# @option -finline-max-stacksize <value>           Suppress inlining of functions whose stack size exceeds the given value
# @option -finput-charset <value>                  Specify the default character set for source files
# @flag -finstrument-function-entry-bare           Instrument function entry only, after inlining, without arguments to the instrumentation call
# @flag -finstrument-functions-after-inlining      Like -finstrument-functions, but insert the calls after inlining
# @flag -finstrument-functions                     Generate calls to instrument function entry and exit
# @flag -fintegrated-as                            Enable the integrated assembler
# @flag -fintegrated-cc1                           Run cc1 in-process
# @flag -fintegrated-objemitter                    Use internal machine object code emitter.
# @flag -fjmc                                      Enable just-my-code debugging
# @flag -fjump-tables                              Use jump tables for lowering switches
# @flag -fkeep-static-consts                       Keep static const variables if unused
# @option -flax-vector-conversions <value>         Enable implicit vector bit-casts
# @option -flto-jobs <value>                       Controls the backend parallelism of -flto=thin (default of 0 means the number of threads will be derived from the number of CPUs detected)
# @option -flto <auto>                             Enable LTO in 'full' mode
# @option -fmacro-prefix-map <value>               remap file source paths in predefined preprocessor macros and __builtin_FILE().
# @flag -fmath-errno                               Require math functions to indicate errors by setting errno
# @option -fmax-tokens <value>                     Max total number of preprocessed tokens for -Wmax-tokens.
# @option -fmax-type-align <value>                 Specify the maximum alignment to enforce on pointers lacking an explicit alignment
# @option -fmemory-profile <directory>             Enable heap memory profiling and dump results into <directory>
# @flag -fmerge-all-constants                      Allow merging of constants
# @option -fmessage-length <value>                 Format message diagnostics so that they fit within N columns
# @flag -fminimize-whitespace                      Minimize whitespace when emitting preprocessor output
# @option -fmodule-file <[<name>=]<file>>          Specify the mapping of module name to precompiled module file, or load a module file if name is omitted.
# @option -fmodule-header <kind>                   Build a C++20 Header Unit from a header that should be found in the user (fmodule-header=user) or system (fmodule-header=system) search path.
# @option -fmodule-map-file <file>                 Load this module map file
# @option -fmodule-name <name>                     Specify the name of the module to build
# @option -fmodule-output <value>                  Save intermediate module file results when compiling a standard C++ module unit.
# @option -fmodules-cache-path <directory>         Specify the module cache path
# @flag -fmodules-decluse                          Require declaration of modules used within a module
# @flag -fmodules-disable-diagnostic-validation    Disable validation of the diagnostic options when loading the module
# @option -fmodules-ignore-macro <value>           Ignore the definition of the given macro when building and loading modules
# @option -fmodules-prune-after <seconds>          Specify the interval (in seconds) after which a module file will be considered unused
# @option -fmodules-prune-interval <seconds>       Specify the interval (in seconds) between attempts to prune the module cache
# @flag -fmodules-search-all                       Search even non-imported modules to resolve references
# @flag -fmodules-strict-decluse                   Like -fmodules-decluse but requires all headers to be in modules
# @flag -fmodules-ts                               Enable support for the C++ Modules TS
# @option -fmodules-user-build-path <directory>    Specify the module user build path
# @flag -fmodules-validate-input-files-content     Validate PCM input files based on content if mtime differs
# @flag -fmodules-validate-once-per-build-session  Don't verify input files for the modules if the module has been successfully validated or loaded during this build session
# @flag -fmodules-validate-system-headers          Validate the system headers that a module depends on when loading the module
# @flag -fmodules                                  Enable the 'modules' language feature
# @option -fms-compatibility-version <value>       Dot-separated value representing the Microsoft compiler version number to report in _MSC_VER (0 = don't define it (default))
# @flag -fms-compatibility                         Enable full Microsoft Visual C++ compatibility
# @flag -fms-extensions                            Accept some non-standard constructs supported by the Microsoft compiler
# @flag -fms-hotpatch                              Ensure that all functions can be hotpatched at runtime
# @option -fms-runtime-lib <value>                 Select Windows run-time library
# @option -fmsc-version <value>                    Microsoft compiler version number to report in _MSC_VER (0 = don't define it (default))
# @option -fnew-alignment <align>                  Specifies the largest alignment guaranteed by '::operator new(size_t)'
# @flag -fnew-infallible                           Enable treating throwing global C++ operator new as always returning valid memory (annotates with __attribute__((returns_nonnull)) and throw()).
# @flag -fno-aapcs-bitfield-width                  Do not follow the AAPCS standard requirement stating that volatile bit-field width is dictated by the field container type.
# @flag -fno-access-control                        Disable C++ access control
# @flag -fno-addrsig                               Don't emit an address-significance table
# @flag -fno-assume-sane-operator-new              Don't assume that C++'s global operator new can't alias any pointer
# @flag -fno-autolink                              Disable generation of linker directives for automatic library linking
# @option -fno-builtin- <value>                    Disable implicit builtin knowledge of a specific function
# @option -fno-c <++-static-destructors>           Disable C++ static destructor registration
# @flag -fno-char8_t                               Disable C++ builtin type char8_t
# @flag -fno-color-diagnostics                     Disable colors in diagnostics
# @flag -fno-common                                Compile common globals like normal definitions
# @flag -fno-complete-member-pointers              Do not require member pointer base types to be complete if they would be significant under the Microsoft ABI
# @flag -fno-constant-cfstrings                    Disable creation of CodeFoundation-type constant strings
# @flag -fno-coverage-mapping                      Disable code coverage analysis
# @flag -fno-crash-diagnostics                     Disable auto-generation of preprocessed source files and a script for reproduction during a clang crash
# @flag -fno-cuda-approx-transcendentals           Don't use approximate transcendental functions
# @flag -fno-cxx-modules                           Disable modules for C++
# @flag -fno-debug-macro                           Do not emit macro debug information
# @flag -fno-declspec                              Disallow __declspec as a keyword
# @flag -fno-delayed-template-parsing              Disable delayed template parsing
# @flag -fno-delete-null-pointer-checks            Do not treat usage of null pointers as undefined behavior
# @flag -fno-diagnostics-fixit-info                Do not include fixit information in diagnostics
# @flag -fno-digraphs                              Disallow alternative token representations '<:', ':>', '<%', '%>', '%:', '%:%:'
# @flag -fno-direct-access-external-data           Use GOT indirection to reference external data symbols
# @flag -fno-discard-value-names                   Do not discard value names in LLVM IR
# @flag -fno-dollars-in-identifiers                Disallow '$' in identifiers
# @flag -fno-double-square-bracket-attributes      Disable '[[]]' attributes in all C and C++ language modes
# @flag -fno-elide-constructors                    Disable C++ copy constructor elision
# @flag -fno-elide-type                            Do not elide types when printing diagnostics
# @flag -fno-eliminate-unused-debug-types          Emit  debug info for defined but unused types
# @flag -fno-exceptions                            Disable support for exception handling
# @option -fno-experimental-relative-c <++-abi-vtables>  Do not use the experimental C++ class ABI for classes with virtual tables
# @option -fno-experimental-sanitize-metadata <value>  Disable emitting metadata for binary analysis sanitizers
# @flag -fno-file-reproducible                     Use the host's platform-specific path separator character when expanding the __FILE__ macro
# @flag -fno-fine-grained-bitfield-accesses        Use large-integer access for consecutive bitfield runs.
# @flag -fno-finite-loops                          Do not assume that any loop is finite.
# @flag -fno-fixed-point                           Disable fixed point types
# @flag -fno-force-enable-int128                   Disable support for int128_t type
# @flag -fno-global-isel                           Disables the global instruction selector
# @flag -fno-gnu-inline-asm                        Disable GNU style inline asm
# @flag -fno-gpu-allow-device-init                 Don't allow device side init function in HIP (experimental)
# @flag -fno-gpu-defer-diag                        Don't defer host/device related diagnostic messages for CUDA/HIP
# @flag -fno-hip-fp32-correctly-rounded-divide-sqrt  Don't specify that single precision floating-point divide and sqrt used in the program source are correctly rounded (HIP device compilation only)
# @flag -fno-hip-kernel-arg-name                   Don't specify that kernel argument names are preserved (HIP only)
# @flag -fno-hip-new-launch-api                    Don't use new kernel launching API for HIP
# @flag -fno-integrated-as                         Disable the integrated assembler
# @flag -fno-integrated-cc1                        Spawn a separate process for each cc1
# @flag -fno-integrated-objemitter                 Use external machine object code emitter.
# @flag -fno-jump-tables                           Do not use jump tables for lowering switches
# @flag -fno-keep-static-consts                    Don't keep static const variables if unused
# @flag -fno-knr-functions                         Disable support for K&R C function declarations
# @flag -fno-lto                                   Disable LTO mode (default)
# @flag -fno-memory-profile                        Disable heap memory profiling
# @flag -fno-merge-all-constants                   Disallow merging of constants
# @flag -fno-modules-validate-textual-header-includes  Do not enforce -fmodules-decluse and private header restrictions for textual headers.
# @flag -fno-new-infallible                        Disable treating throwing global C++ operator new as always returning valid memory (annotates with __attribute__((returns_nonnull)) and throw()).
# @flag -fno-objc-infer-related-result-type        do not infer Objective-C related result type based on method family
# @flag -fno-offload-lto                           Disable LTO mode (default) for offload compilation
# @flag -fno-openmp-extensions                     Disable all Clang extensions for OpenMP directives and clauses
# @flag -fno-operator-names                        Do not treat C++ operator name keywords as synonyms for operators
# @flag -fno-optimize-sibling-calls                Disable tail call optimization, keeping the call stack accurate
# @flag -fno-pch-codegen                           Do not generate code for uses of this PCH that assumes an explicit object file will be built for the PCH
# @flag -fno-pch-debuginfo                         Do not generate debug info for types in an object file built from this PCH and do not generate them elsewhere
# @flag -fno-plt                                   Use GOT indirection instead of PLT to make external function calls (x86 only)
# @flag -fno-preserve-as-comments                  Do not preserve comments in inline assembly
# @flag -fno-profile-generate                      Disable generation of profile instrumentation.
# @flag -fno-profile-instr-generate                Disable generation of profile instrumentation.
# @flag -fno-profile-instr-use                     Disable using instrumentation data for profile-guided optimization
# @flag -fno-pseudo-probe-for-profiling            Do not emit pseudo probes for sample profiling
# @flag -fno-register-global-dtors-with-atexit     Don't use atexit or __cxa_atexit to register global destructors
# @flag -fno-rtlib-add-rpath                       Do not add -rpath with architecture-specific resource directory to the linker flags
# @flag -fno-rtti-data                             Disable generation of RTTI data
# @flag -fno-rtti                                  Disable generation of rtti information
# @flag -fno-sanitize-address-globals-dead-stripping  Disable linker dead stripping of globals in AddressSanitizer
# @flag -fno-sanitize-address-outline-instrumentation  Use default code inlining logic for the address sanitizer
# @flag -fno-sanitize-address-poison-custom-array-cookie  Disable poisoning array cookies when using custom operator new[] in AddressSanitizer
# @flag -fno-sanitize-address-use-after-scope      Disable use-after-scope detection in AddressSanitizer
# @flag -fno-sanitize-address-use-odr-indicator    Disable ODR indicator globals
# @flag -fno-sanitize-cfi-canonical-jump-tables    Do not make the jump table addresses canonical in the symbol table
# @flag -fno-sanitize-cfi-cross-dso                Disable control flow integrity (CFI) checks for cross-DSO calls.
# @option -fno-sanitize-coverage <value>           Disable features of coverage instrumentation for Sanitizers
# @flag -fno-sanitize-hwaddress-experimental-aliasing  Disable aliasing mode in HWAddressSanitizer
# @flag -fno-sanitize-ignorelist                   Don't use ignorelist file for sanitizers
# @flag -fno-sanitize-memory-param-retval          Disable detection of uninitialized parameters and return values
# @flag -fno-sanitize-memory-track-origins         Disable origins tracking in MemorySanitizer
# @flag -fno-sanitize-memory-use-after-dtor        Disable use-after-destroy detection in MemorySanitizer
# @option -fno-sanitize-recover <value>            Disable recovery for specified sanitizers
# @flag -fno-sanitize-stats                        Disable sanitizer statistics gathering.
# @flag -fno-sanitize-thread-atomics               Disable atomic operations instrumentation in ThreadSanitizer
# @flag -fno-sanitize-thread-func-entry-exit       Disable function entry/exit instrumentation in ThreadSanitizer
# @flag -fno-sanitize-thread-memory-access         Disable memory access instrumentation in ThreadSanitizer
# @option -fno-sanitize-trap <value>               Disable trapping for specified sanitizers
# @flag -fno-short-wchar                           Force wchar_t to be an unsigned int
# @flag -fno-show-column                           Do not include column number on diagnostics
# @flag -fno-show-source-location                  Do not include source location information with diagnostics
# @flag -fno-signed-char                           char is unsigned
# @flag -fno-signed-zeros                          Allow optimizations that ignore the sign of floating point zeros
# @flag -fno-spell-checking                        Disable spell-checking
# @flag -fno-split-machine-functions               Disable late function splitting using profile information (x86 ELF)
# @flag -fno-split-stack                           Wouldn't use segmented stack
# @flag -fno-stack-clash-protection                Disable stack clash protection
# @flag -fno-stack-protector                       Disable the use of stack protectors
# @flag -fno-standalone-debug                      Limit debug information produced to reduce size of debug binary
# @flag -fno-strict-float-cast-overflow            Relax language rules and try to match the behavior of the target's native float-to-int conversion instructions
# @flag -fno-strict-return                         Don't treat control flow paths that fall off the end of a non-void function as unreachable
# @flag -fno-sycl                                  Disables SYCL kernels compilation for device
# @flag -fno-temp-file                             Directly create compilation output files.
# @flag -fno-threadsafe-statics                    Do not emit code to make initialization of local statics thread safe
# @flag -fno-trigraphs                             Do not process trigraph sequences
# @flag -fno-unique-section-names                  Don't use unique names for text and data sections
# @flag -fno-unroll-loops                          Turn off loop unroller
# @flag -fno-use-cxa-atexit                        Don't use __cxa_atexit for calling destructors
# @flag -fno-use-init-array                        Use .ctors/.dtors instead of .init_array/.fini_array
# @flag -fno-visibility-inlines-hidden-static-local-var  Disables -fvisibility-inlines-hidden-static-local-var (this is the default on non-darwin targets)
# @flag -fno-xray-function-index                   Omit function index section at the expense of single-function patching performance
# @flag -fno-zero-initialized-in-bss               Don't place zero initialized data in BSS
# @flag -fobjc-arc-exceptions                      Use EH-safe code when synthesizing retains and releases in -fobjc-arc
# @flag -fobjc-arc                                 Synthesize retain and release calls for Objective-C pointers
# @flag -fobjc-disable-direct-methods-for-testing  Ignore attribute objc_direct so that direct methods can be tested
# @flag -fobjc-encode-cxx-class-template-spec      Fully encode c++ class template specialization
# @flag -fobjc-exceptions                          Enable Objective-C exceptions
# @option -fobjc-runtime <value>                   Specify the target Objective-C runtime kind and version
# @flag -fobjc-weak                                Enable ARC-style weak references in Objective-C
# @option -foffload-lto <value>                    Set LTO mode for offload compilation
# @flag -fopenmp-extensions                        Enable all Clang extensions for OpenMP directives and clauses
# @flag -fopenmp-implicit-rpath                    Set rpath on OpenMP executables
# @flag -fopenmp-offload-mandatory                 Do not create a host fallback if offloading to the device fails.
# @flag -fopenmp-simd                              Emit OpenMP code only for SIMD-based constructs.
# @flag -fopenmp-target-debug                      Enable debugging in the OpenMP offloading device RTL
# @flag -fopenmp-target-jit                        Emit code that can be JIT compiled for OpenMP offloading.
# @option -fopenmp-targets <value>                 Specify comma-separated list of triples OpenMP offloading targets to be supported
# @option -fopenmp-version <value>                 Set OpenMP version (e.g. 45 for OpenMP 4.5, 50 for OpenMP 5.0).
# @flag -fopenmp                                   Parse OpenMP pragmas and generate parallel code.
# @option -foptimization-record-file <file>        Specify the output name of the file containing the optimization remarks.
# @option -foptimization-record-passes <regex>     Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)
# @flag -forder-file-instrumentation               Generate instrumented code to collect order file into default.profraw file (overridden by '=' form of option or LLVM_PROFILE_FILE env var)
# @option -fpack-struct <value>                    Specify the default maximum struct packing alignment
# @flag -fpascal-strings                           Recognize and construct Pascal-style string literals
# @option -fpass-plugin <dsopath>                  Load pass plugin from a dynamic shared object file (only with new pass manager).
# @option -fpatchable-function-entry <N,M>         Generate M NOPs before function entry and N-M NOPs after function entry
# @flag -fpcc-struct-return                        Override the default ABI to return all structs on the stack
# @flag -fpch-codegen                              Generate code for uses of this PCH that assumes an explicit object file will be built for the PCH
# @flag -fpch-debuginfo                            Generate debug info for types in an object file built from this PCH and do not generate them elsewhere
# @flag -fpch-instantiate-templates                Instantiate templates already while building a PCH
# @flag -fpch-validate-input-files-content         Validate PCH input files based on content if mtime differs
# @option -fplugin-arg- <<name>-<arg>>             Pass <arg> to plugin <name>
# @option -fplugin <dsopath>                       Load the named plugin (dynamic shared object)
# @flag -fprebuilt-implicit-modules                Look up implicit modules in the prebuilt module path
# @option -fprebuilt-module-path <directory>       Specify the prebuilt module path
# @option -fproc-stat-report <value>               Print subprocess statistics
# @option -fprofile-exclude-files <value>          Instrument only functions from files where names don't match all the regexes separated by a semi-colon
# @option -fprofile-filter-files <value>           Instrument only functions from files where names match any regex separated by a semi-colon
# @option -fprofile-function-groups <N>            Partition functions into N groups and select only functions in group i to be instrumented using -fprofile-selected-function-group
# @option -fprofile-generate <directory>           Generate instrumented code to collect execution counts into <directory>/default.profraw (overridden by LLVM_PROFILE_FILE env var)
# @option -fprofile-instr-generate <file>          Generate instrumented code to collect execution counts into <file> (overridden by LLVM_PROFILE_FILE env var)
# @option -fprofile-instr-use <value>              Use instrumentation data for profile-guided optimization
# @option -fprofile-list <value>                   Filename defining the list of functions/files to instrument
# @option -fprofile-remapping-file <file>          Use the remappings described in <file> to match the profile data against names in the program
# @flag -fprofile-sample-accurate                  Specifies that the sample profile is accurate
# @option -fprofile-sample-use <value>             Enable sample-based profile guided optimizations
# @option -fprofile-selected-function-group <i>    Partition functions into N groups using -fprofile-function-groups and select only functions in group i to be instrumented.
# @option -fprofile-update <method>                Set update method of profile counters
# @option -fprofile-use <pathname>                 Use instrumentation data for profile-guided optimization.
# @flag -fprotect-parens                           Determines whether the optimizer honors parentheses when floating-point expressions are evaluated
# @flag -fpseudo-probe-for-profiling               Emit pseudo probes for sample profiling
# @option -frandomize-layout-seed-file <file>      File holding the seed used by the randomize structure layout feature
# @option -frandomize-layout-seed <seed>           The seed used by the randomize structure layout feature
# @flag -freciprocal-math                          Allow division operations to be reassociated
# @flag -freg-struct-return                        Override the default ABI to return small structs in registers
# @flag -fregister-global-dtors-with-atexit        Use atexit or __cxa_atexit to register global destructors
# @flag -frelaxed-template-template-args           Enable C++17 relaxed template template argument matching
# @flag -freroll-loops                             Turn on loop reroller
# @flag -fropi                                     Generate read-only position independent code (ARM only)
# @flag -frtlib-add-rpath                          Add -rpath with architecture-specific resource directory to the linker flags
# @flag -frwpi                                     Generate read-write position independent code (ARM only)
# @flag -fsample-profile-use-profi                 Use profi to infer block and edge counts
# @option -fsanitize-address-destructor <value>    Set destructor type used in ASan instrumentation
# @option -fsanitize-address-field-padding <value>  Level of field padding for AddressSanitizer
# @flag -fsanitize-address-globals-dead-stripping  Enable linker dead stripping of globals in AddressSanitizer
# @flag -fsanitize-address-outline-instrumentation  Always generate function calls for address sanitizer instrumentation
# @flag -fsanitize-address-poison-custom-array-cookie  Enable poisoning array cookies when using custom operator new[] in AddressSanitizer
# @option -fsanitize-address-use-after-return <mode>  Select the mode of detecting stack use-after-return in AddressSanitizer
# @flag -fsanitize-address-use-after-scope         Enable use-after-scope detection in AddressSanitizer
# @flag -fsanitize-address-use-odr-indicator       Enable ODR indicator globals to avoid false ODR violation reports in partially sanitized programs at the cost of an increase in binary size
# @option -fsanitize-blacklist <value>             Alias for -fsanitize-ignorelist=
# @flag -fsanitize-cfi-canonical-jump-tables       Make the jump table addresses canonical in the symbol table
# @flag -fsanitize-cfi-cross-dso                   Enable control flow integrity (CFI) checks for cross-DSO calls.
# @flag -fsanitize-cfi-icall-generalize-pointers   Generalize pointers in CFI indirect call type signature checks
# @option -fsanitize-coverage-allowlist <value>    Restrict sanitizer coverage instrumentation exclusively to modules and functions that match the provided special case list, except the blocked ones
# @option -fsanitize-coverage-ignorelist <value>   Disable sanitizer coverage instrumentation for modules and functions that match the provided special case list, even the allowed ones
# @option -fsanitize-coverage <value>              Specify the type of coverage instrumentation for Sanitizers
# @option -fsanitize-hwaddress-abi <value>         Select the HWAddressSanitizer ABI to target (interceptor or platform, default interceptor).
# @flag -fsanitize-hwaddress-experimental-aliasing  Enable aliasing mode in HWAddressSanitizer
# @option -fsanitize-ignorelist <value>            Path to ignorelist file for sanitizers
# @flag -fsanitize-memory-param-retval             Enable detection of uninitialized parameters and return values
# @option -fsanitize-memory-track-origins <value>  Enable origins tracking in MemorySanitizer
# @flag -fsanitize-memory-use-after-dtor           Enable use-after-destroy detection in MemorySanitizer
# @option -fsanitize-memtag-mode <value>           Set default MTE mode to 'sync' (default) or 'async'
# @option -fsanitize-recover <value>               Enable recovery for specified sanitizers
# @flag -fsanitize-stats                           Enable sanitizer statistics gathering.
# @option -fsanitize-system-blacklist <value>      Alias for -fsanitize-system-ignorelist=
# @option -fsanitize-system-ignorelist <value>     Path to system ignorelist file for sanitizers
# @flag -fsanitize-thread-atomics                  Enable atomic operations instrumentation in ThreadSanitizer (default)
# @flag -fsanitize-thread-func-entry-exit          Enable function entry/exit instrumentation in ThreadSanitizer (default)
# @flag -fsanitize-thread-memory-access            Enable memory access instrumentation in ThreadSanitizer (default)
# @option -fsanitize-trap <value>                  Enable trapping for specified sanitizers
# @option -fsanitize-undefined-strip-path-components <number>  Strip (or keep only, if negative) a given number of path components when emitting check metadata.
# @option -fsanitize <check>                       Turn on runtime checks for various forms of undefined or suspicious behavior.
# @option -fsave-optimization-record <format>      Generate an optimization record file in a specific format
# @flag -fseh-exceptions                           Use SEH style exceptions
# @flag -fshort-enums                              Allocate to an enum type only as many bytes as it needs for the declared range of possible values
# @flag -fshort-wchar                              Force wchar_t to be a short unsigned int
# @option -fshow-overloads <value>                 Which overload candidates to show when overload resolution fails.
# @flag -fshow-skipped-includes                    Show skipped includes in -H output.
# @flag -fsigned-char                              char is signed
# @flag -fsized-deallocation                       Enable C++14 sized global deallocation functions
# @flag -fsjlj-exceptions                          Use SjLj style exceptions
# @flag -fslp-vectorize                            Enable the superword-level parallelism vectorization passes
# @flag -fsplit-dwarf-inlining                     Provide minimal debug info in the object/executable to facilitate online symbolication/stack traces in the absence of .dwo/.dwp files when using Split DWARF
# @flag -fsplit-lto-unit                           Enables splitting of the LTO unit
# @flag -fsplit-machine-functions                  Enable late function splitting using profile information (x86 ELF)
# @flag -fsplit-stack                              Use segmented stack
# @flag -fstack-clash-protection                   Enable stack clash protection
# @flag -fstack-protector-all                      Enable stack protectors for all functions
# @flag -fstack-protector-strong                   Enable stack protectors for some functions vulnerable to stack smashing.
# @flag -fstack-protector                          Enable stack protectors for some functions vulnerable to stack smashing.
# @flag -fstack-size-section                       Emit section containing metadata on function stack sizes
# @flag -fstack-usage                              Emit .su file containing information on function stack sizes
# @flag -fstandalone-debug                         Emit full debug info for all types used by the program
# @flag -fstrict-enums                             Enable optimizations based on the strict definition of an enum's value range
# @option -fstrict-flex-arrays <n>                 Enable optimizations based on the strict definition of flexible arrays
# @flag -fstrict-float-cast-overflow               Assume that overflowing float-to-int casts are undefined (default)
# @flag -fstrict-vtable-pointers                   Enable optimizations based on the strict rules for overwriting polymorphic C++ objects
# @option -fswift-async-fp <option>                Control emission of Swift async extended frame info
# @flag -fsycl                                     Enables SYCL kernels compilation for device
# @flag -fsyntax-only                              Run the preprocessor, parser and semantic analysis stages
# @flag -fsystem-module                            Build this module as a system module.
# @option -fthin-link-bitcode <value>              Write minimized bitcode to <file> for the ThinLTO thin link only
# @option -fthinlto-index <value>                  Perform ThinLTO importing using provided function summary index
# @option -ftime-report <value>                    (For new pass manager) 'per-pass': one report for each pass; 'per-pass-run': one report for each pass invocation
# @option -ftime-trace-granularity <value>         Minimum time granularity (in microseconds) traced by time profiler
# @option -ftime-trace <value>                     Similar to -ftime-trace.
# @option -ftrap-function <value>                  Issue call to specified function rather than a trap instruction
# @option -ftrapv-handler <function name>          Specify the function to be called on overflow
# @flag -ftrapv                                    Trap on integer overflow
# @flag -ftrigraphs                                Process trigraph sequences
# @option -ftrivial-auto-var-init-stop-after <value>  Stop initializing trivial automatic stack variables after the specified number of instances
# @option -ftrivial-auto-var-init <value>          Initialize trivial automatic stack variables.
# @flag -funique-basic-block-section-names         Use unique names for basic block sections (ELF Only)
# @flag -funique-internal-linkage-names            Uniqueify Internal Linkage Symbol Names by appending the MD5 hash of the module path
# @flag -funroll-loops                             Turn on loop unroller
# @flag -funsafe-math-optimizations                Allow unsafe floating-point math optimizations which may decrease precision
# @option -fuse-cuid <value>                       Method to generate ID's for compilation units for single source offloading languages CUDA and HIP: 'hash' (ID's generated by hashing file path and command line options) | 'random' (ID's generated as random numbers) | 'none' (disabled).
# @flag -fuse-line-directives                      Use ♯line in preprocessed output
# @flag -fvalidate-ast-input-files-content         Compute and store the hash of input files used to build an AST.
# @option -fveclib <value>                         Use the given vector functions library
# @flag -fvectorize                                Enable the loop vectorization passes
# @flag -fverbose-asm                              Generate verbose assembly output
# @flag -fvirtual-function-elimination             Enables dead virtual function elimination optimization.
# @option -fvisibility-dllexport <value>           The visibility for dllexport definitions [-fvisibility-from-dllstorageclass]
# @option -fvisibility-externs-dllimport <value>   The visibility for dllimport external declarations [-fvisibility-from-dllstorageclass]
# @option -fvisibility-externs-nodllstorageclass <value>  The visibility for external declarations without an explicit DLL dllstorageclass [-fvisibility-from-dllstorageclass]
# @flag -fvisibility-from-dllstorageclass          Set the visibility of symbols in the generated code from their DLL storage class
# @flag -fvisibility-global-new-delete-hidden      Give global C++ operator new and delete declarations hidden visibility
# @flag -fvisibility-inlines-hidden-static-local-var  When -fvisibility-inlines-hidden is enabled, static variables in inline C++ member functions will also be given hidden visibility by default
# @flag -fvisibility-inlines-hidden                Give inline C++ member functions hidden visibility by default
# @flag -fvisibility-ms-compat                     Give global types 'default' visibility and global functions and variables 'hidden' visibility by default
# @option -fvisibility-nodllstorageclass <value>   The visibility for definitions without an explicit DLL export class [-fvisibility-from-dllstorageclass]
# @option -fvisibility <value>                     Set the default symbol visibility for all global definitions
# @flag -fwasm-exceptions                          Use WebAssembly style exceptions
# @flag -fwhole-program-vtables                    Enables whole-program vtable optimization.
# @flag -fwrapv                                    Treat signed integer overflow as two's complement
# @flag -fwritable-strings                         Store string literals as writable data
# @flag -fxl-pragma-pack                           Enable IBM XL ♯pragma pack handling
# @flag -fxray-always-emit-customevents            Always emit __xray_customevent(...) calls even if the containing function is not always instrumented
# @flag -fxray-always-emit-typedevents             Always emit __xray_typedevent(...) calls even if the containing function is not always instrumented
# @option -fxray-always-instrument <value>         DEPRECATED: Filename defining the whitelist for imbuing the 'always instrument' XRay attribute.
# @option -fxray-attr-list <value>                 Filename defining the list of functions/types for imbuing XRay attributes.
# @option -fxray-function-groups <value>           Only instrument 1 of N groups
# @flag -fxray-ignore-loops                        Don't instrument functions with loops unless they also meet the minimum function size
# @option -fxray-instruction-threshold <value>     Sets the minimum function size to instrument with XRay
# @option -fxray-instrumentation-bundle[all|none|function-entry|function-exit|function|custom] <value>  Select which XRay instrumentation points to emit.
# @flag -fxray-instrument                          Generate XRay instrumentation sleds on function entry and exit
# @flag -fxray-link-deps                           Tells clang to add the link dependencies for XRay.
# @option -fxray-modes <value>                     List of modes to link in by default into XRay instrumented binaries.
# @option -fxray-never-instrument <value>          DEPRECATED: Filename defining the whitelist for imbuing the 'never instrument' XRay attribute.
# @option -fxray-selected-function-group <value>   When using -fxray-function-groups, select which group of functions to instrument.
# @option -fzero-call-used-regs <value>            Clear call-used registers upon function return (AArch64/x86 only)
# @flag -fzvector                                  Enable System z vector language extension
# @option -F <value>                               Add directory to framework include search path
# @option --gcc-install-dir <value>                Use GCC installation in the specified directory.
# @option --gcc-toolchain <value>                  Specify a directory where Clang can find 'include' and 'lib{,32,64}/gcc{,-cross}/$triple/$version'.
# @flag -gcodeview-command-line                    Emit compiler path and command line into CodeView debug information
# @flag -gcodeview-ghash                           Emit type record hashes in a .debug$H section
# @flag -gcodeview                                 Generate CodeView debug information
# @flag -gdwarf-2                                  Generate source-level debug information with dwarf version 2
# @flag -gdwarf-3                                  Generate source-level debug information with dwarf version 3
# @flag -gdwarf-4                                  Generate source-level debug information with dwarf version 4
# @flag -gdwarf-5                                  Generate source-level debug information with dwarf version 5
# @flag -gdwarf32                                  Enables DWARF32 format for ELF binaries, if debug information emission is enabled.
# @flag -gdwarf64                                  Enables DWARF64 format for ELF binaries, if debug information emission is enabled.
# @flag -gdwarf                                    Generate source-level debug information with the default dwarf version
# @flag -gembed-source                             Embed source text in DWARF debug sections
# @option -gen-reproducer[off|crash|error|always] <value>  Emit reproducer on (option: off, crash (default), error, always)
# @flag -gline-directives-only                     Emit debug line info directives only
# @flag -gline-tables-only                         Emit debug line number tables only
# @flag -gmodules                                  Generate debug info with external references to clang modules or precompiled headers
# @flag -gno-codeview-command-line                 Don't emit compiler path and command line into CodeView debug information
# @flag -gno-embed-source                          Restore the default behavior of not embedding source text in DWARF debug sections
# @flag -gno-inline-line-tables                    Don't emit inline line tables.
# @flag --gpu-bundle-output                        Bundle output files of HIP device compilation
# @option --gpu-instrument-lib <value>             Instrument device library for HIP, which is a LLVM bitcode containing __cyg_profile_func_enter and __cyg_profile_func_exit
# @option --gpu-max-threads-per-block <value>      Default max threads per block for kernel launch bounds for HIP
# @option -gsplit-dwarf <value>                    Set DWARF fission mode
# @option -gz <value>                              DWARF debug sections compression type
# @option -G <size>                                Put objects of at most <size> bytes into small data section (MIPS / Hexagon)
# @flag -g                                         Generate source-level debug information
# @flag --help-hidden                              Display help for hidden options
# @flag -help                                      Display available options
# @option --hip-device-lib <value>                 HIP device library
# @flag --hip-link                                 Link clang-offload-bundler bundles for HIP
# @option --hip-path <value>                       HIP runtime installation path, used for finding HIP version and adding HIP include path.
# @option --hip-version <value>                    HIP version in the format of major.minor.patch
# @option --hipspv-pass-plugin <dsopath>           path to a pass plugin for HIP to SPIR-V passes.
# @flag -H                                         Show header includes and nesting depth
# @flag -I--                                       Restrict all prior -I flags to double-quoted inclusion and remove current directory from include path
# @flag -ibuiltininc                               Enable builtin ♯include directories even when -nostdinc is used before or after -ibuiltininc.
# @option -idirafter <value>                       Add directory to AFTER include search path
# @option -iframeworkwithsysroot <directory>       Add directory to SYSTEM framework search path, absolute paths are relative to -isysroot
# @option -iframework <value>                      Add directory to SYSTEM framework search path
# @option -imacros <file>                          Include macros from file before parsing
# @option -include-pch <file>                      Include precompiled header file
# @option -include <file>                          Include file before parsing
# @flag -index-header-map                          Make the next included directory (-I or -F) an indexer header map
# @option -iprefix <dir>                           Set the -iwithprefix/-iwithprefixbefore prefix
# @option -iquote <directory>                      Add directory to QUOTE include search path
# @option -isysroot <dir>                          Set the system root directory (usually /)
# @option -isystem-after <directory>               Add directory to end of the SYSTEM include search path
# @option -isystem <directory>                     Add directory to SYSTEM include search path
# @option -ivfsoverlay <value>                     Overlay the virtual filesystem described by file over the real file system
# @option -iwithprefixbefore <dir>                 Set directory to include search path with prefix
# @option -iwithprefix <dir>                       Set directory to SYSTEM include search path with prefix
# @option -iwithsysroot <directory>                Add directory to SYSTEM include search path, absolute paths are relative to -isysroot
# @option -I <dir>                                 Add directory to the end of the list of include search paths
# @option --libomptarget-amdgcn-bc-path <value>    Path to libomptarget-amdgcn bitcode library
# @option --libomptarget-amdgpu-bc-path <value>    Path to libomptarget-amdgcn bitcode library
# @option --libomptarget-nvptx-bc-path <value>     Path to libomptarget-nvptx bitcode library
# @option -L <dir>                                 Add directory to library search path
# @option -mabi[quadword-atomics|vec-default|vec-extabi] <quadword-atomics>  Set ABI on AIX
# @flag -mabicalls                                 Enable SVR4-style position-independent code (Mips only)
# @flag -maix-struct-return                        Return all structs in memory (PPC32 only)
# @option -malign-branch-boundary <value>          Specify the boundary's size to align branches
# @option -malign-branch <value>                   Specify types of branches to align
# @flag -malign-double                             Align doubles to two words in structs (x86 only)
# @flag -mamdgpu-ieee                              Sets the IEEE bit in the expected default floating point  mode register.
# @flag -mbackchain                                Link stack frames through backchain on System Z
# @option -mbranch-protection <value>              Enforce targets of indirect branches and function returns
# @option -mbranches-within-32B-boundaries[fused|jcc|jmp]  Align selected branches within 32-byte boundary
# @flag -mcabac                                    Enable CABAC instructions
# @option -mcmodel[default|tiny|small|kernel|medium|large] <kind>  Limit range of code and data virtual addresses
# @flag -mcmse                                     Allow use of CMSE (Armv8-M Security Extensions)
# @flag -mcode-object-v3                           Legacy option to specify code object ABI V3 (AMDGPU only)
# @option -mcode-object-version <value>            Specify code object ABI version.
# @flag -mcrc                                      Allow use of CRC instructions (ARM/Mips only)
# @flag -mcumode                                   Specify CU wavefront execution mode (AMDGPU only)
# @option -mdefault-visibility-export-mapping <value>  Mapping between default visibility and export
# @option -mdouble <<n             Force double to be <n> bits #>
# @flag -MD                                        Write a depfile containing user and system headers
# @option -meabi <value>                           Set EABI type.
# @flag -membedded-data                            Place constants in the .rodata section instead of the .sdata section even if they meet the -G <size> threshold (MIPS)
# @flag -menable-experimental-extensions           Enable use of experimental RISC-V extensions.
# @option -mexec-model <value>                     Execution model (WebAssembly only)
# @flag -mexecute-only                             Disallow generation of data access to code sections (ARM only)
# @flag -mextern-sdata                             Assume that externally defined data is in the small data if it meets the -G <size> threshold (MIPS)
# @flag -mfentry                                   Insert calls to fentry at function entry (x86/SystemZ only)
# @flag -mfix-cmse-cve-2021-35465                  Work around VLLDM erratum CVE-2021-35465 (ARM only)
# @flag -mfix-cortex-a53-835769                    Workaround Cortex-A53 erratum 835769 (AArch64 only)
# @flag -mfix-cortex-a57-aes-1742098               Work around Cortex-A57 Erratum 1742098 (ARM only)
# @flag -mfix-cortex-a72-aes-1655431               Work around Cortex-A72 Erratum 1655431 (ARM only)
# @flag -mfp32                                     Use 32-bit floating point registers (MIPS only)
# @flag -mfp64                                     Use 64-bit floating point registers (MIPS only)
# @option -mframe-chain <value>                    Select the frame chain model used to emit frame records (Arm only).
# @option -mfunction-return <value>                Replace returns with jumps to ``__x86_return_thunk`` (x86 only, error otherwise)
# @option -MF <file>                               Write depfile output from -MMD, -MD, -MM, or -M to <file>
# @flag -mgeneral-regs-only                        Generate code which only uses the general purpose registers (AArch64/x86 only)
# @flag -mglobal-merge                             Enable merging of globals
# @flag -mgpopt                                    Use GP relative accesses for symbols known to be in a small data section (MIPS)
# @option -mguard <value>                          Enable or disable Control Flow Guard checks and guard tables emission
# @flag -MG                                        Add missing headers to depfile
# @option -mharden-sls <value>                     Select straight-line speculation hardening scope (ARM/AArch64/X86 only).
# @flag -mhvx-ieee-fp                              Enable Hexagon HVX IEEE floating-point
# @option -mhvx-length <value>                     Set Hexagon Vector Length
# @flag -mhvx-qfloat                               Enable Hexagon HVX QFloat instructions
# @option -mhvx <value>                            Enable Hexagon Vector eXtensions
# @flag -miamcu                                    Use Intel MCU ABI
# @flag -mignore-xcoff-visibility                  Not emit the visibility attribute for asm in AIX OS or give all symbols 'unspecified' visibility in XCOFF object file
# @flag --migrate                                  Run the migrator
# @flag -mincremental-linker-compatible            (integrated-as) Emit an object file which can be used with an incremental linker
# @flag -mindirect-branch-cs-prefix                Add cs prefix to call and jmp to indirect thunk
# @option -mindirect-jump <value>                  Change indirect jump instructions to inhibit speculation
# @option -mios-version-min <value>                Set iOS deployment target
# @option -MJ <value>                              Write a compilation database entry per input
# @option -mllvm <value>                           Additional arguments to forward to LLVM's option processing
# @flag -mlocal-sdata                              Extend the -G behaviour to object local data (MIPS)
# @flag -mlong-calls                               Generate branches with extended addressability, usually via indirect jumps.
# @flag -mlong-double-128                          Force long double to be 128 bits
# @flag -mlong-double-64                           Force long double to be 64 bits
# @flag -mlong-double-80                           Force long double to be 80 bits, padded to 128 bits for storage
# @flag -mlvi-cfi                                  Enable only control-flow mitigations for Load Value Injection (LVI)
# @flag -mlvi-hardening                            Enable all mitigations for Load Value Injection (LVI)
# @option -mmacos-version-min <value>              Set macOS deployment target
# @flag -mmadd4                                    Enable the generation of 4-operand madd.s, madd.d and related instructions.
# @flag -mmark-bti-property                        Add .note.gnu.property with BTI to assembly files (AArch64 only)
# @flag -MMD                                       Write a depfile containing user headers
# @flag -mmemops                                   Enable generation of memop instructions
# @option -mmlir <value>                           Additional arguments to forward to MLIR's option processing
# @flag -mms-bitfields                             Set the default structure layout to be compatible with the Microsoft compiler standard
# @flag -mmsa                                      Enable MSA ASE (MIPS only)
# @flag -mmt                                       Enable MT ASE (MIPS only)
# @flag -MM                                        Like -MMD, but also implies -E and writes to stdout by default
# @flag -mno-abicalls                              Disable SVR4-style position-independent code (Mips only)
# @flag -mno-bti-at-return-twice                   Do not add a BTI instruction after a setjmp or other return-twice construct (Arm/AArch64 only)
# @flag -mno-code-object-v3                        Legacy option to specify code object ABI V2 (AMDGPU only)
# @flag -mno-crc                                   Disallow use of CRC instructions (Mips only)
# @flag -mno-cumode                                Specify WGP wavefront execution mode (AMDGPU only)
# @flag -mno-embedded-data                         Do not place constants in the .rodata section instead of the .sdata if they meet the -G <size> threshold (MIPS)
# @flag -mno-execute-only                          Allow generation of data access to code sections (ARM only)
# @flag -mno-extern-sdata                          Do not assume that externally defined data is in the small data if it meets the -G <size> threshold (MIPS)
# @flag -mno-fix-cmse-cve-2021-35465               Don't work around VLLDM erratum CVE-2021-35465 (ARM only)
# @flag -mno-fix-cortex-a53-835769                 Don't workaround Cortex-A53 erratum 835769 (AArch64 only)
# @flag -mno-fix-cortex-a57-aes-1742098            Don't work around Cortex-A57 Erratum 1742098 (ARM only)
# @flag -mno-fix-cortex-a72-aes-1655431            Don't work around Cortex-A72 Erratum 1655431 (ARM only)
# @flag -mno-fmv                                   Disable function multiversioning
# @flag -mno-global-merge                          Disable merging of globals
# @flag -mno-gpopt                                 Do not use GP relative accesses for symbols known to be in a small data section (MIPS)
# @flag -mno-hvx-ieee-fp                           Disable Hexagon HVX IEEE floating-point
# @flag -mno-hvx-qfloat                            Disable Hexagon HVX QFloat instructions
# @flag -mno-hvx                                   Disable Hexagon Vector eXtensions
# @flag -mno-implicit-float                        Don't generate implicit floating point or vector instructions
# @flag -mno-incremental-linker-compatible         (integrated-as) Emit an object file which cannot be used with an incremental linker
# @flag -mno-local-sdata                           Do not extend the -G behaviour to object local data (MIPS)
# @flag -mno-long-calls                            Restore the default behaviour of not generating long calls
# @flag -mno-lvi-cfi                               Disable control-flow mitigations for Load Value Injection (LVI)
# @flag -mno-lvi-hardening                         Disable mitigations for Load Value Injection (LVI)
# @flag -mno-madd4                                 Disable the generation of 4-operand madd.s, madd.d and related instructions.
# @flag -mno-memops                                Disable generation of memop instructions
# @flag -mno-movt                                  Disallow use of movt/movw pairs (ARM only)
# @flag -mno-ms-bitfields                          Do not set the default structure layout to be compatible with the Microsoft compiler standard
# @flag -mno-msa                                   Disable MSA ASE (MIPS only)
# @flag -mno-mt                                    Disable MT ASE (MIPS only)
# @flag -mno-neg-immediates                        Disallow converting instructions with negative immediates to their negation or inversion.
# @flag -mno-nvj                                   Disable generation of new-value jumps
# @flag -mno-nvs                                   Disable generation of new-value stores
# @flag -mno-outline-atomics                       Don't generate local calls to out-of-line atomic operations
# @flag -mno-outline                               Disable function outlining (AArch64 only)
# @flag -mno-packets                               Disable generation of instruction packets
# @flag -mno-pic-data-is-text-relative             Don't assume data segments are relative to text segment
# @flag -mno-relax                                 Disable linker relaxation
# @flag -mno-restrict-it                           Allow generation of complex IT blocks.
# @flag -mno-save-restore                          Disable using library calls for save and restore
# @flag -mno-seses                                 Disable speculative execution side effect suppression (SESES)
# @flag -mno-stack-arg-probe                       Disable stack probes which are enabled by default
# @flag -mno-tgsplit                               Disable threadgroup split execution mode (AMDGPU only)
# @flag -mno-tls-direct-seg-refs                   Disable direct TLS access through segment registers
# @flag -mno-unaligned-access                      Force all memory accesses to be aligned (AArch32/AArch64 only)
# @flag -mno-wavefrontsize64                       Specify wavefront size 32 mode (AMDGPU only)
# @flag -mnocrc                                    Disallow use of CRC instructions (ARM only)
# @flag -mnop-mcount                               Generate mcount/__fentry__ calls as nops.
# @flag -mnvj                                      Enable generation of new-value jumps
# @flag -mnvs                                      Enable generation of new-value stores
# @option -module-dependency-dir <value>           Directory to dump module dependencies to
# @flag -module-file-info                          Provide information about a particular module file
# @flag -momit-leaf-frame-pointer                  Omit frame pointer setup for leaf functions
# @flag -moutline-atomics                          Generate local calls to out-of-line atomic operations
# @flag -moutline                                  Enable function outlining (AArch64 only)
# @flag -mpacked-stack                             Use packed stack layout (SystemZ only).
# @flag -mpackets                                  Enable generation of instruction packets
# @option -mpad-max-prefix-size <value>            Specify maximum number of prefixes to use for padding
# @flag -mpic-data-is-text-relative                Assume data segments are relative to text segment
# @option -mprefer-vector-width <value>            Specifies preferred vector width for auto-vectorization.
# @flag -MP                                        Create phony target for each dependency (other than main file)
# @flag -mqdsp6-compat                             Enable hexagon-qdsp6 backward compatibility
# @option -MQ <value>                              Specify name of main file output to quote in depfile
# @flag -mrecord-mcount                            Generate a __mcount_loc section entry for each __fentry__ call.
# @flag -mrelax-all                                (integrated-as) Relax all machine instructions
# @flag -mrelax                                    Enable linker relaxation
# @flag -mrestrict-it                              Disallow generation of complex IT blocks.
# @flag -mrtd                                      Make StdCall calling convention the default
# @flag -msave-restore                             Enable using library calls for save and restore
# @flag -mseses                                    Enable speculative execution side effect suppression (SESES).
# @option -msign-return-address <value>            Select return address signing scope
# @flag -mskip-rax-setup                           Skip setting up RAX register when passing variable arguments (x86 only)
# @option -msmall-data-limit <value>               Put global and static data smaller than the limit into a special section
# @flag -msoft-float                               Use software floating point
# @option -mstack-alignment <value>                Set the stack alignment
# @flag -mstack-arg-probe                          Enable stack probes
# @option -mstack-probe-size <value>               Set the stack probe size
# @option -mstack-protector-guard-offset <value>   Use the given offset for addressing the stack-protector guard
# @option -mstack-protector-guard-reg <value>      Use the given reg for addressing the stack-protector guard
# @option -mstack-protector-guard-symbol <value>   Use the given symbol for addressing the stack-protector guard
# @option -mstack-protector-guard[global|tls] <value>  Use the given guard for addressing the stack-protector guard
# @flag -mstackrealign                             Force realign the stack at entry to every function
# @option -msve-vector-bits <value>                Specify the size in bits of an SVE vector register.
# @flag -msvr4-struct-return                       Return small structs in registers (PPC32 only)
# @option -mtargetos <value>                       Set the deployment target to be the specified OS and OS version
# @flag -mtgsplit                                  Enable threadgroup split execution mode (AMDGPU only)
# @option -mthread-model <value>                   The thread model to use.
# @flag -mtls-direct-seg-refs                      Enable direct TLS access through segment registers (default)
# @option -mtls-size <value>                       Specify bit size of immediate TLS offsets (AArch64 ELF only): 12 (for 4KB) | 24 (for 16MB, default) | 32 (for 4GB) | 48 (for 256TB, needs -mcmodel=large)
# @option -mtp <value>                             Thread pointer access method (AArch32/AArch64 only)
# @option -mtune <value>                           Only supported on AArch64, PowerPC, RISC-V, SystemZ, and X86
# @option -MT <value>                              Specify name of main file output in depfile
# @flag -munaligned-access                         Allow memory accesses to be unaligned (AArch32/AArch64 only)
# @flag -munsafe-fp-atomics                        Enable unsafe floating point atomic instructions (AMDGPU only)
# @option -mvscale-max <value>                     Specify the vscale maximum.
# @option -mvscale-min <value>                     Specify the vscale minimum.
# @flag -MV                                        Use NMake/Jom format for the depfile
# @flag -mwavefrontsize64                          Specify wavefront size 64 mode (AMDGPU only)
# @flag -M                                         Like -MD, but also implies -E and writes to stdout by default
# @option --no-cuda-include-ptx <value>            Do not include PTX for the following GPU architecture (e.g. sm_35) or 'all'.
# @flag --no-cuda-version-check                    Don't error out if the detected version of the CUDA install is too low for the requested CUDA gpu architecture.
# @flag --no-default-config                        Disable loading default configuration files
# @flag --no-gpu-bundle-output                     Do not bundle output files of HIP device compilation
# @flag -no-hip-rt                                 Do not link against HIP runtime libraries
# @flag --no-offload-add-rpath                     Do not add -rpath with HIP runtime library directory to the linker flags
# @option --no-offload-arch <value>                Remove CUDA/HIP offloading device architecture (e.g. sm_35, gfx906) from the list of devices to compile for.
# @flag --no-offload-new-driver                    Don't Use the new driver for offloading compilation.
# @option --no-system-header-prefix <prefix>       Treat all ♯include paths starting with <prefix> as not including a system header.
# @flag -nobuiltininc                              Disable builtin ♯include directories
# @flag -nogpuinc                                  Do not add include paths for CUDA/HIP and do not include the default CUDA/HIP wrapper headers
# @flag -nogpulib                                  Do not link device library for CUDA/HIP device compilation
# @flag -nohipwrapperinc                           Do not include the default HIP wrapper headers and include paths
# @option -nostdinc <++>                           Disable standard ♯include directories for the C++ standard library
# @option --nvptx-arch-tool <value>                Tool used for detecting NVIDIA GPU arch in the system.
# @option -ObjC <++>                               Treat source input files as Objective-C++ inputs
# @option -objcmt-allowlist-dir-path <value>       Only modify files with a filename contained in the provided directory path
# @flag -objcmt-atomic-property                    Make migration to 'atomic' properties
# @flag -objcmt-migrate-all                        Enable migration to modern ObjC
# @flag -objcmt-migrate-annotation                 Enable migration to property and method annotations
# @flag -objcmt-migrate-designated-init            Enable migration to infer NS_DESIGNATED_INITIALIZER for initializer methods
# @flag -objcmt-migrate-instancetype               Enable migration to infer instancetype for method result type
# @flag -objcmt-migrate-literals                   Enable migration to modern ObjC literals
# @flag -objcmt-migrate-ns-macros                  Enable migration to NS_ENUM/NS_OPTIONS macros
# @flag -objcmt-migrate-property-dot-syntax        Enable migration of setter/getter messages to property-dot syntax
# @flag -objcmt-migrate-property                   Enable migration to modern ObjC property
# @flag -objcmt-migrate-protocol-conformance       Enable migration to add protocol conformance on classes
# @flag -objcmt-migrate-readonly-property          Enable migration to modern ObjC readonly property
# @flag -objcmt-migrate-readwrite-property         Enable migration to modern ObjC readwrite property
# @flag -objcmt-migrate-subscripting               Enable migration to modern ObjC subscripting
# @flag -objcmt-ns-nonatomic-iosonly               Enable migration to use NS_NONATOMIC_IOSONLY macro for setting property's 'atomic' attribute
# @flag -objcmt-returns-innerpointer-property      Enable migration to annotate property with NS_RETURNS_INNER_POINTER
# @option -objcmt-whitelist-dir-path <value>       Alias for -objcmt-allowlist-dir-path
# @option -object-file-name <file>                 Set the output <file> for debug infos
# @flag --offload-add-rpath                        Add -rpath with HIP runtime library directory to the linker flags
# @option --offload-arch <value>                   Specify an offloading device architecture for CUDA, HIP, or OpenMP.
# @flag --offload-device-only                      Only compile for the offloading device.
# @flag --offload-host-device                      Only compile for the offloading host.
# @flag --offload-host-only                        Only compile for the offloading host.
# @flag --offload-link                             Use the new offloading linker to perform the link job.
# @flag --offload-new-driver                       Use the new driver for offloading compilation.
# @option --offload <value>                        Specify comma-separated list of offloading target triples (CUDA and HIP only)
# @option -o <file>                                Write output to <file>
# @flag -pedantic                                  Warn on language extensions
# @flag -pg                                        Enable mcount instrumentation
# @flag -pipe                                      Use pipes between commands, when possible
# @flag --precompile                               Only precompile the input
# @flag -print-diagnostic-options                  Print all of Clang's warning options
# @flag -print-effective-triple                    Print the effective target triple
# @option -print-file-name <file>                  Print the full library path of <file>
# @flag -print-ivar-layout                         Enable Objective-C Ivar layout bitmap print trace
# @flag -print-libgcc-file-name                    Print the library path for the currently used compiler runtime library ("libgcc.a" or "libclang_rt.builtins.*.a")
# @option -print-prog-name <name>                  Print the full program path of <name>
# @flag -print-resource-dir                        Print the resource directory pathname
# @flag -print-rocm-search-dirs                    Print the paths used for finding ROCm installation
# @flag -print-runtime-dir                         Print the directory pathname containing clangs runtime libraries
# @flag -print-search-dirs                         Print the paths used for finding libraries and programs
# @flag -print-supported-cpus                      Print supported cpu models for the given target (if target is not specified, it will print the supported cpus for the default target)
# @flag -print-target-triple                       Print the normalized target triple
# @flag -print-targets                             Print the registered targets
# @flag -pthread                                   Support POSIX threads in generated code
# @option --ptxas-path <value>                     Path to ptxas (used for compiling CUDA code)
# @flag -P                                         Disable linemarker output in -E mode
# @flag -Qn                                        Do not emit metadata containing compiler name and version
# @flag -Qunused-arguments                         Don't emit warning for unused driver arguments
# @flag -Qy                                        Emit metadata containing compiler name and version
# @flag -relocatable-pch                           Whether to build a relocatable precompiled header
# @flag -rewrite-legacy-objc                       Rewrite Legacy Objective-C source to C++
# @flag -rewrite-objc                              Rewrite Objective-C source to C++
# @option --rocm-device-lib-path <value>           ROCm device library path.
# @option --rocm-path <value>                      ROCm installation path, used for finding and automatically linking required bitcode libraries.
# @option -Rpass-analysis <value>                  Report transformation analysis from optimization passes whose name matches the given POSIX regular expression
# @option -Rpass-missed <value>                    Report missed transformations by optimization passes whose name matches the given POSIX regular expression
# @option -Rpass <value>                           Report transformations performed by optimization passes whose name matches the given POSIX regular expression
# @option -rtlib <value>                           Compiler runtime library to use
# @option -R <remark>                              Enable the specified remark
# @option -save-stats <value>                      Save llvm statistics.
# @option -save-temps <value>                      Save intermediate compilation results.
# @option -serialize-diagnostics <value>           Serialize compiler diagnostics to a file
# @flag -shared-libsan                             Dynamically link the sanitizer runtime
# @flag --start-no-unused-arguments                Don't emit warnings about unused arguments for the following arguments
# @flag -static-libsan                             Statically link the sanitizer runtime
# @flag -static-openmp                             Use the static host OpenMP runtime while linking.
# @option -std <value>                             Language standard to compile for Use directory as the C++ standard library include path
# @option -stdlib <value>                          C++ standard library to use
# @option -sycl-std <value>                        SYCL language standard to compile for.
# @option --system-header-prefix <prefix>          Treat all ♯include paths starting with <prefix> as including a system header.
# @flag -S                                         Only run preprocess and compilation steps
# @option --target <value>                         Generate code for the given target
# @flag -time                                      Time individual commands
# @flag -traditional-cpp                           Enable some traditional CPP emulation
# @flag -trigraphs                                 Process trigraph sequences
# @option -T <script>                              Specify <script> as linker script
# @flag -undef                                     undef all system defines
# @option -unwindlib <value>                       Unwind library to use
# @option -U <macro>                               Undefine macro <macro>
# @flag --verify-debug-info                        Verify the binary representation of debug output
# @flag -verify-pch                                Load and verify that a pre-compiled header file is not stale
# @flag --version                                  Print version information
# @flag -v                                         Show commands to run and use verbose output
# @option -Wa <,<arg>>                             Pass the comma separated arguments in <arg> to the assembler
# @flag -Wdeprecated                               Enable warnings for deprecated constructs and define __DEPRECATED
# @option -Wl <,<arg>>                             Pass the comma separated arguments in <arg> to the linker
# @option -working-directory <value>               Resolve file paths relative to the specified directory
# @option -Wp <,<arg>>                             Pass the comma separated arguments in <arg> to the preprocessor
# @option -W <warning>                             Enable the specified warning
# @flag -w                                         Suppress all warnings
# @option -Xanalyzer <arg>                         Pass <arg> to the static analyzer
# @option -Xarch_device <arg>                      Pass <arg> to the CUDA/HIP device compilation
# @option -Xarch_host <arg>                        Pass <arg> to the CUDA/HIP host compilation
# @option -Xassembler <arg>                        Pass <arg> to the assembler
# @option -Xclang <arg>                            Pass <arg> to clang -cc1
# @option -Xcuda-fatbinary <arg>                   Pass <arg> to fatbinary invocation
# @option -Xcuda-ptxas <arg>                       Pass <arg> to the ptxas assembler
# @option -Xlinker <arg>                           Pass <arg> to the linker
# @option -Xoffload-linker <triple> <arg>          Pass <arg> to the offload linkers or the ones idenfied by -<triple>
# @option -Xopenmp-target <triple> <arg>           Pass <arg> to the target offloading toolchain identified by <triple>.
# @option -Xpreprocessor <arg>                     Pass <arg> to the preprocessor
# @option -x <language>                            Treat subsequent input files as having type <language>
# @option -z <arg>                                 Pass -z <arg> to the linker
# @arg file*
cc() {
    :;
}
# }} zig cc

# {{ zig dlltool
# @cmd Use Zig as a drop-in dlltool.exe
# @option -D <value>    Specify the input DLL Name
# @option -d <value>    Input .def File
# @option -f <value>    Assembler Flags
# @flag -k              Kill @n Symbol from export
# @option -l <value>    Generate an import lib
# @option -m <value>    Set target machine
# @option -S <value>    Assembler
# @arg file*
dlltool() {
    :;
}
# }} zig dlltool

# {{ zig lib
# @cmd Use Zig as a drop-in lib.exe
lib() {
    :;
}
# }} zig lib

# {{ zig ranlib
# @cmd Use Zig as a drop-in ranlib
# @flag -h --help       - Display available options
# @flag -v --version    - Display the version of this program
# @flag -D              - Use zero for timestamps and uids/gids (default)
# @flag -U              - Use actual timestamps and uids/gids
ranlib() {
    :;
}
# }} zig ranlib

# {{ zig objcopy
# @cmd Use Zig as a drop-in objcopy
# @flag -h --help                                 Print this help and exit
# @option --output-target <value>                 Format of the output file
# @option -O <value>                              Alias for --output-target
# @option --only-section <section>                Remove all but <section>
# @option -j <value>                              Alias for --only-section
# @option --pad-to <addr>                         Pad the last section up to address <addr>
# @flag -g --strip-debug                          Remove all debug sections from the output.
# @flag -S --strip-all                            Remove all debug sections and symbol table from the output.
# @flag --only-keep-debug                         Strip a file, removing contents of any sections that would not be stripped by --strip-debug and leaving the debugging sections intact.
# @option --add-gnu-debuglink <file>              Creates a .gnu_debuglink section which contains a reference to <file> and adds it to the output file.
# @option --extract-to <file>                     Extract the removed sections into <file>, and add a .gnu-debuglink section.
# @option --compress-debug-sections[none|zlib]    Compress DWARF debug sections with zlib
# @arg input
# @arg output
objcopy() {
    :;
}
# }} zig objcopy

# {{ zig env
# @cmd Print lib path, std path, cache directory, and version
env() {
    :;
}
# }} zig env

# {{ zig libc
# @cmd Display native libc paths file or validate one
# @flag -h --help           Print this help and exit
# @option -target <name>    <arch><sub>-<os>-<abi> see the targets command
libc() {
    :;
}
# }} zig libc

# {{ zig targets
# @cmd List available compilation targets
targets() {
    :;
}
# }} zig targets

# {{ zig version
# @cmd Print version number and exit
version() {
    :;
}
# }} zig version

# {{ zig zen
# @cmd Print Zen of Zig and exit
zen() {
    :;
}
# }} zig zen

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_steps() {
    cat <<-'EOF'
install	Copy build artifacts to prefix path
uninstall	Remove build artifacts from prefix path
run	Run the app
test	Run unit tests
EOF
}

_choice_ofmt() {
    cat <<-'EOF'
elf	Executable and Linking Format
c	C source code
wasm	WebAssembly
coff	Common Object File Format (Windows)
macho	macOS relocatables
spirv	Standard, Portable Intermediate Representation V (SPIR-V)
plan9	Plan 9 from Bell Labs object format
hex	Intel IHEX
raw	Dump machine code directly
EOF
}

_argc_ar() {
    _argc_util_comp_subcommand 0 ar
}

command eval "$(argc --argc-eval "$0" "$@")"