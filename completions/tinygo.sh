#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands

# {{ tinygo build
# @cmd compile packages and dependencies
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @flag -json                                 print data in JSON format
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -o <file>                           output filename
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
build() {
    :;
}
# }} tinygo build

# {{ tinygo run
# @cmd compile and run immediately
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
run() {
    :;
}
# }} tinygo run

# {{ tinygo test
# @cmd test packages
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -bench <string>                     bench: regexp of benchmarks to run
# @flag -benchmem                             show memory stats for benchmarks
# @option -benchtime <d>                      run each benchmark for duration d
# @flag -c                                    compile the test binary but do not run it
# @option -count <count>                      count: number of times to run tests/benchmarks count times (default 1)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -o <file>                           output filename
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -run <string>                       run: regexp of tests to run
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @flag -short                                short: run smaller test suite to save time
# @option -shuffle <string>                   shuffle the order the tests and benchmarks run
# @option -size[none|short|full] <string>     print sizes
# @option -skip <string>                      skip: regexp of tests to skip
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -v                                    verbose: print additional output
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
test() {
    :;
}
# }} tinygo test

# {{ tinygo flash
# @cmd compile and flash to the device
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
flash() {
    :;
}
# }} tinygo flash

# {{ tinygo gdb
# @cmd run/flash and immediately enter GDB
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
gdb() {
    :;
}
# }} tinygo gdb

# {{ tinygo lldb
# @cmd run/flash and immediately enter LLDB
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
lldb() {
    :;
}
# }} tinygo lldb

# {{ tinygo monitor
# @cmd open communication port
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
monitor() {
    :;
}
# }} tinygo monitor

# {{ tinygo env
# @cmd list environment variables used during build
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
env() {
    :;
}
# }} tinygo env

# {{ tinygo list
# @cmd run go list using the TinyGo root
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @flag -deps                                 supply -deps flag to go list
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @flag -json                                 print data in JSON format
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @flag -test                                 supply -test flag to go list
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
list() {
    :;
}
# }} tinygo list

# {{ tinygo clean
# @cmd empty cache directory (/home/sigo/.cache/tinygo)
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
clean() {
    :;
}
# }} tinygo clean

# {{ tinygo targets
# @cmd list targets
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
targets() {
    :;
}
# }} tinygo targets

# {{ tinygo info
# @cmd show info for specified target
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @flag -json                                 print data in JSON format
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
info() {
    :;
}
# }} tinygo info

# {{ tinygo version
# @cmd show version
# @option -baudrate <int>                     baudrate of serial monitor (default 115200)
# @option -cpuprofile <file>                  cpuprofile output
# @option -gc[none|leaking|conservative] <string>  garbage collector to use
# @flag -internal-dumpssa                     dump internal Go SSA
# @flag -internal-nodwarf                     internal flag, use -no-debug instead
# @flag -internal-printir                     print LLVM IR
# @flag -internal-verifyir                    run extra verification steps on LLVM IR
# @option -interp-timeout <duration>          interp optimization pass timeout (default 3m0s)
# @option -ldflags <string>                   Go link tool compatible ldflags
# @option -llvm-features <string>             comma separated LLVM features to enable
# @flag -monitor                              enable serial monitor
# @flag -no-debug                             strip debug information
# @option -ocd-commands <string>              OpenOCD commands, overriding target spec (can specify multiple separated by commas)
# @flag -ocd-output                           print OCD daemon output during debug
# @option -opt[0|1|2|s|z] <string>            optimization level: 0, 1, 2, s, z (default "z")
# @option -p <int>                            the number of build jobs that can run in parallel (default 20)
# @option -panic[print|trap] <string>         panic strategy (default "print")
# @option -port <string>                      flash port (can specify multiple candidates separated by commas)
# @option -print-allocs <string>              regular expression of functions for which heap allocations should be printed
# @flag -print-stacks                         print stack sizes of goroutines
# @option -programmer <string>                which hardware programmer to use
# @option -scheduler[none|tasks|asyncify] <string>  which scheduler to use
# @option -serial[none|uart|usb] <string>     which serial output to use
# @option -size[none|short|full] <string>     print sizes
# @option -stack-size <value>                 goroutine stack size (if unknown at compile time)
# @option -tags <value>                       a space-separated list of extra build tags
# @option -target[`_choice_target`] <file>    chip/board name or JSON target specification file
# @option -timeout <duration>                 the length of time to retry locating the MSD volume to be used for flashing (default 20s)
# @flag -work                                 print the name of the temporary build directory and do not delete this directory on exit
# @flag -x                                    Print commands
version() {
    :;
}
# }} tinygo version

_choice_target() {
    tinygo targets
}

command eval "$(argc --argc-eval "$0" "$@")"