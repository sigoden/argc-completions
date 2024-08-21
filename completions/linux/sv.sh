#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -v    If the command is up, down, term, once, cont, or exit, then wait up to 7 seconds for the command to take effect.
# @flag -w    sec Override the default timeout of 7 seconds with sec seconds.

# {{ sv status
# @cmd Report the current status of the service, and the appendant log service if available, to standard output.
# @arg services[`_choice_service`]
status() {
    :;
}
# }} sv status

# {{ sv up
# @cmd If the service is not running, start it.
# @arg services[`_choice_service`]
up() {
    :;
}
# }} sv up

# {{ sv down
# @cmd If the service is running, send it the TERM signal, and the CONT signal.
# @arg services[`_choice_service`]
down() {
    :;
}
# }} sv down

# {{ sv once
# @cmd If the service is not running, start it.
# @arg services[`_choice_service`]
once() {
    :;
}
# }} sv once

# {{ sv pause
# @cmd cont hup alarm interrupt quit 1 2 term kill If the service is running, send it the STOP, CONT, HUP, ALRM, INT, QUIT, USR1, USR2, TERM, or KILL signal respectively.
# @arg services[`_choice_service`]
pause() {
    :;
}
# }} sv pause

# {{ sv exit
# @cmd If the service is running, send it the TERM signal, and the CONT signal.
# @arg services[`_choice_service`]
exit() {
    :;
}
# }} sv exit

# {{ sv start
# @cmd Same as up, but wait up to 7 seconds for the command to take effect.
# @arg services[`_choice_service`]
start() {
    :;
}
# }} sv start

# {{ sv stop
# @cmd Same as down, but wait up to 7 seconds for the service to become down.
# @arg services[`_choice_service`]
stop() {
    :;
}
# }} sv stop

# {{ sv reload
# @cmd Same as hup, and additionally report the status afterwards.
# @arg services[`_choice_service`]
reload() {
    :;
}
# }} sv reload

# {{ sv restart
# @cmd Send the commands term, cont, and up to the service, and wait up to 7 seconds for the service to restart.
# @arg services[`_choice_service`]
restart() {
    :;
}
# }} sv restart

# {{ sv shutdown
# @cmd Same as exit, but wait up to 7 seconds for the runsv(8) process to terminate.
# @arg services[`_choice_service`]
shutdown() {
    :;
}
# }} sv shutdown

# {{ sv force-stop
# @cmd Same as down, but wait up to 7 seconds for the service to become down.
# @arg services[`_choice_service`]
force-stop() {
    :;
}
# }} sv force-stop

# {{ sv force-reload
# @cmd Send the service the term and cont commands, and wait up to 7 seconds for the service to restart.
# @arg services[`_choice_service`]
force-reload() {
    :;
}
# }} sv force-reload

# {{ sv force-restart
# @cmd Send the service the term, cont and up commands, and wait up to 7 seconds for the service to restart.
# @arg services[`_choice_service`]
force-restart() {
    :;
}
# }} sv force-restart

# {{ sv force-shutdown
# @cmd Same as exit, but wait up to 7 seconds for the runsv(8) process to terminate.
# @arg services[`_choice_service`]
force-shutdown() {
    :;
}
# }} sv force-shutdown

# {{ sv try-restart
# @cmd if the service is running, send it the term and cont commands, and wait up to 7 seconds for the service to restart.
# @arg services[`_choice_service`]
try-restart() {
    :;
}
# }} sv try-restart

# {{ sv check
# @cmd Check for the service to be in the state that's been requested.
# @arg services[`_choice_service`]
check() {
    :;
}
# }} sv check

_choice_service() {
    ls -1 /etc/service/
}

command eval "$(argc --argc-eval "$0" "$@")"