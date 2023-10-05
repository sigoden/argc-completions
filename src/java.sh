_patch_help() { 
    $@ --help  | \
    sed \
        -e '/@argument files/,+1 d' \
        -e '/-disable-@files/,+1 d' \
        -e '/^To specify /,$ d' \
        -e '/^\s*-X / d' \
        -e 's/\[:<packagename>...|:<classname>\]/ classes/' \
        -e 's/^\(\s*\S\+\):/\1 /' \

}

_patch_table() { 
    _patch_table_edit_options \
        '--add-modules(<dir>);*,' \
        '--class-path(<path>);*:[`_choice_class_path`];A : separated list of directories, JAR archives and ZIP archives to search for class files.' \
        '--enable-native-access(<module>);*,' \
        '--module-path(<dir>);*:;A : separated list of elements, each element is a file path to a module or a directory containing modules.' \
        '--upgrade-module-path(<dir>);*:' \
        '-D;-*' \
        '-agentpath;[`_choice_agent_path`]' \
        '-classpath(<path>);*:[`_choice_class_path`];A : separated list of directories, JAR archives and ZIP archives to search for class files.' \
        '-cp(<path>);*:[`_choice_class_path`];A : separated list of directories, JAR archives and ZIP archives to search for class files.' \
        '-d;;describe a module and exit' \
        '-da;*:' \
        '-disableassertions;*:' \
        '-ea;*:' \
        '-enableassertions;*:' \
        '-javaagent;*:[`_choice_class_path`]' \
        '-p(<dir>);*:;A : separated list of elements, each element is a file path to a module or a directory containing modules.' \
        ';;' \
        '-X;-*[`_choice_option`];pass additional options to JVM' \

}

_choice_class_path() {
    _argc_util_comp_path exts=.jar,.zip
}

_choice_agent_path() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path exts=.jar,.zip suffix==
    fi
}

_choice_option() {
    cat <<-'EOF' | _argc_util_comp_kv ':'
batch;;Disables background compilation.
bootclasspath=`_choice_boot_class_path`;;Specifies a list of directories, JAR files, and ZIP archives separated by colons (:) to search for boot class files.
bootclasspath/a=`_choice_boot_class_path`;;Specifies a list of directories, JAR files, and ZIP archives separated by colons (:) to append to the end of the default bootstrap class path.
bootclasspath/p=`_choice_boot_class_path`;;Specifies a list of directories, JAR files, and ZIP archives separated by colons (:) to prepend to the front of the default bootstrap class path.
check=jni;;Performs additional checks for Java Native Interface (JNI) functions.
comp;;Forces compilation of methods on first invocation.
debug;;Does nothing. Provided for backward compatibility.
diag;;Shows additional diagnostic messages.
future;;Enables strict class-file format checks that enforce close conformance to the class-file format specification.
int;;Runs the application in interpreted-only mode. Compilation to native code is disabled, and all bytecode is executed by the interpreter.
internalversion;;Displays more detailed JVM version information than the -version option, and then exits.
loggc=__argc_value=file;;Sets the file to which verbose GC events information should be redirected for logging.
maxjitcodesize=;;Specifies the maximum code cache size (in bytes) for JIT-compiled code.
mixed;;Executes all bytecode by the interpreter except for hot methods, which are compiled to native code.
mn\0;;Sets the initial and maximum size (in bytes) of the heap for the young generation (nursery).
ms\0;;Sets the initial size (in bytes) of the heap.
mx\0;;Specifies the maximum size (in bytes) of the memory allocation pool in bytes.
noclassgc;;Disables garbage collection (GC) of classes.
rs;;Reduces the use of operating system signals by the JVM.
share=auto,on,off,dump;;Sets the class data sharing (CDS) mode.
showSettings=all,locale,properties,vm;;Shows settings and continues.
ss\0;;Sets the thread stack size (in bytes).
usealtsigs;;Use alternative signals instead of SIGUSR1 and SIGUSR2 for JVM internal signals.
verify=none,remote,all;;Sets the mode of the bytecode verifier.
X=`_choice_advance_option`;;Control the runtime behavior of the Java HotSpot VM.
EOF
}

_choice_advance_option() {
    cat <<-'EOF' | _argc_util_comp_kv = "$argc__kv_filter" "$argc__kv_prefix"
+DisableAttachMechanism;;Enables the option that disables the mechanism that lets tools attach to the JVM.
ErrorFile=__argc_value=file;;Specifies the path and file name to which error data is written when an irrecoverable error occurs.
+FailOverToOldVerifier;;Enables automatic failover to the old verifier when the new type checker fails.
LargePageSizeInBytes=;;Sets the maximum size (in bytes) for large pages used for Java heap.
MaxDirectMemorySize=;;Sets the maximum total size (in bytes) of the New I/O (the java.nio package) direct-buffer allocations.
NativeMemoryTracking=off,summary,detail;;Specifies the mode for tracking JVM native memory usage.
ObjectAlignmentInBytes=;;Sets the memory alignment of Java objects (in bytes).
OnError=;;Sets a custom command or a series of semicolon-separated commands to run when an irrecoverable error occurs.
OnOutOfMemoryError=;;Sets a custom command or a series of semicolon-separated commands to run when an OutOfMemoryError exception is first thrown.
+PerfDataSaveToFile;;If enabled, saves jstat(1) binary data when the Java application exits.
+PrintCommandLineFlags;;Enables printing of ergonomically selected JVM flags that appeared on the command line.
+PrintNMTStatistics;;Enables printing of collected native memory tracking data at JVM exit when native memory tracking is enabled.
+RelaxAccessControlCheck;;Decreases the amount of access control checks in the verifier.
+ShowMessageBoxOnError;;Enables displaying of a dialog box when the JVM experiences an irrecoverable error.
ThreadStackSize=;;Sets the thread stack size (in bytes).
+TraceClassLoading;;Enables tracing of classes as they are loaded.
+TraceClassLoadingPreorder;;Enables tracing of all loaded classes in the order in which they are referenced.
+TraceClassResolution;;Enables tracing of constant pool resolutions.
+TraceClassUnloading;;Enables tracing of classes as they are unloaded.
+TraceLoaderConstraints;;Enables tracing of the loader constraints recording.
+UseAltSigs;;Enables the use of alternative signals instead of SIGUSR1 and SIGUSR2 for JVM internal signals.
-UseBiasedLocking;;Disables the use of biased locking.
-UseCompressedOops;;Disables the use of compressed pointers.
+UseHugeTLBFS;;This option for Linux is the equivalent of specifying -XX:+UseLargePages.
+UseLargePages;;Enables the use of large page memory.
+UseMembar;;Enables issuing of membars on thread state transitions.
+UsePerfData;;Enables the perfdata feature.
+UseTransparentHugePages;;On Linux, enables the use of large pages that can dynamically grow or shrink.
+AllowUserSignalHandlers;;Enables installation of signal handlers by the application.
+AggressiveOpts;;Enables the use of aggressive performance optimization features, which are expected to become default in upcoming releases.
AllocateInstancePrefetchLines=;;Sets the number of lines to prefetch ahead of the instance allocation pointer.
AllocatePrefetchDistance=;;Sets the size (in bytes) of the prefetch distance for object allocation.
AllocatePrefetchInstr=;;Sets the prefetch instruction to prefetch ahead of the allocation pointer.
AllocatePrefetchLines=;;Sets the number of cache lines to load after the last object allocation by using the prefetch instructions generated in compiled code.
AllocatePrefetchStepSize=;;Sets the step size (in bytes) for sequential prefetch instructions.
AllocatePrefetchStyle=0,1,2,3;;Sets the generated code style for prefetch instructions.
+BackgroundCompilation;;Enables background compilation.
CICompilerCount=threads;;Sets the number of compiler threads to use for compilation.
CodeCacheMinimumFreeSpace=;;Sets the minimum free space (in bytes) required for compilation.
CompileCommand=command,method[,option];;Specifies a command to perform on a method.
CompileCommandFile=__argc_value=file;;Sets the file from which JIT compiler commands are read.
CompileOnly=methods;;Sets the list of methods (separated by commas) to which compilation should be restricted.
CompileThreshold=;;Sets the number of interpreted method invocations before compilation.
+DoEscapeAnalysis;;Enables the use of escape analysis.
InitialCodeCacheSize=;;Sets the initial code cache size (in bytes).
+Inline;;Enables method inlining.
InlineSmallCode=;;Sets the maximum code size (in bytes) for compiled methods that should be inlined.
+LogCompilation;;Enables logging of compilation activity to a file named hotspot.
MaxInlineSize=;;Sets the maximum bytecode size (in bytes) of a method to be inlined.
MaxNodeLimit=;;Sets the maximum number of nodes to be used during single method compilation.
MaxTrivialSize=;;Sets the maximum bytecode size (in bytes) of a trivial method to be inlined.
+OptimizeStringConcat;;Enables the optimization of String concatenation operations.
+PrintAssembly;;Enables printing of assembly code for bytecoded and native methods by using the external disassembler.
+PrintCompilation;;Enables verbose diagnostic output from the JVM by printing a message to the console every time a method is compiled.
+PrintInlining;;Enables printing of inlining decisions.
ReservedCodeCacheSize=;;Sets the maximum code cache size (in bytes) for JIT-compiled code.
RTMAbortRatio=;;The RTM abort ratio is specified as a percentage (%) of all executed RTM transactions.
RTMRetryCount=;;RTM locking code will be retried, when it is aborted or busy, the number of times specified by this option before falling back to the normal locking mechanism.
-TieredCompilation;;Disables the use of tiered compilation.
+UseAES;;Enables hardware-based AES intrinsics for Intel, AMD, and SPARC hardware.
+UseAESIntrinsics;;UseAES and UseAESIntrinsics flags are enabled by default and are supported only for Java HotSpot Server VM 32-bit and 64-bit.
+UseCodeCacheFlushing;;Enables flushing of the code cache before shutting down the compiler.
+UseCondCardMark;;Enables checking of whether the card is already marked before updating the card table.
+UseRTMDeopt;;Auto-tunes RTM locking depending on the abort ratio.
+UseRTMLocking;;Generate Restricted Transactional Memory (RTM) locking code for all inflated locks, with the normal locking mechanism as the fallback handler.
+UseSHA;;Enables hardware-based intrinsics for SHA crypto hash functions for SPARC hardware.
+UseSHA1Intrinsics;;Enables intrinsics for SHA-1 crypto hash function.
+UseSHA256Intrinsics;;Enables intrinsics for SHA-224 and SHA-256 crypto hash functions.
+UseSHA512Intrinsics;;Enables intrinsics for SHA-384 and SHA-512 crypto hash functions.
+UseSuperWord;;Enables the transformation of scalar operations into superword operations.
+ExtendedDTraceProbes;;Enables additional dtrace tool probes that impact the performance.
+HeapDumpOnOutOfMemory;;Enables the dumping of the Java heap to a file in the current directory by using the heap profiler (HPROF) when a java.
HeapDumpPath=__argc_value=path;;Sets the path and file name for writing the heap dump provided by the heap profiler (HPROF) when the -XX:+HeapDumpOnOutOfMemoryError option is set.
LogFile=__argc_value=path;;Sets the path and file name where log data is written.
+PrintClassHistogram;;Enables printing of a class instance histogram after a Control+C event (SIGTERM).
+PrintConcurrentLocks;;Enables printing of locks after a event.
+UnlockDiagnosticVMOptions;;Unlocks the options intended for diagnosing the JVM.
+AggressiveHeap;;Enables Java heap optimization.
+AlwaysPreTouch;;Enables touching of every page on the Java heap during JVM initialization.
+CMSClassUnloadingEnabled;;Enables class unloading when using the concurrent mark-sweep (CMS) garbage collector.
CMSExpAvgFactor=;;Sets the percentage of time (0 to 100) used to weight the current sample when computing exponential averages for the concurrent collection statistics.
CMSInitiatingOccupancyFraction=;;Sets the percentage of the old generation occupancy (0 to 100) at which to start a CMS collection cycle.
+CMSScavengeBeforeRemark;;Enables scavenging attempts before the CMS remark step.
CMSTriggerRatio=;;Sets the percentage (0 to 100) of the value specified by -XX:MinHeapFreeRatio that is allocated before a CMS collection cycle commences.
ConcGCThreads=;;Sets the number of threads used for concurrent GC.
+DisableExplicitGC;;Enables the option that disables processing of calls to System.
+ExplicitGCInvokesConcurrent;;Enables invoking of concurrent GC by using the System.
+ExplicitGCInvokesConcurrentAndUnloadsClasses;;Enables invoking of concurrent GC by using the System.
G1HeapRegionSize=;;Sets the size of the regions into which the Java heap is subdivided when using the garbage-first (G1) collector.
+G1PrintHeapRegions;;Enables the printing of information about which regions are allocated and which are reclaimed by the G1 collector.
G1ReservePercent=;;Sets the percentage of the heap (0 to 50) that is reserved as a false ceiling to reduce the possibility of promotion failure for the G1 collector.
InitialHeapSize=;;Sets the initial size (in bytes) of the memory allocation pool.
InitialSurvivorRatio=;;Sets the initial survivor space ratio used by the throughput garbage collector (which is enabled by the -XX:+UseParallelGC and/or -XX:+UseParallelOldGC options).
InitiatingHeapOccupancyPercent=;;Sets the percentage of the heap occupancy (0 to 100) at which to start a concurrent GC cycle.
MaxGCPauseMillis=;;Sets a target for the maximum GC pause time (in milliseconds).
MaxHeapSize=;;Sets the maximum size (in byes) of the memory allocation pool.
MaxHeapFreeRatio=;;Sets the maximum allowed percentage of free heap space (0 to 100) after a GC event.
MaxMetaspaceSize=;;Sets the maximum amount of native memory that can be allocated for class metadata.
MaxNewSize=;;Sets the maximum size (in bytes) of the heap for the young generation (nursery).
MaxTenuringThreshold=;;Sets the maximum tenuring threshold for use in adaptive GC sizing.
MetaspaceSize=;;Sets the size of the allocated class metadata space that will trigger a garbage collection the first time it is exceeded.
MinHeapFreeRatio=;;Sets the minimum allowed percentage of free heap space (0 to 100) after a GC event.
NewRatio=;;Sets the ratio between young and old generation sizes.
NewSize=;;Sets the initial size (in bytes) of the heap for the young generation (nursery).
ParallelGCThreads=;;Sets the number of threads used for parallel garbage collection in the young and old generations.
+ParallelRefProcEnabled;;Enables parallel reference processing.
+PrintAdaptiveSizePolicy;;Enables printing of information about adaptive generation sizing.
+PrintGC;;Enables printing of messages at every GC.
+PrintGCApplicationConcurrentTime;;Enables printing of how much time elapsed since the last pause (for example, a GC pause).
+PrintGCApplicationStoppedTime;;Enables printing of how much time the pause (for example, a GC pause) lasted.
+PrintGCDateStamps;;Enables printing of a date stamp at every GC.
+PrintGCDetails;;Enables printing of detailed messages at every GC.
+PrintGCTaskTimeStamps;;Enables printing of time stamps for every individual GC worker thread task.
+PrintGCTimeStamps;;Enables printing of time stamps at every GC.
+PrintStringDeduplicationStatistics;;Prints detailed deduplication statistics.
+PrintTenuringDistribution;;Enables printing of tenuring age information.
+ScavengeBeforeFullGC;;Enables GC of the young generation before each full GC.
SoftRefLRUPolicyMSPerMB=;;Sets the amount of time (in milliseconds) a softly reachable object is kept active on the heap after the last time it was referenced.
StringDeduplicationAgeThreshold=;;String objects reaching the specified age are considered candidates for deduplication.
SurvivorRatio=;;Sets the ratio between eden space size and survivor space size.
TargetSurvivorRatio=;;Sets the desired percentage of survivor space (0 to 100) used after young garbage collection.
TLABSize=;;Sets the initial size (in bytes) of a thread-local allocation buffer (TLAB).
+UseAdaptiveSizePolicy;;Enables the use of adaptive generation sizing.
+UseCMSInitiatingOccupancyOnly;;Enables the use of the occupancy value as the only criterion for initiating the CMS collector.
+UseConcMarkSweepGC;;Enables the use of the CMS garbage collector for the old generation.
+UseG1GC;;Enables the use of the garbage-first (G1) garbage collector.
+UseGCOverheadLimit;;Enables the use of a policy that limits the proportion of time spent by the JVM on GC before an OutOfMemoryError exception is thrown.
+UseNUMA;;Enables performance optimization of an application on a machine with nonuniform memory architecture (NUMA) by increasing the application's use of lower latency memory.
+UseParallelGC;;Enables the use of the parallel scavenge garbage collector (also known as the throughput collector) to improve the performance of your application by leveraging multiple processors.
+UseParallelOldGC;;Enables the use of the parallel garbage collector for full GCs.
+UseParNewGC;;Enables the use of parallel threads for collection in the young generation.
+UseSerialGC;;Enables the use of the serial garbage collector.
+UseSHM;;On Linux, enables the JVM to use shared memory to setup large pages.
+UseStringDeduplication;;Enables string deduplication.
+UseTLAB;;Enables the use of thread-local allocation blocks (TLABs) in the young generation space.
CMSIncrementalDutyCycle=;;Sets the percentage of time (0 to 100) between minor collections that the concurrent collector is allowed to run.
CMSIncrementalDutyCycleMin=;;Sets the percentage of time (0 to 100) between minor collections that is the lower bound for the duty cycle when -XX:+CMSIncrementalPacing is enabled.
+CMSIncrementalMode;;Enables the incremental mode for the CMS collector.
CMSIncrementalOffset=;;Sets the percentage of time (0 to 100) by which the incremental mode duty cycle is shifted to the right within the period between minor collections.
+CMSIncrementalPacing;;Enables automatic adjustment of the incremental mode duty cycle based on statistics collected while the JVM is running.
CMSIncrementalSafetyFactor=;;Sets the percentage of time (0 to 100) used to add conservatism when computing the duty cycle.
CMSInitiatingPermOccupancyFraction=;;Sets the percentage of the permanent generation occupancy (0 to 100) at which to start a GC.
MaxPermSize=;;Sets the maximum permanent generation space size (in bytes).
PermSize=;;Sets the space (in bytes) allocated to the permanent generation that triggers a garbage collection if it is exceeded.
+UseSplitVerifier;;Enables splitting of the verification process.
+UseStringCache;;Enables caching of commonly allocated strings.
EOF
}

_choice_boot_class_path() {
    _argc_util_mode_parts : "$argc__kv_filter" "$argc__kv_prefix"
    _argc_util_comp_path exts=.jar,.zip filter="$argc__parts_filter" prefix="$argc__parts_prefix"
}
