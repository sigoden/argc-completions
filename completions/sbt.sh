#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -h --help                                  print this message
# @flag -v --verbose                               this runner is chattier
# @flag -V --version                               print sbt version information
# @flag --numeric-version                          print the numeric sbt version (sbt sbtVersion)
# @flag --script-version                           print the version of sbt script
# @flag -d --debug                                 set sbt log level to debug
# @flag -debug-inc                                 enable extra debugging for the incremental debugger
# @flag --debug-inc                                enable extra debugging for the incremental debugger
# @flag --no-colors                                disable ANSI color codes
# @option --color[auto|always|true|false|never]    enable or disable ANSI color codes  (sbt 1.3 and above)
# @option --supershell[auto|always|true|false|never]  enable or disable supershell  (sbt 1.3 and above)
# @flag --traces                                   generate Trace Event report on shutdown (sbt 1.3 and above)
# @flag --timings                                  display task timings report on shutdown
# @flag --sbt-create                               start sbt even if current directory contains no sbt project
# @option --sbt-dir <path>                         path to global settings/plugins directory (default: ~/.sbt)
# @option --sbt-boot <path>                        path to shared boot directory (default: ~/.sbt/boot in 0.11 series)
# @option --sbt-cache <path>                       path to global cache directory (default: operating system specific)
# @option --ivy <path>                             path to local Ivy repository (default: ~/.ivy2)
# @option --mem <integer>                          set memory options (default: 1024)
# @flag --no-share                                 use all local caches; no sharing
# @flag --no-global                                uses global caches, but does not use global ~/.sbt directory.
# @option --jvm-debug <port>                       Turn on JVM debugging, open at the given port.
# @flag --batch                                    disable interactive mode
# @option --sbt-version <version>                  use the specified version of sbt
# @option --sbt-jar <path>                         use the specified jar as the sbt launcher
# @option --java-home <path>                       alternate JAVA_HOME
# @option -Dkey <val>                              pass -Dkey=val directly to the java runtime
# @flag -J-X                                       pass option -X directly to the java runtime (-J is stripped)

# {{ sbt about
# @cmd Displays basic information about sbt and the build.
about() {
    :;
}
# }} sbt about

# {{ sbt tasks
# @cmd Lists the tasks defined for the current project.
# @flag -v*
# @flag -V
tasks() {
    :;
}
# }} sbt tasks

# {{ sbt settings
# @cmd Lists the settings defined for the current project.
# @flag -v*
# @flag -V
settings() {
    :;
}
# }} sbt settings

# {{ sbt reload
# @cmd (Re)loads the current project or changes to plugins project or returns from it.
# @arg plugins-return <plugins|return>
reload() {
    :;
}
# }} sbt reload

# {{ sbt new
# @cmd Creates a new sbt build.
new() {
    :;
}
# }} sbt new

# {{ sbt projects
# @cmd Lists the names of available projects or temporarily adds/removes extra builds to the session.
# @arg add-remove <add|remove>
# @arg url+
projects() {
    :;
}
# }} sbt projects

# {{ sbt project
# @cmd Displays the current project or changes to the provided `project`.
project() {
    :;
}
# }} sbt project

# {{ sbt set
# @cmd Evaluates a Setting and applies it to the current project.
set() {
    :;
}
# }} sbt set

# {{ sbt session
# @cmd Manipulates session settings.
# @arg enum[clear|clear-all|list|list-all|remove|save|save-all]
session() {
    :;
}
# }} sbt session

# {{ sbt inspect
# @cmd Prints the value for 'key', the defining scope, delegates, related definitions, and dependencies.
# @arg enum[tree|uses|definitions|actual]
# @arg key!
inspect() {
    :;
}
# }} sbt inspect

# {{ sbt plugins
# @cmd Lists currently available plugins.
plugins() {
    :;
}
# }} sbt plugins

# {{ sbt last
# @cmd Displays output from a previous command or the output from a specific task.
# @arg key
last() {
    :;
}
# }} sbt last

# {{ sbt last-grep
# @cmd Shows lines from the last output for 'key' that match 'pattern'.
# @alias lastGrep
# @arg pattern!
last-grep() {
    :;
}
# }} sbt last-grep

# {{ sbt export
# @cmd Executes tasks and displays the equivalent command lines.
# @flag --last    Uses information from the previous execution
# @arg task+
export() {
    :;
}
# }} sbt export

# {{ sbt show
# @cmd Displays the result of evaluating the setting or task associated with 'key'.
# @arg settings-task! <settings|task>
show() {
    :;
}
# }} sbt show

# {{ sbt print
# @cmd Prints the result of evaluating the setting or task associated with 'key' to standard output.
# @arg settings-task! <settings|task>
print() {
    :;
}
# }} sbt print

# {{ sbt all
# @cmd Executes all of the specified tasks concurrently.
# @arg task+
all() {
    :;
}
# }} sbt all

# {{ sbt completions
# @cmd Displays a list of completions for the given argument string (run 'completions <string>').
# @arg string!
completions() {
    :;
}
# }} sbt completions

# {{ sbt early
# @cmd Schedules a command to run before other commands on startup.
early() {
    :;
}
# }} sbt early

# {{ sbt exit
# @cmd Terminates the remote client or the build when called from the console.
exit() {
    :;
}
# }} sbt exit

# {{ sbt shutdown
# @cmd Terminates the build.
shutdown() {
    :;
}
# }} sbt shutdown

# {{ sbt alias
# @cmd Manage aliases.
# @arg name-value! <name[=value]>
alias() {
    :;
}
# }} sbt alias

# {{ sbt append
# @cmd Appends 'command' to list of commands to run.
# @arg command!
append() {
    :;
}
# }} sbt append

# {{ sbt apply
# @cmd Transforms the current State by calling <module-name>.apply(currentState) for each listed module name.
# @arg module-name+
apply() {
    :;
}
# }} sbt apply

# {{ sbt clearCaches
# @cmd Clears all of sbt's internal caches.
clearCaches() {
    :;
}
# }} sbt clearCaches

# {{ sbt client
# @cmd Provides an interactive prompt from which commands can be run on a server.
client() {
    :;
}
# }} sbt client

# {{ sbt eval
# @cmd Evaluates the given Scala expression and prints the result and type.
# @arg expression!
eval_() {
    :;
}
# }} sbt eval

# {{ sbt iflast
# @cmd If there are no more commands after this one, 'command' is run.
# @arg command!
iflast() {
    :;
}
# }} sbt iflast

# {{ sbt onFailure
# @cmd Registers 'command' to run when a command fails to complete normally.
# @arg command!
onFailure() {
    :;
}
# }} sbt onFailure

# {{ sbt reboot
# @cmd This command is equivalent to exiting sbt, restarting, and running the remaining commands with the exception that the JVM is not shut down.
# @arg dev-full <dev|full>
reboot() {
    :;
}
# }} sbt reboot

# {{ sbt shell
# @cmd Launch an interactive sbt prompt.
shell() {
    :;
}
# }} sbt shell

# {{ sbt startServer
# @cmd Starts the server if it has not been started.
startServer() {
    :;
}
# }} sbt startServer

command eval "$(argc --argc-eval "$0" "$@")"