#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -?                                         Shows this help message.
# @flag -h                                         Shows this help message.
# @flag --help                                     Shows this help message.
# @flag -a --no-rebuild                            Do not rebuild project dependencies.
# @option -b --build-file <file>                   Specify the build file.
# @flag --build-cache                              Enables the Gradle build cache.
# @flag --no-build-cache                           Disables the Gradle build cache.
# @option -c --settings-file <file>                Specify the settings file.
# @flag --configuration-cache                      Enables the configuration cache.
# @flag --no-configuration-cache                   Disables the configuration cache.
# @option --configuration-cache-problems[fail|warn]  Configures how the configuration cache handles problems (fail or warn).
# @flag --configure-on-demand                      Configure necessary projects only.
# @flag --no-configure-on-demand                   Disables the use of configuration on demand.
# @option --console[plain|auto|rich|verbose]       Specifies which type of console output to generate.
# @flag --continue                                 Continue task execution after a task failure.
# @flag --no-continue                              Stop task execution after a task failure.
# @option -D --system-prop[`_choice_system_prop`]  Set system property of the JVM (e.g. -Dmyprop=myvalue).
# @flag -d --debug                                 Log in debug mode (includes normal stacktrace).
# @flag --daemon                                   Uses the Gradle daemon to run the build.
# @flag --no-daemon                                Do not use the Gradle daemon to run the build.
# @flag --export-keys                              Exports the public keys used for dependency verification.
# @option -F --dependency-verification[strict|lenient|off]  Configures the dependency verification mode.
# @flag --foreground                               Starts the Gradle daemon in the foreground.
# @option -g --gradle-user-home <dir>              Specifies the Gradle user home directory.
# @option -I --init-script <file>                  Specify an initialization script.
# @flag -i --info                                  Set log level to info.
# @flag --include-build                            Include the specified build in the composite.
# @option -M --write-verification-metadata*, <value>  Generates checksums for dependencies used in the project (comma-separated list)
# @flag -m --dry-run                               Run the builds with all task actions disabled.
# @option --max-workers <n>                        Configure the number of concurrent workers Gradle is allowed to use.
# @flag --offline                                  Execute the build without accessing network resources.
# @option -P --project-prop <value>                Set project property for the build script (e.g. -Pmyprop=myvalue).
# @option -p --project-dir <dir>                   Specifies the start directory for Gradle.
# @flag --parallel                                 Build projects in parallel.
# @flag --no-parallel                              Disables parallel execution to build projects.
# @option --priority[normal|low]                   Specifies the scheduling priority for the Gradle daemon and all processes launched by it.
# @flag --profile                                  Profile build execution time and generates a report in the <build_dir>/reports/profile directory.
# @option --project-cache-dir <dir>                Specify the project-specific cache directory.
# @flag -q --quiet                                 Log errors only.
# @flag --refresh-keys                             Refresh the public keys used for dependency verification.
# @flag --rerun-tasks                              Ignore previously cached task results.
# @flag -S --full-stacktrace                       Print out the full (very verbose) stacktrace for all exceptions.
# @flag -s --stacktrace                            Print out the stacktrace for all exceptions.
# @flag --scan                                     Creates a build scan.
# @flag --no-scan                                  Disables the creation of a build scan.
# @flag --status                                   Shows status of running and recently stopped Gradle daemon(s).
# @flag --stop                                     Stops the Gradle daemon if it is running.
# @flag -t --continuous                            Enables continuous build.
# @flag -U --refresh-dependencies                  Refresh the state of dependencies.
# @flag --update-locks                             Perform a partial update of the dependency lock, letting passed in module notations change version.
# @flag -V --show-version                          Print version info and continue.
# @flag -v --version                               Print version info and exit.
# @flag -w --warn                                  Set log level to warn.
# @option --warning-mode[all|fail|summary|none]    Specifies which mode of warnings to generate.
# @flag --watch-fs                                 Enables watching the file system for changes, allowing data about the file system to be re-used for the next build.
# @flag --no-watch-fs                              Disables watching the file system.
# @flag --write-locks                              Persists dependency resolution for locked configurations, ignoring existing locking information if it exists
# @option -x --exclude-task[`_choice_task_cached`]  Specify a task to be excluded from execution.
# @arg task*[`_choice_task_cached`]

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_system_prop() {
    cat <<-'EOF' | _argc_util_comp_kv =
org.gradle.cache.reserved.mb=;;Reserve Gradle Daemon memory for operations 
org.gradle.caching;;Enable Gradle build cache 
org.gradle.console=plain,auto,rich,verbose;;Set type of console output to generate
org.gradle.daemon.debug;;Enable debug Gradle Daemon 
org.gradle.daemon.idletimeout;;Kill Gradle Daemon after 
org.gradle.debug;;Enable debug Gradle Client 
org.gradle.jvmargs=;;Set JVM arguments 
org.gradle.java.home=__argc_value=dir;;Set JDK home dir 
org.gradle.logging.level=quiet,warn,lifecycle,info,debug;;Set default Gradle log level
org.gradle.parallel;;Enable parallel project builds (incubating) 
org.gradle.priority=low,normal;;Set priority for Gradle worker processes
org.gradle.warning.mode=all,summary,fail,none;;Set types of warnings to log  
org.gradle.workers.max=;;Set the number of workers Gradle is allowed to use
EOF
}

_choice_task_cached() {
    _argc_util_cache 3600 _choice_task "gradle__choice_task:$PWD"
}

_choice_task() {
    gradle -q tasks --all | sed -n 's/^\(\S\+\) - \(.*\)$/\1\t\2/p'
}

command eval "$(argc --argc-eval "$0" "$@")"