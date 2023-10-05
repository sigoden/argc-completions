#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -howtorun[guess|classfile|jar|script] <value>  How to run the supplied command with arguments, valid values: guess (default), classfile, jar, script (or .<script filename extension>)
# @option -classpath*:[`_choice_class_path`] <path>  Paths where to find user class files
# @option -cp*:[`_choice_class_path`] <path>    Paths where to find user class files
# @option -D-* <name=value>                     Set a system JVM property
# @option -J-* <option>                         Pass an option directly to JVM
# @flag -no-stdlib                              Don't include Kotlin standard library into classpath
# @flag -no-reflect                             Don't include Kotlin reflection implementation into classpath
# @flag -compiler-path                          Kotlin compiler classpath for compiling script or expression or running REPL If not specified, try to find the compiler in the environment
# @option -X-* <<flag>[=value]>                 Pass -X argument to the compiler
# @flag -version                                Display Kotlin version
# @flag -h -help                                Print a synopsis of options
# @option -e -expression <2+2>                  Evaluates the expression and prints the result, passing <arguments> to it

. "$ARGC_COMPLETIONS_ROOT/utils/_argc_utils.sh"

_choice_class_path() {
    _argc_util_comp_path exts=.jar,.zip
}

command eval "$(argc --argc-eval "$0" "$@")"