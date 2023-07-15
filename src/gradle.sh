_patch_table() { 
    _patch_table_edit_options \
        '--build-file(<file>)' \
        '--settings-file(<file>)' \
        '--configuration-cache-problems;[fail|warn]' \
        '--console;[plain|auto|rich|verbose]' \
        '--system-prop;[`_choice_system_prop`]' \
        '--dependency-verification;[strict|lenient|off]' \
        '--gradle-user-home(<dir>)' \
        '--init-script(<file>)' \
        '--write-verification-metadata(<value...>);*,' \
        '--max-workers(<n>)' \
        '--project-prop(<value>)' \
        '--project-dir(<dir>)' \
        '--priority;[normal|low]' \
        '--project-cache-dir(<dir>)' \
        '--warning-mode;[all|fail|summary|none]' \
        '--exclude-task;[`_choice_task_cached`]' | \
    _patch_table_edit_arguments 'task;[`_choice_task_cached`]'
}

_choice_task_cached() {
    _argc_util_cache 3600 _choice_task $PWD
}

_choice_task() {
    gradle -q tasks --all | sed -n 's/^\(\S\+\) - \(.*\)$/\1\t\2/p'
}

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