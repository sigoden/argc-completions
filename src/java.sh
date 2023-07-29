_patch_help() { 
    $@ --help  | \
    sed \
        -e '/@argument files/,+1 d' \
        -e '/-disable-@files/,+1 d' \
        -e '/^To specify /,$ d' \
        -e 's/\[:<packagename>...|:<classname>\]/ classes/' \
        -e 's/^\(\s*\S\+\):/\1 /' \
    
    cat <<-'EOF'
    -m, --module <module/main>   specifies the main module and the main class to run
	-jar <jarfile>               jar file to execute
    -XX <value>...               advanced options
    -Xbatch                      disable background compilation
    -Xbootclasspath <value>      set search path for bootstrap classes and resources
    -Xcheck <value>              perform additional checks
    -Xdiag                       show additional diagnostic messages
    -Xfuture                     enable strictest checks, anticipating future default
    -Xincgc                      enable incremental garbage collection
    -Xint                        interpreted mode execution only
    -Xloggc <file>               log GC status to a file with time stamps
    -Xmixed                      mixed mode execution (default)
    -Xms <value>                 set initial Java heap size
    -Xmx <value>                 set maximum Java heap size
    -Xnoclassgc                  disable class garbage collection
    -Xprof                       output cpu profiling data
    -Xrs                         reduce use of OS signals by Java/VM (see documentation)
    -Xshare <value>              set shared data usage
    -XshowSettings <value>       show all settings and continue
    -Xss <value>                 set java thread stack size
EOF
}

_patch_table() { 
    _patch_table_edit_options \
        '-cp;*:[`_choice_class_path`]' \
        '-classpath;*:[`_choice_class_path`]' \
        '--class-path;*:[`_choice_class_path`]' \
        '-agentpath;[`_choice_agent_path`]' \
        '-p(<dir>);*:' \
        '--module-path(<dir>);*:' \
        '--upgrade-module-path(<dir>);*:' \
        '--add-modules(<dir>);*,' \
        '-ea;*:' \
        '-enableassertions;*:' \
        '-da;*:' \
        '-disableassertions;*:' \
        '-javaagent;*:[`_choice_class_path`]' \
        '-Xbootclasspath;*:[`_choice_class_path`]' \
        '-Xcheck;[jni]' \
        '-Xshare;[`_choice_share`]' \
        '-XshowSettings;[`_choice_show_settings`]' \

}

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