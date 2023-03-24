#!/usr/bin/env bash

# @option -a --arg-help=--help      Command argument to get help
# @option --spec[=generic|clap]     Choose a spec
# @flag --force                     Ignore cache csv When running
# @arg cmd!                         Specify the command, must able to run locally

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$ROOT_DIR/completions"}
CACHE_DIR="$ROOT_DIR/cache"
IFS=$'\n'
[[ ! -d "$CACHE_DIR" ]] && mkdir -p "$CACHE_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

NO_COMMAND_NAMES=( "help" "command" "command" "subcommand" "completions" )
NO_ARGUMENT_NAMES=( "flags" "options" )

command_line="$@"
store_command_names=""

run() {
    output_file="$COMPLETIONS_DIR/$argc_cmd.sh"
    print_head > $output_file
    handle_lines $argc_cmd
    apply_patches
    print_tail >> $output_file
}

handle_lines() {
    store_option_names=""
    csv=( $(fetch_csv $@) )
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ -n "$kind" ]] && [[ "$kind" != "command" ]] && [[ "$kind" != "argument" ]]; then
            local names=$(get_names "$item")
            if [[ -n "$names" ]]; then
                handle_option "$item" >> $output_file
            fi
        fi
    done
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ "$kind" == "argument" ]]; then
            local names=$(get_names "$item")
            if [[ -n "$names" ]]; then
                handle_argument "$item" >> $output_file
            fi
        fi
    done
    if [[ $# -eq 1 ]]; then
        for item in ${csv[@]}; do
            local kind=$(get_kind "$item")
            if [[ "$kind" == "command" ]]; then
                local names=$(get_names "$item")
                if [[ -n "$names" ]]; then
                    handle_subcommand "$item" $@ >> $output_file
                fi
            fi
        done
    fi
}

handle_subcommand() {
    local input="$1"
    local names=$(list_names "$input")
    if [[ -z "$names" ]] || [[ "$names" == '<'* ]] || [[ "$names" == '['* ]] || grep -qwi -- "$names" <<<"${NO_COMMAND_NAMES[@]}"; then
        return
    fi
    local -a dedup_names
    for name in ${names[@]}; do
        if [[  ! " ${store_command_names[*]} " =~ " $name " ]]; then
            dedup_names+=( "$name" )
            store_command_names+=( "$name" )
        fi
    done
    if [[ ${#dedup_names[@]} -eq 0 ]]; then
        return
    fi
    local aliases=( "${dedup_names[@]:1}" )

    echo
    echo "# @cmd"
    if [[ -n "$aliases" ]]; then
        echo "# @alias $(echo $aliases | tr -d ' ')"
    fi
    handle_lines ${@:2} $names
    echo "$names() {"
    echo "    :;"
    echo "}"
    echo
}


handle_option() {
    local input="$1"
    local names=( $(list_names "$input") )
    local -a short_names
    local -a long_names
    for name in ${names[@]}; do
        if [[ "$name" == "--help" ]] || [[ "$name" == "--version" ]]; then
            return
        fi
        if [[  ! " ${store_option_names[*]} " =~ " $name " ]]; then
            if [[ "$name" == '--'* ]]; then
                long_names+=( "$name" )
                store_option_names+=( "$name" )
            elif [[ "$name" == '-'* ]]; then
                short_names+=( "$name" )
                store_option_names+=( "$name" )
            fi
        fi
    done
    if [[ -z "$short_names" ]] && [[ -z "$long_names" ]]; then
        return
    fi
    local notation_val
    local notation=$(get_notation "$input")
    local choices="$(get_choices "$input")"
    local tag_val short_val name_suffix
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
    local name=( $(list_names "$input") )
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
    echo "$1" | awk -F'|' '{print $2}' | xargs echo -n
}

get_names() {
    echo "$1" | awk -F'|' '{print $3}'
}

list_names() {
    get_names "$1" | tr ',' '\n' | awk '{$1=$1};1'
}

get_notation() {
    echo "$1" | awk -F'|' '{print $4}' | xargs echo -n
}

get_choices() {
    choices=$(echo "$1" | awk -F'|' '{print $5}' | xargs echo -n | sed 's/, */|/g')
    if [[ "$choices" == *'|'* ]]; then
        echo "$choices"
    fi
}

apply_patches() {
    local files=( $(ls -1 $ROOT_DIR/patches | grep "${argc_cmd}__") )
    for patch_file in ${files[@]}; do
        local name=$(basename $patch_file .sh | sed 's|'$argc_cmd'__||')
        if [[ "$name" != '--' ]]; then
            local name_underscore=$(echo $name | tr '-' '_')
            if [[ "$name" == '-'* ]]; then
                sed -i 's/'$name'\([+!*]\)\?\( <.*\)\?$/'$name'[`__choice_'$name_underscore'`]/' $output_file
            else 
                sed -i 's/'$name'\([+!*]\)\?\( <.*\)\?$/'$name'[`__choice_'$name_underscore'`]/' $output_file
            fi
        fi
        echo >> $output_file
        cat $ROOT_DIR/patches/$patch_file >> $output_file
        echo -e "\n" >> $output_file
    done
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