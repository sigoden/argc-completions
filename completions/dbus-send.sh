#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @option --dest <NAME>                       Specify the name of the connection to receive the message.
# @option --print-reply[literal] <literal>    Block for a reply to the message sent, and print the body of the reply.
# @option --reply-timeout <MSEC>              Wait for a reply for up to MSEC milliseconds.
# @flag --system                              Send to the system message bus.
# @flag --session                             Send to the session message bus.
# @option --bus <ADDRESS>                     Register on a message bus at ADDRESS, typically a dbus-daemon.
# @option --peer <ADDRESS>                    Send to a non-message-bus D-Bus server at ADDRESS.
# @option --type[method_call|signal]          Specify method_call or signal (defaults to "signal").
# @arg object_path
# @arg interface-member <INTERFACE.MEMBER>
# @arg contents*

command eval "$(argc --argc-eval "$0" "$@")"