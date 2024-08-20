#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -xml                    Generates a report in XML format.
# @flag -json                   Generates a report in JSON format.
# @flag -listDataTypes          Lists the available datatypes.
# @option -detailLevel[`_choice_detail_level`] <level>  Specifies the level of detail for the report:
# @option -timeout <seconds>    Specifies the maximum time to wait in seconds for results.
# @flag -usage                  Prints usage info and examples.
# @arg datetype*[`_choice_data_type`]

_choice_detail_level() {
    cat <<-'EOF'
mini	report with no personal information
basic	basic hardware and network information
full	all available information
EOF
}

_choice_data_type() {
    system_profiler -listDataTypes | tail -n +2
}

command eval "$(argc --argc-eval "$0" "$@")"