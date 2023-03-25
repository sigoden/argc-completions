#!/usr/bin/env bash

# @option -a --arg-help=--help      Command argument to get help
# @option --spec=generic            Choose a spec
# @flag --force                     Ignore cache csv When running
# @arg cmd!                         Specify the command, must able to run locally

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$ROOT_DIR/completions"}
CACHE_DIR="$ROOT_DIR/cache"
[[ ! -d "$CACHE_DIR" ]] && mkdir -p "$CACHE_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

NO_COMMAND_NAMES=( "help" "command" "command" "subcommand" "completions" )
NO_ARGUMENT_NAMES=( "flags" "options" )
_ARGC_UTILS_FILE="$ROOT_DIR/patches/_argc_utils.sh"

command_line="$@"
store_command_names=()

run() {
    maybe_test
    output_file="$COMPLETIONS_DIR/$argc_cmd.sh"
    print_head > $output_file
    handle_lines $argc_cmd
    apply_patches
    print_tail >> $output_file
    validate_script
}

handle_lines() {
    store_option_names=()
    local IFS=$'\n'
    local csv=( $( fetch_csv $@ ) )
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ -n "$kind" ]] && [[ "$kind" != "command" ]] && [[ "$kind" != "argument" ]]; then
            local body=$(get_body "$item")
            if [[ -n "$body" ]]; then
                handle_option "$item" >> $output_file
            fi
        fi
    done
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ "$kind" == "argument" ]]; then
            local body=$(get_body "$item")
            if [[ -n "$body" ]]; then
                handle_argument "$item" >> $output_file
            fi
        fi
    done
    if [[ $# -eq 1 ]]; then
        for item in ${csv[@]}; do
            local kind=$(get_kind "$item")
            if [[ "$kind" == "command" ]]; then
                local body=$(get_body "$item")
                if [[ -n "$body" ]]; then
                    handle_subcommand "$item" $@ >> $output_file
                fi
            fi
        done
    fi
}

handle_subcommand() {
    local input="$1"
    local IFS=' '
    local names=( $( get_body "$input" | sed 's/,/ /g' ) )
    if [[ -z "$names" ]] || [[ "$names" == '<'* ]] || [[ "$names" == '['* ]] || grep -qwi -- "$names" <<<"${NO_COMMAND_NAMES[@]}"; then
        return
    fi
    local dedup_names=()
    for name in ${names[@]}; do
        if [[  ! " ${store_command_names[*]} " =~ " $name " ]]; then
            dedup_names+=( "$name" )
            store_command_names+=( "$name" )
        fi
    done
    if [[ ${#dedup_names[@]} -eq 0 ]]; then
        return
    fi
    local cmd_name="$dedup_names"
    local cmd_aliases=( "${dedup_names[@]:1}" )

    echo
    echo "# @cmd"
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $(echo $cmd_aliases | tr -d ' ')"
    fi
    handle_lines ${@:2} $cmd_name
    echo "$cmd_name() {"
    echo "    :;"
    echo "}"
    echo
}


handle_option() {
    local input="$1"
    local IFS=' '
    local names=( $( get_body "$input" | sed 's/,/ /g' ) )
    local short_names=()
    local long_names=()
    local name_suffix=""
    local notation=""
    for name in ${names[@]}; do
        if [[ "$name" == "--help" ]] || [[ "$name" == "--version" ]]; then
            return
        fi
        if [[  ! " ${store_option_names[*]} " =~ " $name " ]]; then
            if [[ "$name" == '--'* ]]; then
                if [[ "$name" == *'...' ]]; then
                    name_suffix="*"
                    name="${name::-3}"
                elif [[ "$name" == *'='* ]]; then
                    name=$(echo "$name" | tr -cd '[:alnum:]=_-')
                    notation="<${name#*=}>"
                    name=${name%=*}
                fi
                long_names+=( "$name" )
                store_option_names+=( "$name" )
            elif [[ "$name" == '-'* ]]; then
                name=${name:0:2}
                short_names+=( "$name" )
                store_option_names+=( "$name" )
            elif [[ -z "$annotation" ]]; then
                notation="$name"
            fi
        fi
    done
    if [[ -z "$short_names" ]] && [[ -z "$long_names" ]]; then
        return
    fi
    local notation_val
    local choices="$(get_choices "$input")"
    local tag_val short_val
    if [[ -n "$notation" ]]; then
        tag_val="# @option"
        if [[ -n "$choices" ]]; then
            name_suffix="["$choices"]"
        elif [[ "$notation" == *'...' ]]; then
            name_suffix="*"
        fi
        local sanitized_notation="$(sanitize_notation "$notation")"
        if [[ -n "$sanitized_notation" ]]; then
            if [[ ${#long_names[@]} -ne 1 ]] || [[ "$(echo $long_names | tr '[:lower:]' '[:upper:]')" != "--$sanitized_notation" ]]; then
                notation_val=" <$sanitized_notation>"
            fi
        fi
    else
        tag_val="# @flag"
    fi
    if [[ ${#short_names[@]} -eq 1 ]] && [[ ${#long_names[@]} -eq 1 ]]; then
        echo "${tag_val} ${short_names} ${long_names}${name_suffix}${notation_val}"
    else
        for name in ${short_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notation_val}"
        done
        for name in ${long_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notation_val}"
        done
    fi
}

handle_argument() {
    local input="$1"
    local name=( $( get_body "$input" | sed 's/,/ /g' ) )
    if [[ -z "$name" ]]; then
        return
    fi
    local sanitized_name=$(echo "$name" | tr -cd '[:alnum:]_-')
    if grep -qwi -- "$sanitized_name" <<<"${NO_ARGUMENT_NAMES[@]}"; then
        return
    fi
    local choices=$(get_choices "$input")
    local line="# @arg $sanitized_name"
    if [[ -n "$choices" ]]; then
        line="$line[$choices]"
    elif [[ "$name" == *'...' ]]; then
        line="$line*"
    fi
    echo "$line"
}

fetch_csv() {
    local name=$(echo $@ | sed 's/ /-/g')
    local path="$CACHE_DIR/$name.csv" 
    if [[ "$argc_force" != "1" ]] && [[ -f "$path" ]]; then
        cat "$path" | sed -n '3,$ p' 
    else
        local text="$($@ $argc_arg_help 2>&1)"
        local csv="$(echo "$text" | aichat -S -r $argc_spec)"
        echo "$csv" > "$path"
        echo "$csv" | sed -n '3,$ p' 
    fi
}

sanitize_notation() {
    local notation=$1
    if grep -q '<.*>' <<<"$notation"; then
        echo $notation | sed 's/\.\.\.//' | sed 's/.*<\(.\+\)>.*/\1/' 
    elif grep -q '\[.*\]' <<<"$notation"; then
        echo $notation | sed 's/\.\.\.//' | sed 's/.*\[\(.\+\)\].*/\1/' 
    fi
}

get_kind() {
    echo "$1" | awk -F'|' '{print $2}' | awk '{$1=$1};1'
}

get_body() {
    echo "$1" | awk -F'|' '{print $3}' | awk '{$1=$1};1'
}

get_choices() {
    choices=$(echo "$1" | awk -F'|' '{print $4}' | awk '{$1=$1};1' | sed 's/, */|/g' | tr -d '*')
    if [[ "$choices" == *'|'* ]]; then
        echo "$choices"
    fi
}

apply_patches() {
    local sed_file="$ROOT_DIR/patches/${argc_cmd}.sed"
    if [[ -f "$sed_file" ]]; then
        sed -i -f $sed_file $output_file
    fi
    local embed_file="$ROOT_DIR/patches/${argc_cmd}.sh"
    if [[ -f "$embed_file" ]]; then
        echo >> $output_file
        cat "$embed_file" >> $output_file
        echo >> $output_file
        if grep -q _argc_utils_ "$embed_file"; then
            echo >> $output_file
            cat "$_ARGC_UTILS_FILE" >> $output_file
            echo >> $output_file
        fi
    fi
}

validate_script() {
    output=$(bash $output_file --help 2>&1)
    if ! grep -q "USAGE:" <<<"$output"; then
        echo $output
    fi
}

maybe_test() {
    if [[ "$argc_cmd" == '__test'* ]]; then
        COMPLETIONS_DIR="$ROOT_DIR/tests"
        CACHE_DIR="$ROOT_DIR/tests"
        if [[ "$argc_cmd" == '__test_debug' ]]; then
            set -x
        fi
    fi
}

print_head() {
    printf "%s\n" "#!/usr/bin/env bash"
    printf "%s\n" "# Generated with \`./generate.sh $command_line\`. DON'T MODIFY IT"
    printf "\n"
}

print_tail() {
    printf "\n%s" "eval \"\$(argc \"\$0\" \"\$@\")\""
}

eval "$(argc "$0" "$@")"
run