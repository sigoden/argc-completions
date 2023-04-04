#!/usr/bin/env bash

# @describe Extract csv table(cli definitions) from completion scripts

# @arg script!          Sepcifiy the completion script
# @arg outdir!          The directory to save the extracted csv to

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

write-csv() {
    local json
    json="$(argc --argc-export $argc_script)"
    while read -r line; do
        local name="$(echo "${line%%:*}" | tr ' ' '/')"
        local target="$argc_outdir/$name.csv"
        mkdir -p "$(dirname "$target")"
        local withDescription="$(echo "$json" | jq -r '[.params[] | select(.summary != "")] | length > 0')"
        local output="$(write-head $withDescription)"$'\n'
        output="$output$(echo "$json" | jq "${line##*:}" | write-cmd $withDescription)"
        echo "$output" | awk -f "$SCRIPT_DIR/format.awk" > "$target"
    done < <(echo "$json" | list-cmds)
}

list-cmds() {
    jq -r '
    def f($name; $path):
    if .subcommands // [] | length > 0
    then .subcommands |
        (if $path == "" then "." else $path end) as $path_ |
        ($name + ":" + $path_),
        (to_entries[] | 
            (.value | $name + " " + .name) as $name2 |
            ($path + ".subcommands" + "[\(.key)]") as $path2 |
            .value | f($name2; $path2))
    else $name + ":" + $path end;
    . | f(.name; "")
    '
}

write-cmd() {
    jq -r --arg withDescription "$withDescription" '
    def parse_flag:
        (if .short == null then "" else " -" + .short end) as $short |
        (if .no_long then "" else " --" + .name end) as $name |
        (if .multiple then "..." else "" end) as $name_suffix |
        (if .summary == "" then "" else " " + .summary end) as $description |
        (if $withDescription == "true" then $description + " |" else "" end) as $descriptionVal |
        "| option | " + $short + $name + $name_suffix + " | |" + $descriptionVal;
    def parse_option:
        (if .short == null then "" else " -" + .short end) as $short |
        (if .no_long then "" else " --" + .name end) as $name |
        (if (.value_names | length) == 0 and (.multiple | not) then ""
        elif (.value_names | length) == 0 and .multiple then " <" + (.name | ascii_upcase) + ">..."
        elif (.value_names | length) == 1 and .multiple then " <" + .value_names[0] + ">..."
        else (.value_names | map(" <" + . + ">") | join("")) end) as $notations |
        (if .choices == null then "" else (.choices | join(",")) end) as $choices |
        (if .summary == "" then "" else " " + .summary end) as $description |
        (if $withDescription == "true" then $description + " |" else "" end) as $descriptionVal |
        "| option | " + $short + $name + $notations + " | " + $choices + " |" + $descriptionVal;
    def parse_argument:
        (if .value_name != null then .value_name else .name end) as $name |
        (if .multiple and .required then "<" + $name + ">..."
        elif .multiple == false and .required then "<" + $name + ">"
        elif .multiple and .required == false then "[" + $name + "]..."
        else "[" + $name + "]" end) as $arg_name |
        (if .choices == null then "" else (.choices | join(",")) end) as $choices |
        (if .summary == "" then "" else " " + .summary end) as $description |
        (if $withDescription == "true" then $description + " |" else "" end) as $descriptionVal |
        "| argument | " + $arg_name + " | " + $choices + " |" + $descriptionVal;
    def parse_subcommand:
        (if (.aliases | length) == 0 then ""
        else (.aliases | map(", " + .) | join("")) end) as $aliases |
        (if .describe == "" then "" else " " + .describe end) as $description |
        (if $withDescription == "true" then $description + " |" else "" end) as $descriptionVal |
        "| command | " + .name + $aliases + " | | " + $descriptionVal;
    def parse_command:
        (.params[] | 
            if .type == "Flag" then parse_flag
            elif .type == "Option" then parse_option
            elif .type == "Positional" then parse_argument
            else empty end),
        (.subcommands[] | parse_subcommand);
    parse_command
    '
}

write-head() {
    if [[ "$1" == "true" ]]; then
        echo "| type     | body | choices | description |"
        echo "| -------- | -----| ------- | ----------- |"
    else
        echo "| type     | body | choices |"
        echo "| -------- | -----| ------- |"
    fi
}

eval "$(argc --argc-eval "$0" "$@")"

log_exit() {
    echo $*
    exit 1
}

if [ ! -f "$argc_script" ]; then
    log_exit Script "'$argc_script'" not found.
fi
if [ ! -d "$argc_outdir" ]; then
    log_exit Outdir "'$argc_outdir'" not found.
fi

write-csv