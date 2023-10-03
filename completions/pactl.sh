#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @meta inherit-flag-options
# @flag -h --help                    Show help.
# @flag --version                    Show version information.
# @option -s --server                Choose the server to connect to.
# @option -f --format[text|json]     Choose output format, available options are "text" or "json".
# @option -n --client-name <NAME>    Specify the client name pactl shall pass to the server when connecting.

# {{ pactl stat
# @cmd Dump a few statistics about the memory usage of the PulseAudio daemon.
stat() {
    :;
}
# }} pactl stat

# {{ pactl info
# @cmd Dump some info about the PulseAudio daemon.
info() {
    :;
}
# }} pactl info

# {{ pactl list
# @cmd Dump all currently loaded modules, available sinks, sources, streams, etc.
# @arg short[`_choice_short`]
# @arg type[`_chocie_type`]
list() {
    :;
}
# }} pactl list

# {{ pactl exit
# @cmd Asks the PulseAudio server to terminate.
exit() {
    :;
}
# }} pactl exit

# {{ pactl upload-sample
# @cmd Upload a sound from the specified audio file into the sample cache.
# @arg filename
# @arg name[`_choice_sample`]
upload-sample() {
    :;
}
# }} pactl upload-sample

# {{ pactl play-sample
# @cmd Play the specified sample from the sample cache.
# @arg name[`_choice_sample`]
# @arg sink[`_choice_sink`]
play-sample() {
    :;
}
# }} pactl play-sample

# {{ pactl remove-sample
# @cmd Remove the specified sample from the sample cache.
# @arg name[`_choice_sample`]
remove-sample() {
    :;
}
# }} pactl remove-sample

# {{ pactl load-module
# @cmd Load the specified module with the specified arguments into the running sound server.
# @arg name[`_choice_module_name`]
load-module() {
    :;
}
# }} pactl load-module

# {{ pactl unload-module
# @cmd Unload the module instance identified by the specified numeric index or unload all modules by the specified name.
# @arg id-name[`_choice_module`] <ID|NAME>
unload-module() {
    :;
}
# }} pactl unload-module

# {{ pactl move-sink-input
# @cmd Move the specified playback stream (identified by its numerical index) to the specified sink (identified by its symbolic name or numerical index).
# @arg id[`_choice_sink_input`]
# @arg sink[`_choice_sink`]
move-sink-input() {
    :;
}
# }} pactl move-sink-input

# {{ pactl move-source-output
# @cmd Move the specified recording stream (identified by its numerical index) to the specified source (identified by its symbolic name or numerical index).
# @arg id[`_choice_source_output`]
# @arg source[`_choice_source`]
move-source-output() {
    :;
}
# }} pactl move-source-output

# {{ pactl suspend-sink
# @cmd SINK true|false Suspend or resume the specified sink (which may be specified either by its symbolic name or numerical index), depending whether true (suspend) or false (resume) is passed as last argument.
# @arg sink[`_choice_sink`]
# @arg bool[true|false]
suspend-sink() {
    :;
}
# }} pactl suspend-sink

# {{ pactl suspend-source
# @cmd SOURCE true|false Suspend or resume the specified source (which may be specified either by its symbolic name or numerical index), depending whether true (suspend) or false (resume) is passed as last argument.
# @arg source[`_choice_source`]
# @arg bool[true|false]
suspend-source() {
    :;
}
# }} pactl suspend-source

# {{ pactl set-card-profile
# @cmd Set the specified card (identified by its symbolic name or numerical index) to the specified profile (identified by its symbolic name).
# @arg card[`_choice_card`]
# @arg profile[`_choice_profile`]
set-card-profile() {
    :;
}
# }} pactl set-card-profile

# {{ pactl get-default-sink
# @cmd Returns the symbolic name of the default sink.
get-default-sink() {
    :;
}
# }} pactl get-default-sink

# {{ pactl set-default-sink
# @cmd Make the specified sink (identified by its symbolic name or numerical index) the default sink.
# @arg sink[`_choice_sink`]
set-default-sink() {
    :;
}
# }} pactl set-default-sink

# {{ pactl set-sink-port
# @cmd Set the specified sink (identified by its symbolic name or numerical index) to the specified port (identified by its symbolic name).
# @arg sink[`_choice_sink`]
# @arg port[`_choice_port`]
set-sink-port() {
    :;
}
# }} pactl set-sink-port

# {{ pactl get-default-source
# @cmd Returns the symbolic name of the default source.
get-default-source() {
    :;
}
# }} pactl get-default-source

# {{ pactl set-default-source
# @cmd Make the specified source (identified by its symbolic name or numerical index) the default source.
# @arg source[`_choice_source`]
set-default-source() {
    :;
}
# }} pactl set-default-source

# {{ pactl set-source-port
# @cmd Set the specified source (identified by its symbolic name or numerical index) to the specified port (identified by its symbolic name).
# @arg source[`_choice_source`]
# @arg port[`_choice_port`]
set-source-port() {
    :;
}
# }} pactl set-source-port

# {{ pactl set-port-latency-offset
# @cmd Set a latency offset to a specified port (identified by its symbolic name) that belongs to a card (identified by its symbolic name or numerical index).
# @arg card[`_choice_card`]
# @arg port[`_choice_port`]
# @arg offset
set-port-latency-offset() {
    :;
}
# }} pactl set-port-latency-offset

# {{ pactl get-sink-volume
# @cmd Get the volume of the specified sink (identified by its symbolic name or numerical index) displayed in the same format as the `info` command.
# @arg sink[`_choice_sink`]
get-sink-volume() {
    :;
}
# }} pactl get-sink-volume

# {{ pactl set-sink-volume
# @cmd Set the volume of the specified sink (identified by its symbolic name or numerical index).
# @arg sink[`_choice_sink`]
# @arg volume*
set-sink-volume() {
    :;
}
# }} pactl set-sink-volume

# {{ pactl get-source-volume
# @cmd ``` Get the volume of the specified source (identified by its symbolic name or numerical index) displayed in the same format as the `info` command.
# @arg source[`_choice_source`]
get-source-volume() {
    :;
}
# }} pactl get-source-volume

# {{ pactl set-source-volume
# @cmd Set the volume of the specified source (identified by its symbolic name or numerical index).
# @arg source[`_choice_source`]
# @arg volume*
set-source-volume() {
    :;
}
# }} pactl set-source-volume

# {{ pactl set-sink-input-volume
# @cmd Set the volume of the specified sink input (identified by its numerical index).
# @arg input[`_choice_sink`]
# @arg volume*
set-sink-input-volume() {
    :;
}
# }} pactl set-sink-input-volume

# {{ pactl set-source-output-volume
# @cmd Set the volume of the specified source output (identified by its numerical index).
# @arg output[`_choice_source`]
# @arg volume*
set-source-output-volume() {
    :;
}
# }} pactl set-source-output-volume

# {{ pactl get-sink-mute
# @cmd Get the mute status of the specified sink (identified by its symbolic name or numerical index).
# @arg sink[`_choice_sink`]
get-sink-mute() {
    :;
}
# }} pactl get-sink-mute

# {{ pactl set-sink-mute
# @cmd SINK 1|0|toggle Set the mute status of the specified sink (identified by its symbolic name or numerical index).
# @arg sink[`_choice_sink`]
# @arg enum[1|0|toggle]
set-sink-mute() {
    :;
}
# }} pactl set-sink-mute

# {{ pactl get-source-mute
# @cmd Get the mute status of the specified source (identified by its symbolic name or numerical index).
# @arg source[`_choice_source`]
get-source-mute() {
    :;
}
# }} pactl get-source-mute

# {{ pactl set-source-mute
# @cmd SOURCE 1|0|toggle Set the mute status of the specified source (identified by its symbolic name or numerical index).
# @arg source[`_choice_source`]
# @arg enum[1|0|toggle]
set-source-mute() {
    :;
}
# }} pactl set-source-mute

# {{ pactl set-sink-input-mute
# @cmd INPUT 1|0|toggle Set the mute status of the specified sink input (identified by its numerical index).
# @arg input[`_choice_sink`]
# @arg enum[1|0|toggle]
set-sink-input-mute() {
    :;
}
# }} pactl set-sink-input-mute

# {{ pactl set-source-output-mute
# @cmd OUTPUT 1|0|toggle Set the mute status of the specified source output (identified by its numerical index).
# @arg output[`_choice_source`]
# @arg enum[1|0|toggle]
set-source-output-mute() {
    :;
}
# }} pactl set-source-output-mute

# {{ pactl set-sink-formats
# @cmd Set the supported formats of the specified sink (identified by its numerical index) if supported by the sink.
# @arg sink[`_choice_sink`]
# @arg formats*
set-sink-formats() {
    :;
}
# }} pactl set-sink-formats

# {{ pactl send-message
# @cmd RECIPIENT MESSAGE MESSAGE_PARAMETERS Send a message to the specified recipient object.
# @arg recipient
# @arg message
# @arg message_parameters*
send-message() {
    :;
}
# }} pactl send-message

# {{ pactl subscribe
# @cmd Subscribe to events, pactl does not exit by itself, but keeps waiting for new events.
subscribe() {
    :;
}
# }} pactl subscribe

_choice_short() {
    echo short
    _chocie_type
}

_chocie_type() {
    printf "%s\n" modules sinks sources sink-inputs source-outputs clients samples cards message-handlers
}

_choice_sample() {
    _helper_list_name_only samples
}

_choice_sink() {
    _helper_list_id_name sinks
}

_choice_module_name() {
    _helper_list_name_only modules
}

_choice_module() {
    _helper_list_id_name modules
}

_choice_sink_input() {
    _helper_list_id_only sink-inputs
}

_choice_source_output() {
    _helper_list_id_only source-outputs
}

_choice_source() {
    _helper_list_id_name sources
}

_choice_card() {
    _helper_list_id_name cards
}

_choice_profile() {
    LC_ALL=C pactl list cards 2>/dev/null | sed -n '/[Pp]rofiles:/,/[Aa]ctive [Pp]rofile:/ {s/^\t\t\(\S\+\): \(.*\)$/\1\t\2/p}'
}

_choice_port() {
    LC_ALL=C pactl list cards 2>/dev/null | sed -n '/[Pp]orts:/,$ {s/^\t\t\(\S\+\): \(.*\)$/\1\t\2/p}'
}

_helper_list_id_name() {
    pactl list short "$1" | sed -n 's/^\s*\([0-9]\+\)\s\+\(\S\+\)\(\s\+\(.*\)\)\?$/\2\tid=\1 \4\n\1\t\2  \4/p'
}

_helper_list_id_only() {
    pactl list short "$1" | sed -n 's/^\s*\([0-9]\+\)\s\+\(\S\+\)\(\s\+\(.*\)\)\?$/\1\t\2  \4/p'
}

_helper_list_name_only() {
    pactl list short "$1" | sed -n 's/^\s*\([0-9]\+\)\s\+\(\S\+\)\(\s\+\(.*\)\)\?$/\2\tid=\1 \4/p'
}

command eval "$(argc --argc-eval "$0" "$@")"