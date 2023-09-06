_patch_help() {
    if [[ $# -eq 1 ]]; then
        _patch_help_run_man $1 | sed '/^\s*-/ s/ | -/, -/'
    else
        _patch_help_run_man $1 | \
        sed -n "/^COMMANDS/,/^[A-Z]/ s/^       $2\(\( \S\+\)\+\)\?\(.*\)\?$/usage: $1 $2\1/p" | \
        sed 's/1|0|toggle/{1|0|toggle}/'
    fi
}

_patch_table() {
    table="$( \
        _patch_table_edit_arguments \
            'sink;[`_choice_sink`]' \
            'source;[`_choice_source`]' \
            'input;[`_choice_sink`]' \
            'output;[`_choice_source`]' \
            'card;[`_choice_card`]' \
            'port;[`_choice_port`]' \
            'profile;[`_choice_profile`]' \
    )"

    if [[ "$*" == "pactl" ]]; then
        echo "$table" | \
        _patch_table_add_metadata 'inherit-flag-options' | \
        _patch_table_edit_options \
            '--format;[text|json]' \

    elif [[ "$*" == "pactl list" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'short;[`_choice_short`]' 'type;[`_chocie_type`]'

    elif [[ "$*" == "pactl upload-sample" ]] \
      || [[ "$*" == "pactl play-sample" ]] \
      || [[ "$*" == "pactl remove-sample" ]] \
    ; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;[`_choice_sample`]'

    elif [[ "$*" == "pactl load-module" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'name;[`_choice_module_name`]'

    elif [[ "$*" == "pactl unload-module" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'id-name;[`_choice_module`]'

    elif [[ "$*" == "pactl move-sink-input" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'id;[`_choice_sink_input`]'

    elif [[ "$*" == "pactl move-source-output" ]]; then
        echo "$table" | \
        _patch_table_edit_arguments 'id;[`_choice_source_output`]'

    else
        echo "$table"

    fi
}

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
