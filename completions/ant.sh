#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h -help                     print this message and exit
# @flag -p -projecthelp              print project help information and exit
# @flag -version                     print the version information and exit
# @flag -diagnostics                 print information that might be helpful to diagnose or report problems and exit
# @flag -q -quiet                    be extra quiet
# @flag -S -silent                   print nothing but task outputs and build failures
# @flag -v -verbose                  be extra verbose
# @flag -d -debug                    print debugging information
# @flag -e -emacs                    produce logging information without adornments
# @option -lib <path>                specifies a path to search for jars and classes
# @option -logfile <file>            use given file for log
# @option -l <file>                  ''
# @option -logger <classname>        the class which is to perform logging
# @option -listener <classname>      add an instance of class as a project listener
# @flag -noinput                     do not allow interactive input
# @option -buildfile <file>          use given buildfile
# @option -file <file>               ''
# @option -f <file>                  ''
# @option -D <<property>=<value>>    use value for given property
# @flag -k -keep-going               execute all targets that do not depend on failed target(s)
# @option -propertyfile <name>       load all properties from file with -D properties taking precedence
# @option -inputhandler <class>      the class which will handle input requests
# @option -find <file>               (s)earch for buildfile towards the root of
# @option -s <file>                  the filesystem and use it
# @option -nice <number>             A niceness value for the main thread: 1 (lowest) to 10 (highest); 5 is the default
# @flag -nouserlib                   Run ant without using the jar files from ${user.home}/.ant/lib
# @flag -noclasspath                 Run ant without using CLASSPATH
# @flag -autoproxy                   Java1.5+: use the OS proxy settings
# @option -main <class>              override Ant's normal entry point
# @arg target*[`_choice_target`]

_choice_target() {
    if [[ -f build.xml ]]; then
        yq -p xml -o yaml '.project.target[].["+@name"]' build.xml
    fi
}

command eval "$(argc --argc-eval "$0" "$@")"