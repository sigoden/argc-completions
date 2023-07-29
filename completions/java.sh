#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -zero                                  to select the "zero" VM
# @flag -dcevm                                 to select the "dcevm" VM
# @option -cp*:[`_choice_class_path`] <class search path of directories and zip/jar files>
# @option -classpath*:[`_choice_class_path`] <class search path of directories and zip/jar files>
# @option --class-path*:[`_choice_class_path`] <class search path of directories and zip/jar files>  A : separated list of directories, JAR archives, and ZIP archives to search for class files.
# @option -p*: <dir>
# @option --module-path*: <dir>                A : separated list of directories, each directory is a directory of modules.
# @option --upgrade-module-path*: <dir>        A : separated list of directories, each directory is a directory of modules that replace upgradeable modules in the runtime image
# @option --add-modules*, <dir>                root modules to resolve in addition to the initial module.
# @flag --list-modules                         list observable modules and exit
# @option -d <module name>
# @option --describe-module <module name>      describe a module and exit
# @flag --dry-run                              create VM and load main class but do not execute main method.
# @flag --validate-modules                     validate all modules and exit The --validate-modules option may be useful for finding conflicts and other errors with modules on the module path.
# @option -D <<name>=<value>>                  set a system property
# @option -verbose[class|module|gc|jni]        enable verbose output
# @flag -version                               print product version to the error stream and exit
# @flag --version                              print product version to the output stream and exit
# @flag -showversion                           print product version to the error stream and continue
# @flag --show-version                         print product version to the output stream and continue
# @flag --show-module-resolution               show module resolution output during startup
# @flag -?                                     print this help message to the error stream
# @flag -h                                     print this help message to the error stream
# @flag -help                                  print this help message to the error stream
# @flag --help                                 print this help message to the output stream
# @flag -X                                     print help on extra options to the error stream
# @flag --help-extra                           print help on extra options to the output stream
# @option -ea*: <classes>
# @option -enableassertions*: <classes>        enable assertions with specified granularity
# @option -da*: <classes>
# @option -disableassertions*: <classes>       disable assertions with specified granularity
# @flag -esa                                   enable system assertions
# @flag -enablesystemassertions                enable system assertions
# @flag -dsa                                   disable system assertions
# @flag -disablesystemassertions               disable system assertions
# @option -agentlib <<libname>[=<options>]>    load native agent library <libname>, e.g. -agentlib:jdwp see also -agentlib:jdwp=help
# @option -agentpath[`_choice_agent_path`] <<pathname>[=<options>]>  load native agent library by full pathname
# @option -javaagent*:[`_choice_class_path`] <<jarpath>[=<options>]>  load Java programming language agent, see java.lang.instrument
# @option -splash <imagepath>                  show splash screen with specified image HiDPI scaled images are automatically supported and used if available.
# @flag --enable-preview                       allow classes to depend on preview features of this release
# @option -m --module <module/main>            specifies the main module and the main class to run
# @option -jar <jarfile>                       jar file to execute
# @option -XX* <value>                         advanced options
# @flag -Xbatch                                disable background compilation
# @option -Xbootclasspath*:[`_choice_class_path`] <value>  set search path for bootstrap classes and resources
# @option -Xcheck[jni] <value>                 perform additional checks
# @flag -Xdiag                                 show additional diagnostic messages
# @flag -Xfuture                               enable strictest checks, anticipating future default
# @flag -Xincgc                                enable incremental garbage collection
# @flag -Xint                                  interpreted mode execution only
# @option -Xloggc <file>                       log GC status to a file with time stamps
# @flag -Xmixed                                mixed mode execution (default)
# @option -Xms <value>                         set initial Java heap size
# @option -Xmx <value>                         set maximum Java heap size
# @flag -Xnoclassgc                            disable class garbage collection
# @flag -Xprof                                 output cpu profiling data
# @flag -Xrs                                   reduce use of OS signals by Java/VM (see documentation)
# @option -Xshare[`_choice_share`] <value>     set shared data usage
# @option -XshowSettings[`_choice_show_settings`] <value>  show all settings and continue
# @option -Xss <value>                         set java thread stack size

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_class_path() {
    _argc_util_comp_path exts=.jar,.zip
}

_choice_share() {
    cat <<-'EOF'
auto	use shared class data if possible
jni	perform additional checks for JNI functions
off	do not attempt to use shared class data
on	require using shared class data, otherwise fail
EOF
}

_choice_show_settings() {
    cat <<-'EOF'
all	show all settings and continue
vm	show all vm related settings and continue
system	show host system or container configuration and continue
properties	show all property settings and continue
locale	show all locale related settings and continue
EOF
}

_choice_agent_path() {
    _argc_util_mode_kv =
    if [[ -z "$argc__kv_prefix" ]]; then
        _argc_util_comp_path exts=.jar,.zip suffix==
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"