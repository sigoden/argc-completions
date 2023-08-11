_patch_help() { 
    if [[ "$*" == "sbt" ]]; then
        $@ --help | \
        sed \
            -e 's/ | -/, -/' \
            -e 's/\s\+\(<\S\+>\)/ \1/' \

        cat <<-'EOF'
Commands:
    about                    Displays basic information about sbt and the build.
    tasks                    Lists the tasks defined for the current project.
    settings                 Lists the settings defined for the current project.
    reload                   (Re)loads the current project or changes to plugins project or returns from it.
    new                      Creates a new sbt build.
    projects                 Lists the names of available projects or temporarily adds/removes extra builds to the session.
    project                  Displays the current project or changes to the provided `project`.
    set                      Evaluates a Setting and applies it to the current project.
    session                  Manipulates session settings.  For details, run 'help session'.
    inspect                  Prints the value for 'key', the defining scope, delegates, related definitions, and dependencies.
    plugins                  Lists currently available plugins.
    last                     Displays output from a previous command or the output from a specific task.
    last-grep, lastGrep      Shows lines from the last output for 'key' that match 'pattern'.
    export                   Executes tasks and displays the equivalent command lines.
    show                     Displays the result of evaluating the setting or task associated with 'key'.
    print                    Prints the result of evaluating the setting or task associated with 'key' to standard output.
    all                      Executes all of the specified tasks concurrently.
    completions              Displays a list of completions for the given argument string (run 'completions <string>').
    early                    Schedules a command to run before other commands on startup.
    exit                     Terminates the remote client or the build when called from the console.
    shutdown                 Terminates the build.
    alias                    Manage aliases.
    append                   Appends 'command' to list of commands to run.
    apply                    Transforms the current State by calling <module-name>.apply(currentState) for each listed module name.
    clearCaches              Clears all of sbt's internal caches.
    client                   Provides an interactive prompt from which commands can be run on a server.
    eval                     Evaluates the given Scala expression and prints the result and type.
    iflast                   If there are no more commands after this one, 'command' is run.
    java+                    Runs <command> for each JDK version specified for cross-JDK testing.
    java++                   Changes the JDK version and runs a command.
    onFailure                Registers 'command' to run when a command fails to complete normally.
    reboot                   This command is equivalent to exiting sbt, restarting, and running the remaining commands with the exception that the JVM is not shut down.
    shell                    Launch an interactive sbt prompt.
    startServer              Starts the server if it has not been started. This is intended to be used with
EOF
    else
        cat <<-'EOF' | _patch_help_select_subcmd $@
sbt tasks
    -v...
    -V
sbt settings
    -v...
    -V
sbt reload plugins|return
sbt projects add|remove <URL...>
sbt session clear|clear-all|list|list-all|remove|save|save-all
sbt inspect tree|uses|definitions|actual <key>
sbt last [key]
sbt last-grep <pattern>
sbt export <task...>
    --last      Uses information from the previous execution
sbt show <settings|task>
sbt print <settings|task>
sbt all <task...>
sbt completions <string>
sbt alias <name[=value]>
sbt append <command>
sbt apply <module-name...>
    -cp, --classpath <classpath>
sbt eval <expression>
sbt iflast <command>
sbt java+ <command>
sbt java++ <java-version>
sbt onFailure <command>
sbt reboot dev|full
EOF
    fi
}
