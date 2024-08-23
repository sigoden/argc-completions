#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                              Show this help messages
# @flag -v --version                           Show version information
# @flag --reactor                              Enable reactor mode.
# @option --dir <geust:host:mode>              Binding directories into WASI virtual filesystem.
# @option --env <key=value>                    Environ variables.
# @flag --enable-instruction-count             Enable generating code for counting Wasm instructions executed.
# @flag --enable-gas-measuring                 Enable generating code for counting gas burned during execution.
# @flag --enable-time-measuring                Enable generating code for counting time during execution.
# @flag --enable-all-statistics                Enable generating code for all statistics options include instruction counting, gas measuring, and execution time
# @flag --enable-jit                           Enable Just-In-Time compiler for running WASM
# @flag --force-interpreter                    Forcibly run WASM in interpreter mode.
# @flag --disable-import-export-mut-globals    Disable Import/Export of mutable globals proposal
# @flag --disable-non-trap-float-to-int        Disable Non-trapping float-to-int conversions proposal
# @flag --disable-sign-extension-operators     Disable Sign-extension operators proposal
# @flag --disable-multi-value                  Disable Multi-value proposal
# @flag --disable-bulk-memory                  Disable Bulk memory operations proposal
# @flag --disable-reference-types              Disable Reference types proposal
# @flag --disable-simd                         Disable SIMD proposal
# @flag --allow-af-unix                        Enable UNIX domain sockets
# @flag --enable-multi-memory                  Enable Multiple memories proposal
# @flag --enable-tail-call                     Enable Tail-call proposal
# @flag --enable-extended-const                Enable Extended-const proposal
# @flag --enable-threads                       Enable Threads proposal
# @flag --enable-function-reference            Enable Function Reference proposal
# @flag --enable-gc                            Enable GC proposal, this is experimental
# @flag --enable-component                     Enable Component Model proposal, this is experimental
# @flag --enable-exception-handling            Enable Exception handling proposal
# @flag --enable-all                           Enable all features
# @option --time-limit <value>                 Limitation of maximum time(in milliseconds) for execution, default value is 0 for no limitations
# @option --gas-limit <value>                  Limitation of execution gas.
# @option --memory-page-limit <value>          Limitation of pages(as size of 64 KiB) in every memory instance.
# @option --forbidden-plugin <plugin>          List of plugins to ignore.

# {{ wasmedge compile
# @cmd Wasmedge compiler subcommand
# @flag -h --help                              Show this help messages
# @flag --dump                                 Dump LLVM IR to `wasm.ll` and `wasm-opt.ll`.
# @flag --interruptible                        Generate a interruptible binary
# @flag --enable-instruction-count             Enable generating code for counting Wasm instructions executed.
# @flag --enable-gas-measuring                 Enable generating code for counting gas burned during execution.
# @flag --enable-time-measuring                Enable generating code for counting time during execution.
# @flag --enable-all-statistics                Enable generating code for all statistics options include instruction counting, gas measuring, and execution time
# @flag --generic-binary                       Generate a generic binary
# @flag --disable-import-export-mut-globals    Disable Import/Export of mutable globals proposal
# @flag --disable-non-trap-float-to-int        Disable Non-trapping float-to-int conversions proposal
# @flag --disable-sign-extension-operators     Disable Sign-extension operators proposal
# @flag --disable-multi-value                  Disable Multi-value proposal
# @flag --disable-bulk-memory                  Disable Bulk memory operations proposal
# @flag --disable-reference-types              Disable Reference types proposal
# @flag --disable-simd                         Disable SIMD proposal
# @flag --enable-multi-memory                  Enable Multiple memories proposal
# @flag --enable-tail-call                     Enable Tail-call proposal
# @flag --enable-extended-const                Enable Extended-const proposal
# @flag --enable-threads                       Enable Threads proposal
# @flag --enable-function-reference            Enable Function Reference proposal
# @flag --enable-all                           Enable all features
# @option --optimize <value>                   Optimization level, one of 0, 1, 2, 3, s, z.
compile() {
    :;
}
# }} wasmedge compile

# {{ wasmedge run
# @cmd Wasmedge runtime tool subcommand
# @flag -h --help                              Show this help messages
# @flag --reactor                              Enable reactor mode.
# @option --dir <geust:host:mode>              Binding directories into WASI virtual filesystem.
# @option --env <key=value>                    Environ variables.
# @flag --enable-instruction-count             Enable generating code for counting Wasm instructions executed.
# @flag --enable-gas-measuring                 Enable generating code for counting gas burned during execution.
# @flag --enable-time-measuring                Enable generating code for counting time during execution.
# @flag --enable-all-statistics                Enable generating code for all statistics options include instruction counting, gas measuring, and execution time
# @flag --enable-jit                           Enable Just-In-Time compiler for running WASM
# @flag --force-interpreter                    Forcibly run WASM in interpreter mode.
# @flag --disable-import-export-mut-globals    Disable Import/Export of mutable globals proposal
# @flag --disable-non-trap-float-to-int        Disable Non-trapping float-to-int conversions proposal
# @flag --disable-sign-extension-operators     Disable Sign-extension operators proposal
# @flag --disable-multi-value                  Disable Multi-value proposal
# @flag --disable-bulk-memory                  Disable Bulk memory operations proposal
# @flag --disable-reference-types              Disable Reference types proposal
# @flag --disable-simd                         Disable SIMD proposal
# @flag --allow-af-unix                        Enable UNIX domain sockets
# @flag --enable-multi-memory                  Enable Multiple memories proposal
# @flag --enable-tail-call                     Enable Tail-call proposal
# @flag --enable-extended-const                Enable Extended-const proposal
# @flag --enable-threads                       Enable Threads proposal
# @flag --enable-function-reference            Enable Function Reference proposal
# @flag --enable-gc                            Enable GC proposal, this is experimental
# @flag --enable-component                     Enable Component Model proposal, this is experimental
# @flag --enable-exception-handling            Enable Exception handling proposal
# @flag --enable-all                           Enable all features
# @option --time-limit <value>                 Limitation of maximum time(in milliseconds) for execution, default value is 0 for no limitations
# @option --gas-limit <value>                  Limitation of execution gas.
# @option --memory-page-limit <value>          Limitation of pages(as size of 64 KiB) in every memory instance.
# @option --forbidden-plugin <plugin>          List of plugins to ignore.
run() {
    :;
}
# }} wasmedge run

command eval "$(argc --argc-eval "$0" "$@")"