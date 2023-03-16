#!/usr/bin/env bash

shopt -s nullglob

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

# @cmd Generate completion script for clap-like cli
# @arg cmd! - Specify the command, must able to run locally
clap() {
    local json="$($argc_cmd --help 2>&1 | aichat -S -r clap)"
    local jsonstr=$(echo "$json" | base64 -w 0)
    run clap $argc_cmd $jsonstr
}

run() {
    local type=$1
    local bin=$2
    local jsonstr=$3
    local target="$ROOT_DIR/completions/$bin.sh"
    print_head $type $bin > $target
    log_json $bin $jsonstr
    handle_parameters $jsonstr >> $target
    handle_subcmds $type $bin $jsonstr >> $target
    apply_patches $bin
    print_tail >> $target
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

handle_subcmds() {
    local type=$1
    local bin=$2
    local json=$(echo "$3" | base64 --decode)
    if jq -e '.commands' <<<"$json" >/dev/null; then
        for commmad in $(echo "$json" | jq -r '.commands[] | @base64'); do
            local cmd_name=$(echo "$commmad" | base64 --decode | jq -r '.name')
            echo
            echo "# @cmd"
            cmd_json="$($bin $cmd_name --help 2>&1 | aichat -S -r $type)"
            cmd_jsonstr=$(echo "$cmd_json" | base64 -w 0)
            log_json $bin-$cmd_name $cmd_jsonstr
            handle_parameters $cmd_jsonstr
            local aliases=$(echo "$command" | base64 --decode |  jq -r '.aliases[]?' | tr '\n' ',' | sed 's/,$//')
            if [[ -n "$aliases" ]]; then
                echo "# @alias $aliases"
            fi
            echo "$cmd_name() {"
            echo "    :;"
            echo "}"
            echo
        done
    fi
}

handle_option() {
    local json=$(echo "$1" | base64 --decode)
    local line=""
    local long=$(echo "$json" | jq -r '.long')
    local short=$(echo "$json" | jq -r '.short')
    local multiple=$(echo "$json" | jq -r '.multiple')
    local notation=$(echo "$json" | jq -r '.notation')
    if [[ "$long" == "help" ]] || [[ "$long" == "version" ]]; then
        return
    fi
    if [[ "$notation" != "null" ]]; then
        notation="$(echo "$notation" | sed 's/\[\(.*\)\]/<\1>/')"
        line="$line# @option"
        if [[ "$short" != "null" ]]; then
            line="$line -$short"
        fi
        line="$line --$long"
        local choices=$(echo "$json" | jq -r '.choices[]?' | tr '\n' '|' | sed 's/|$//')
        if [[ -n "$choices" ]]; then
            line="$line[$choices]"
        elif [[ "$multiple" != "null" ]] && [[ "$multiple" != "false" ]]; then
            line="$line*"
        fi
        if [[ $(echo "<$long>" | tr '[:upper:]' '[:lower:]') != $(echo "$notation" | tr '[:upper:]' '[:lower:]') ]]; then
            line="$line $notation"
        fi
    else
        line="# @flag"
        if [[ "$short" != "null" ]]; then
            line="$line  -$short"
        fi
        line="$line  --$long"
    fi
    echo "$line"
}

handle_argument() {
    local json=$(echo "$1" | base64 --decode)
    local line="# @arg"
    local name=$(echo "$json" | jq -r '.name')
    local multiple=$(echo "$json" | jq -r '.multiple')
    local notation=$(echo "$json" | jq -r '.notation')
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

log_json() {
    local name=$1
    local data=$2
    [[ ! -d $ROOT_DIR/tmp ]] && mkdir -p $ROOT_DIR/tmp
    echo $data | base64 --decode > $ROOT_DIR/tmp/$name.json
}


eval "$(argc "$0" "$@")"
