_patch_help() { 
    if [[ "$*" == "sbt" ]]; then
        $@ --help | \
        sed \
            -e 's/ | -/, -/' \
            -e 's/\s\+\(<\S\+>\)/ \1/' \

    fi
    cat <<-'EOF' | _patch_help_embed_help $@
# about - Displays basic information about sbt and the build.
# tasks - Lists the tasks defined for the current project.
    -v...
    -V
# settings - Lists the settings defined for the current project.
    -v...
    -V
# reload plugins|return - (Re)loads the current project or changes to plugins project or returns from it.
# new - Creates a new sbt build.
# projects add|remove <URL...> - Lists the names of available projects or temporarily adds/removes extra builds to the session.
# project - Displays the current project or changes to the provided `project`.
# set - Evaluates a Setting and applies it to the current project.
# session clear|clear-all|list|list-all|remove|save|save-all - Manipulates session settings.  For details, run 'help session'.
# inspect tree|uses|definitions|actual <key> - Prints the value for 'key', the defining scope, delegates, related definitions, and dependencies.
# plugins - Lists currently available plugins.
# last [key] - Displays output from a previous command or the output from a specific task.
# last-grep/lastGrep <pattern> - Shows lines from the last output for 'key' that match 'pattern'.
# export <task...> - Executes tasks and displays the equivalent command lines.
    --last      Uses information from the previous execution
# show <settings|task> - Displays the result of evaluating the setting or task associated with 'key'.
# print <settings|task> - Prints the result of evaluating the setting or task associated with 'key' to standard output.
# all <task...> - Executes all of the specified tasks concurrently.
# completions <string> - Displays a list of completions for the given argument string (run 'completions <string>').
# early - Schedules a command to run before other commands on startup.
# exit - Terminates the remote client or the build when called from the console.
# shutdown - Terminates the build.
# alias <name[=value]> - Manage aliases.
# append <command> - Appends 'command' to list of commands to run.
# apply <module-name...> - Transforms the current State by calling <module-name>.apply(currentState) for each listed module name.
    -cp, --classpath <classpath>
# clearCaches - Clears all of sbt's internal caches.
# client - Provides an interactive prompt from which commands can be run on a server.
# eval <expression> - Evaluates the given Scala expression and prints the result and type.
# iflast <command> - If there are no more commands after this one, 'command' is run.
# java+ <command> - Runs <command> for each JDK version specified for cross-JDK testing.
# java++ <java-version> - Changes the JDK version and runs a command.
# onFailure <command> - Registers 'command' to run when a command fails to complete normally.
# reboot dev|full - This command is equivalent to exiting sbt, restarting, and running the remaining commands with the exception that the JVM is not shut down.
# shell - Launch an interactive sbt prompt.
# startServer - Starts the server if it has not been started. This is intended to be used with
EOF
}
