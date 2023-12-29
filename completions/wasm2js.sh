#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -o --output                              Output file (stdout if not specified)
# @flag --allow-asserts                          Allow compilation of .wast testing asserts
# @flag --pedantic                               Emulate WebAssembly trapping behavior
# @flag --emscripten                             Emulate the glue in emscripten-compatible form (and not ES6 module form)
# @flag --deterministic                          Replace WebAssembly trapping behavior deterministically (the default is to not care about what would trap in wasm, like a load out of bounds or integer divide by zero; with this flag, we try to be deterministic at least in what happens, which might or might not be to trap like wasm, but at least should not vary)
# @flag --symbols-file                           Emit a symbols file that maps function indexes to their original names
# @flag --abstract-type-refining                 refine and merge abstract (never-created) types
# @flag --alignment-lowering                     lower unaligned loads and stores to smaller aligned ones
# @flag --asyncify                               async/await style transform, allowing pausing and resuming
# @flag --avoid-reinterprets                     Tries to avoid reinterpret operations via more loads
# @flag --cfp                                    propagate constant struct field values
# @flag --coalesce-locals                        reduce ♯ of locals by coalescing
# @flag --coalesce-locals-learning               reduce ♯ of locals by coalescing and learning
# @flag --code-folding                           fold code, merging duplicates
# @flag --code-pushing                           push code forward, potentially making it not always execute
# @flag --const-hoisting                         hoist repeated constants to a local
# @flag --dae                                    removes arguments to calls in an lto-like manner
# @flag --dae-optimizing                         removes arguments to calls in an lto-like manner, and optimizes where we removed
# @flag --dce                                    removes unreachable code
# @flag --dealign                                forces all loads and stores to have alignment 1
# @flag --denan                                  instrument the wasm to convert NaNs into 0 at runtime
# @flag --dfo                                    optimizes using the DataFlow SSA IR
# @flag --directize                              turns indirect calls into direct ones
# @flag --discard-global-effects                 discards global effect info
# @flag --duplicate-function-elimination         removes duplicate functions
# @flag --duplicate-import-elimination           removes duplicate imports
# @flag --dwarfdump                              dump DWARF debug info sections from the read binary
# @flag --emit-target-features                   emit the target features section in the output
# @flag --extract-function                       leaves just one function (useful for debugging)
# @flag --extract-function-index                 leaves just one function selected by index
# @flag --flatten                                flattens out code, removing nesting
# @flag --fpcast-emu                             emulates function pointer casts, allowing incorrect indirect calls to (sometimes) work
# @flag --func-metrics                           reports function metrics
# @flag --generate-dyncalls                      generate dynCall fuctions used by emscripten ABI
# @flag --generate-global-effects                generate global effect info (helps later passes)
# @flag --generate-i64-dyncalls                  generate dynCall functions used by emscripten ABI, but only for functions with i64 in their signature (which cannot be invoked via the wasm table without JavaScript BigInt support).
# @flag --generate-stack-ir                      generate Stack IR
# @flag --global-refining                        refine the types of globals
# @flag --gsi                                    globally optimize struct values
# @flag --gto                                    globally optimize GC types
# @flag --gufa                                   Grand Unified Flow Analysis: optimize the entire program using information about what content can actually appear in each location
# @flag --gufa-cast-all                          GUFA plus add casts for all inferences
# @flag --gufa-optimizing                        GUFA plus local optimizations in functions we modified
# @flag --heap2local                             replace GC allocations with locals
# @flag --i64-to-i32-lowering                    lower all uses of i64s to use i32s instead
# @flag --inline-main                            inline __original_main into main
# @flag --inlining                               inline functions (you probably want inlining-optimizing)
# @flag --inlining-optimizing                    inline functions and optimizes where we inlined
# @flag --instrument-locals                      instrument the build with code to intercept all loads and stores
# @flag --instrument-memory                      instrument the build with code to intercept all loads and stores
# @flag --intrinsic-lowering                     lower away binaryen intrinsics
# @flag --jspi                                   wrap imports and exports for JavaScript promise integration
# @flag --legalize-js-interface                  legalizes i64 types on the import/export boundary
# @flag --legalize-js-interface-minimally        legalizes i64 types on the import/export boundary in a minimal manner, only on things only JS will call
# @flag --licm                                   loop invariant code motion
# @flag --limit-segments                         attempt to merge segments to fit within web limits
# @flag --local-cse                              common subexpression elimination inside basic blocks
# @flag --local-subtyping                        apply more specific subtypes to locals where possible
# @flag --log-execution                          instrument the build with logging of where execution goes
# @flag --memory-packing                         packs memory into separate segments, skipping zeros
# @flag --memory64-lowering                      lower loads and stores to a 64-bit memory to instead use a 32-bit one
# @flag --merge-blocks                           merges blocks to their parents
# @flag --merge-locals                           merges locals when beneficial
# @flag --merge-similar-functions                merges similar functions when benefical
# @flag --metrics                                reports metrics
# @flag --minify-imports                         minifies import names (only those, and not export names), and emits a mapping to the minified ones
# @flag --minify-imports-and-exports             minifies both import and export names, and emits a mapping to the minified ones
# @flag --minify-imports-and-exports-and-modules  minifies both import and export names, and emits a mapping to the minified ones, and minifies the modules as well
# @flag --mod-asyncify-always-and-only-unwind    apply the assumption that asyncify imports always unwind, and we never rewind
# @flag --mod-asyncify-never-unwind              apply the assumption that asyncify never unwinds
# @flag --monomorphize                           creates specialized versions of functions
# @flag --monomorphize-always                    creates specialized versions of functions (even if unhelpful)
# @flag --multi-memory-lowering                  combines multiple memories into a single memory
# @flag --multi-memory-lowering-with-bounds-checks  combines multiple memories into a single memory, trapping if the read or write is larger than the length of the memory's data
# @flag --name-types                             (re)name all heap types
# @flag --nm                                     name list
# @flag --once-reduction                         reduces calls to code that only runs once
# @flag --optimize-added-constants               optimizes added constants into load/store offsets
# @flag --optimize-added-constants-propagate     optimizes added constants into load/store offsets, propagating them across locals too
# @flag --optimize-casts                         eliminate and reuse casts
# @flag --optimize-for-js                        early optimize of the instruction combinations for js
# @flag --optimize-instructions                  optimizes instruction combinations
# @flag --optimize-stack-ir                      optimize Stack IR
# @flag --pick-load-signs                        pick load signs based on their uses
# @flag --poppify                                Tranform Binaryen IR into Poppy IR
# @flag --post-emscripten                        miscellaneous optimizations for Emscripten-generated code
# @flag --precompute                             computes compile-time evaluatable expressions
# @flag --precompute-propagate                   computes compile-time evaluatable expressions and propagates them through locals
# @flag --print                                  print in s-expression format
# @flag --print-call-graph                       print call graph
# @flag --print-features                         print options for enabled features
# @flag --print-full                             print in full s-expression format
# @flag --print-function-map                     print a map of function indexes to names
# @flag --print-minified                         print in minified s-expression format
# @flag --print-stack-ir                         print out Stack IR (useful for internal debugging)
# @flag --remove-imports                         removes imports and replaces them with nops
# @flag --remove-memory                          removes memory segments
# @flag --remove-non-js-ops                      removes operations incompatible with js
# @flag --remove-unused-brs                      removes breaks from locations that are not needed
# @flag --remove-unused-module-elements          removes unused module elements
# @flag --remove-unused-names                    removes names from locations that are never branched to
# @flag --remove-unused-nonfunction-module-elements  removes unused module elements that are not functions
# @flag --remove-unused-types                    remove unused private GC types
# @flag --reorder-functions                      sorts functions by access frequency
# @flag --reorder-functions-by-name              sorts functions by name (useful for debugging)
# @flag --reorder-globals                        sorts globals by access frequency
# @flag --reorder-locals                         sorts locals by access frequency
# @flag --rereloop                               re-optimize control flow using the relooper algorithm
# @flag --roundtrip                              write the module to binary, then read it
# @flag --rse                                    remove redundant local.sets
# @flag --safe-heap                              instrument loads and stores to check for invalid behavior
# @flag --set-globals                            sets specified globals to specified values
# @flag --signature-pruning                      remove params from function signature types where possible
# @flag --signature-refining                     apply more specific subtypes to signature types where possible
# @flag --signext-lowering                       lower sign-ext operations to wasm mvp and disable the sign extension feature
# @flag --simplify-globals                       miscellaneous globals-related optimizations
# @flag --simplify-globals-optimizing            miscellaneous globals-related optimizations, and optimizes where we replaced global.gets with constants
# @flag --simplify-locals                        miscellaneous locals-related optimizations
# @flag --simplify-locals-nonesting              miscellaneous locals-related optimizations (no nesting at all; preserves flatness)
# @flag --simplify-locals-nostructure            miscellaneous locals-related optimizations (no structure)
# @flag --simplify-locals-notee                  miscellaneous locals-related optimizations (no tees)
# @flag --simplify-locals-notee-nostructure      miscellaneous locals-related optimizations (no tees or structure)
# @flag --souperify                              emit Souper IR in text form
# @flag --souperify-single-use                   emit Souper IR in text form (single-use nodes only)
# @flag --spill-pointers                         spill pointers to the C stack (useful for Boehm-style GC)
# @flag --ssa                                    ssa-ify variables so that they have a single assignment
# @flag --ssa-nomerge                            ssa-ify variables so that they have a single assignment, ignoring merges
# @flag --stack-check                            enforce limits on llvm's __stack_pointer global
# @flag --strip                                  deprecated; same as strip-debug
# @flag --strip-debug                            strip debug info (including the names section)
# @flag --strip-dwarf                            strip dwarf debug info
# @flag --strip-eh                               strip EH instructions
# @flag --strip-producers                        strip the wasm producers section
# @flag --strip-target-features                  strip the wasm target features section
# @flag --stub-unsupported-js                    stub out unsupported JS operations
# @flag --symbolmap                              (alias for print-function-map)
# @flag --trap-mode-clamp                        replace trapping operations with clamping semantics
# @flag --trap-mode-js                           replace trapping operations with js semantics
# @flag --type-merging                           merge types to their supertypes where possible
# @flag --type-refining                          apply more specific subtypes to type fields where possible
# @flag --type-ssa                               create new nominal types to help other optimizations
# @flag --untee                                  removes local.tees, replacing them with sets and gets
# @flag --vacuum                                 removes obviously unneeded code
# @flag -O                                       execute default optimization passes (equivalent to -Os)
# @flag -O0                                      execute no optimization passes
# @flag -O1                                      execute -O1 optimization passes (quick&useful opts, useful for iteration builds)
# @flag -O2                                      execute -O2 optimization passes (most opts, generally gets most perf)
# @flag -O3                                      execute -O3 optimization passes (spends potentially a lot of time optimizing)
# @flag -O4                                      execute -O4 optimization passes (also flatten the IR, which can take a lot more time and memory, but is useful on more nested / complex / less-optimized input)
# @flag -Os                                      execute default optimization passes, focusing on code size
# @flag -Oz                                      execute default optimization passes, super-focusing on code size
# @flag --optimize-level                         How much to focus on optimizing code
# @flag -ol                                      How much to focus on optimizing code
# @flag -s --shrink-level                        How much to focus on shrinking code size
# @flag -g --debuginfo                           Emit names section in wasm binary (or full debuginfo in wast)
# @flag --always-inline-max-function-size        Max size of functions that are always inlined (default 2, which is safe for use with -Os builds)
# @flag -aimfs                                   Max size of functions that are always inlined (default 2, which is safe for use with -Os builds)
# @flag --flexible-inline-max-function-size      Max size of functions that are inlined when lightweight (no loops or function calls) when optimizing aggressively for speed (-O3).
# @flag -fimfs                                   Max size of functions that are inlined when lightweight (no loops or function calls) when optimizing aggressively for speed (-O3).
# @flag --one-caller-inline-max-function-size    Max size of functions that are inlined when there is only one caller (default -1, which means all such functions are inlined)
# @flag -ocimfs                                  Max size of functions that are inlined when there is only one caller (default -1, which means all such functions are inlined)
# @flag --inline-functions-with-loops            Allow inlining functions with loops
# @flag -ifwl                                    Allow inlining functions with loops
# @flag --partial-inlining-ifs                   Number of ifs allowed in partial inlining (zero means partial inlining is disabled) (default: 0)
# @flag -pii                                     Number of ifs allowed in partial inlining (zero means partial inlining is disabled) (default: 0)
# @flag --ignore-implicit-traps                  Optimize under the helpful assumption that no surprising traps occur (from load, div/mod, etc.)
# @flag -iit                                     Optimize under the helpful assumption that no surprising traps occur (from load, div/mod, etc.)
# @flag --traps-never-happen                     Optimize under the helpful assumption that no trap is reached at runtime (from load, div/mod, etc.)
# @flag -tnh                                     Optimize under the helpful assumption that no trap is reached at runtime (from load, div/mod, etc.)
# @flag --low-memory-unused                      Optimize under the helpful assumption that the low 1K of memory is not used by the application
# @flag -lmu                                     Optimize under the helpful assumption that the low 1K of memory is not used by the application
# @flag --fast-math                              Optimize floats without handling corner cases of NaNs and rounding
# @flag -ffm                                     Optimize floats without handling corner cases of NaNs and rounding
# @flag --zero-filled-memory                     Assume that an imported memory will be zero-initialized
# @flag -uim                                     Assume that an imported memory will be zero-initialized
# @flag --skip-pass                              Skip a pass (do not run it)
# @flag -sp                                      Skip a pass (do not run it)
# @flag --mvp-features                           Disable all non-MVP features
# @flag -mvp                                     Disable all non-MVP features
# @flag --all-features                           Enable all features
# @flag -all                                     Enable all features
# @flag --detect-features                        (deprecated - this flag does nothing)
# @flag -q --quiet                               Emit less verbose output and hide trivial warnings.
# @flag --experimental-poppy                     Parse wast files as Poppy IR for testing purposes.
# @flag --enable-sign-ext                        Enable sign extension operations
# @flag --disable-sign-ext                       Disable sign extension operations
# @flag --enable-threads                         Enable atomic operations
# @flag --disable-threads                        Disable atomic operations
# @flag --enable-mutable-globals                 Enable mutable globals
# @flag --disable-mutable-globals                Disable mutable globals
# @flag --enable-nontrapping-float-to-int        Enable nontrapping float-to-int operations
# @flag --disable-nontrapping-float-to-int       Disable nontrapping float-to-int operations
# @flag --enable-simd                            Enable SIMD operations and types
# @flag --disable-simd                           Disable SIMD operations and types
# @flag --enable-bulk-memory                     Enable bulk memory operations
# @flag --disable-bulk-memory                    Disable bulk memory operations
# @flag --enable-exception-handling              Enable exception handling operations
# @flag --disable-exception-handling             Disable exception handling operations
# @flag --enable-tail-call                       Enable tail call operations
# @flag --disable-tail-call                      Disable tail call operations
# @flag --enable-reference-types                 Enable reference types
# @flag --disable-reference-types                Disable reference types
# @flag --enable-multivalue                      Enable multivalue functions
# @flag --disable-multivalue                     Disable multivalue functions
# @flag --enable-gc                              Enable garbage collection
# @flag --disable-gc                             Disable garbage collection
# @flag --enable-memory64                        Enable memory64
# @flag --disable-memory64                       Disable memory64
# @flag --enable-relaxed-simd                    Enable relaxed SIMD
# @flag --disable-relaxed-simd                   Disable relaxed SIMD
# @flag --enable-extended-const                  Enable extended const expressions
# @flag --disable-extended-const                 Disable extended const expressions
# @flag --enable-strings                         Enable strings
# @flag --disable-strings                        Disable strings
# @flag --enable-multimemory                     Enable multimemory
# @flag --disable-multimemory                    Disable multimemory
# @flag --enable-typed-function-references       Deprecated compatibility flag
# @flag --disable-typed-function-references      Deprecated compatibility flag
# @flag -n --no-validation                       Disables validation, assumes inputs are correct
# @flag --pass-arg                               An argument passed along to optimization passes being run.
# @flag -pa                                      An argument passed along to optimization passes being run.
# @flag --closed-world                           Assume code outside of the module does not inspect or interact with GC and function references, even if they are passed out.
# @flag -cw                                      Assume code outside of the module does not inspect or interact with GC and function references, even if they are passed out.
# @flag --version                                Output version information and exit
# @flag -h --help                                Show this help message and exit
# @flag -d --debug                               Print debug information to stderr

command eval "$(argc --argc-eval "$0" "$@")"