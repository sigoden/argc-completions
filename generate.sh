#!/usr/bin/env bash

set -eo pipefail
shopt -s nullglob

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
TMP_DIR="$ROOT_DIR/tmp"
[[ ! -d "$TMP_DIR" ]] && mkdir -p "$TMP_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

# @cmd Generate for a generic cli
# @arg cmd! - Specify the command, must able to run locally
generic() {
    local jsonstr
    run generic $argc_cmd
}

# @cmd Generate for a clap-based/rust cli
# @arg cmd! - Specify the command, must able to run locally
clap() {
    local jsonstr
    run clap $argc_cmd
}

run() {
    local type=$1
    local bin=$2
    local output="$ROOT_DIR/completions/$bin.sh"
    local jsonstr=$(fetch_json $type $bin)
    print_head $type $bin > $output
    handle_parameters $jsonstr >> $output
    handle_subcmds $type $bin $jsonstr >> $output
    apply_patches $bin
    print_tail >> $output
}

handle_subcmds() {
    local type=$1
    local bin=$2
    local json=$(echo "$3" | base64 --decode)
    if jq -e '.commands' <<<"$json" >/dev/null; then
        for command in $(echo "$json" | jq -r '.commands[] | @base64'); do
            local name=$(echo "$command" | base64 --decode | jq -r '.name')
            if [[ "$name" != "help" ]] &&  [[ "$name" != *" "* ]]; then
                echo
                echo "# @cmd"
                local aliases=$(echo "$command" | base64 --decode |  jq -r '.aliases[]?' | tr '\n' ',' | sed 's/,$//')
                if [[ -n "$aliases" ]]; then
                    echo "# @alias $aliases"
                fi
                local cmd_jsonstr=$(fetch_json $type $bin $name)
                handle_parameters $cmd_jsonstr
                echo "$name() {"
                echo "    :;"
                echo "}"
                echo
            fi
        done
    fi
}


handle_parameters() {
    local json=$(echo "$1" | base64 --decode)
    if jq -e '.options' <<<"$json" >/dev/null; then
        for option in $(echo "$json" | jq -r '.options[] | @base64'); do
            handle_option $option
        done
    fi
    if jq -e '.arguments' <<<"$json" >/dev/null; then
        for argument in $(echo "$json" | jq -r '.arguments[] | @base64'); do
            handle_argument $argument
        done
    fi
}

handle_option() {
    local json=$(echo "$1" | base64 --decode)
    local line=""
    local name=$(echo "$json" | jq -r '.name')
    local short=$(echo "$json" | jq -r '.short')
    local multiple=$(echo "$json" | jq -r '.multiple')
    local notation=$(echo "$json" | jq -r '.notation')
    local choices=$(echo "$json" | jq -r '.choices[]?' | tr '\n' '|' | sed 's/|$//')
    if [[ "$name" == "help" ]] || [[ "$name" == "version" ]]; then
        return
    fi
    if [[ "$notation" != "null" ]] || [[ -n "$choices" ]]; then
        line="$line# @option"
        short=$(echo $short | sed 's/-//g')
        if [[ "$short" != "null" ]] && [[ ${#short} -eq 1 ]]; then
            line="$line -$short"
        fi
        line="$line --$name"

        notation="$(sanitize_notation "$notation")"
        if [[ "$notation" == *'|'* ]] && [[ -z "$choices" ]]; then
            choices=$notation
            notation=""
        fi
        if [[ -n "$choices" ]]; then
            line="$line[$choices]"
        elif [[ "$multiple" != "null" ]] && [[ "$multiple" != "false" ]]; then
            line="$line*"
        fi
        local name_lc=$(echo "$name" | tr '[:upper:]' '[:lower:]')
        local notation_lc=$(echo "$notation" | tr '[:upper:]' '[:lower:]')
        if [[ -n "$notation" ]] && [[  $name_lc != $notation_lc ]]; then
            line="$line <$notation>"
        fi
    else
        line="# @flag"
        if [[ "$short" != "null" ]]; then
            line="$line  -$short"
        fi
        line="$line  --$name"
    fi
    echo "$line"
}

handle_argument() {
    local json=$(echo "$1" | base64 --decode)
    local line="# @arg"
    local name=$(echo "$json" | jq -r '.name')
    local multiple=$(echo "$json" | jq -r '.multiple')
    local required=$(echo "$json" | jq -r '.required')
    name=$(echo $name | sed 's/\[\(.*\)\]/\1/' | sed 's/<\(.*\)>/\1/' | tr '[:upper:]' '[:lower:]')
    line="$line $name"
    local choices=$(echo "$json" | jq -r '.choices[]?' | tr '\n' '|' | sed 's/|$//')
    if [[ -n "$choices" ]]; then
        line="$line[$choices]"
    elif [[ "$multiple" == "true" ]] && [[ "$required" == "true" ]]; then
        line="$line+"
    elif [[ "$multiple" != "true" ]] && [[ "$required" == "true" ]]; then
        line="$line!"
    elif [[ "$multiple" == "true" ]] && [[ "$required" != "true" ]]; then
        line="$line*"
    fi
    echo "$line"
}

fetch_json() {
    local type=$1
    local cmd text path
    if [[ $# -eq 2 ]]; then
        cmd=$2
        text="$($2 --help 2>&1)"
    elif [[ $# -eq 3 ]]; then
        cmd=$2-$3
        text="$($2 $3 --help 2>&1)"
    fi
    path="$TMP_DIR/$cmd.json" 
    if [[ -f "$path" ]]; then
        cat "$path" | base64 -w 0
    else
        local json="$(echo "$text" | aichat -S -r $type)"
        if jq -e . >/dev/null 2>&1 <<<"$json"; then
            echo "$json" > "$path"
        else
            json="{}"
        fi
        echo "$json" | base64 -w 0
    fi
}

sanitize_notation() {
    local notation=$1
    if grep -q '<.*>' <<<"$notation"; then
        echo $notation | sed 's/.*<\(.\+\)>.*/\1/' 
    elif grep -q '\[.*\]' <<<"$notation"; then
        echo $notation | sed 's/.*\[\(.\+\)\].*/\1/' 
    fi
}

apply_patches() {
    bin=$1
    for patch_file in $ROOT_DIR/patches/${bin}__*; do
        name=$(basename $patch_file .sh | sed 's|'$bin'__||')
        name2=$(echo $name | tr '-' '_')
        target="$ROOT_DIR/completions/$bin.sh"
        sed -i 's/'$name'/'$name'[`__choice_'$name2'`]/' $target
        echo >> $target
        cat $patch_file >> $target
        echo -e "\n" >> $target
    done
}

print_head() {
    printf "%s\n" "#!/usr/bin/env bash"
    printf "%s\n" "# Generated with \`./generate.sh $1 $2\`. DON'T MODIFY IT"
    printf "\n"
}

print_tail() {
    printf "%s" "eval \"\$(argc \"\$0\" \"\$@\")\""
}

eval "$(argc "$0" "$@")"
