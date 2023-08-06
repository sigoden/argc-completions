#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option -e* <COMMAND>                   Evaluates the given command
# @flag -h --help                         Prints this message (standalone)
# @option -r* <FILE>                      Requires the given files/patterns
# @option -S <SCRIPT>                     Finds and executes the given script in $PATH
# @option -pr* <FILE>                     Requires the given files/patterns in parallel
# @option -pa* <PATH>                     Prepends the given path to Erlang code path
# @option -pz* <PATH>                     Appends the given path to Erlang code path
# @flag -v --version                      Prints Erlang/OTP and Elixir versions (standalone)
# @option --erl* <SWITCHES>               Switches to be passed down to Erlang
# @option --eval* <COMMAND>               Evaluates the given command, same as -e
# @option --logger-otp-reports <BOOL>     Enables or disables OTP reporting
# @option --logger-sasl-reports <BOOL>    Enables or disables SASL reporting
# @flag --no-halt                         Does not halt the Erlang VM after execution
# @flag --short-version                   Prints Elixir version (standalone)
# @flag --werl                            Uses Erlang's Windows shell GUI (Windows only)
# @option --cookie                        Sets a cookie for this distributed node
# @flag --hidden                          Makes a hidden node
# @option --name                          Makes and assigns a name to the distributed node
# @option --rpc-eval* <NODE> <COMMAND>    Evaluates the given command on the given remote node
# @option --sname <NAME>                  Makes and assigns a short name to the distributed node
# @option --boot <FILE>                   Uses the given FILE.boot to start the system
# @option --boot-var* <VAR> <VALUE>       Makes $VAR available as VALUE to FILE.boot
# @option --erl-config* <FILE>            Loads configuration in FILE.config written in Erlang
# @flag --pipe-to                         PIPEDIR LOGDIR Starts the Erlang VM as a named PIPEDIR and LOGDIR
# @option --vm-args <FILE>                Passes the contents in file as arguments to the VM
# @arg file-exs <file:.exs>
# @arg args*

command eval "$(argc --argc-eval "$0" "$@")"