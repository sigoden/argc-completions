#!/usr/bin/env bash

# @option -a --arg-help=--help      Command argument to get help
# @option --spec[=generic|clap]     Choose a spec
# @arg cmd!                         Specify the command, must able to run locally

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
COMPLETIONS_DIR=${ARGC_COMPLETIONS_DIR:-"$ROOT_DIR/completions"}
CACHE_DIR="$ROOT_DIR/cache"
IFS=$'\n'
[[ ! -d "$CACHE_DIR" ]] && mkdir -p "$CACHE_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

command_line="$@"

run() {
    output_file="$COMPLETIONS_DIR/$argc_cmd.sh"
    print_head > $output_file
    handle_lines $argc_cmd
    apply_patches
    print_tail >> $output_file
}

handle_lines() {
    csv=( $(fetch_csv $@) )
    local names=""
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ -n "$kind" ]] && [[ "$kind" != "command" ]] && [[ "$kind" != "argument" ]]; then
            local name=$(get_name "$item")
            if [[ -n "$name" ]] && [[ "$names" != *"($kind:$name)"* ]]; then
                names="$names ($kind:$name) "
                handle_option "$item" >> $output_file
            fi
        fi
    done
    names=""
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        if [[ "$kind" == "argument" ]]; then
            local name=$(get_name "$item")
            if [[ -n "$name" ]] && [[ "$names" != *"($kind:$name)"* ]]; then
                names="$names ($kind:$name) "
                handle_argument "$item" >> $output_file
            fi
        fi
    done
    if [[ $# -eq 1 ]]; then
        names=""
        for item in ${csv[@]}; do
            local kind=$(get_kind "$item")
            if [[ "$kind" == "command" ]]; then
                local name=$(get_name "$item")
                if [[ -n "$name" ]] && [[ "$names" != *"($kind:$name)"* ]]; then
                    names="$names ($kind:$name) "
                    handle_subcommand "$item" $@ $name >> $output_file
                fi
            fi
        done
    fi
}

handle_subcommand() {
    local input="$1"
    local name=$(get_name "$input")
    if [[ "$name" != "help" ]] &&  [[ "$name" != *" "* ]]; then
        echo
        echo "# @cmd"
        local aliases=$(get_aliases "$input")
        if [[ -n "$aliases" ]]; then
            echo "# @alias $(echo $aliases | tr -d ' ')"
        fi
        handle_lines ${@:2}
        echo "$name() {"
        echo "    :;"
        echo "}"
        echo
    fi
}


handle_option() {
    local input="$1"
    local name=$(get_name "$input")
    local aliases=$(get_aliases "$input")
    local notation=$(get_notation "$input")
    local choices="$(get_choices "$input")"
    local line tag_val short_val name_suffix notation_val
    local name_aliases=()
    if [[ -n "$aliases" ]]; then
        local vals=( $(echo $aliases | sed 's/, */\n/g') )
        for val in ${vals[@]}; do 
            if [[ ${#val} -eq 1 ]]; then
                short_val=" -$val"
            elif [[ ${#val} -eq 2 ]] && [[ $val == '-'* ]]; then
                short_val=" $val"
            else
                name_aliases+=( "$val" )
            fi
        done
    fi
    if [[ "$name" == "help" ]] || [[ "$name" == "version" ]]; then
        return
    fi
    if [[ -n "$notation" ]] || [[ -n "$choices" ]]; then
        tag_val="# @option"
        if [[ -n "$choices" ]]; then
            name_suffix="["$choices"]"
        elif [[ "$notation" == *'...' ]]; then
            name_suffix="*"
        fi
        notation="$(sanitize_notation "$notation")"
        if [[ -n "$notation" ]]; then
            if [[  "$(echo "$name" | tr '[:upper:]' '[:lower:]')" != "$(echo "$notation" | tr '[:upper:]' '[:lower:]')" ]]; then
                notation_val=" <$notation>"
            fi
        fi
    else
        tag_val="# @flag"
    fi
    echo "${tag_val}${short_val} --${name}${name_suffix}${notation_val}"
    for val in ${name_aliases[@]}; do
        echo "${tag_val} --${val}${name_suffix}${notation_val}"
    done
}

handle_argument() {
    local input="$1"
    local name=$(get_name "$input")
    local notation=$(get_notation "$input")
    local choices=$(get_choices "$input")
    local name=$(echo $name | sed 's/\[\(.*\)\]/\1/' | sed 's/<\(.*\)>/\1/' | tr '[:upper:]' '[:lower:]')
    local line="# @arg $name"
    if [[ -n "$choices" ]]; then
        line="$line[$choices]"
    elif [[ "$notation" == *'...' ]]; then
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

get_name() {
    echo "$1" | awk -F'|' '{print $3}' | xargs echo -n | sed 's/ .*//'
}

get_aliases() {
    echo "$1" | awk -F'|' '{print $4}' | xargs echo -n
}

get_notation() {
    echo "$1" | awk -F'|' '{print $5}' | xargs echo -n
}

get_choices() {
    choices=$(echo "$1" | awk -F'|' '{print $6}' | xargs echo -n | sed 's/, */|/g')
    if [[ "$choices" == *'|'* ]]; then
        echo "$choices"
    fi
}

apply_patches() {
    local files=( $(ls -1 $ROOT_DIR/patches | grep "${argc_cmd}__") )
    for patch_file in ${files[@]}; do
        name=$(basename $patch_file .sh | sed 's|'$argc_cmd'__||')
        name2=$(echo $name | tr '-' '_')
        target="$ROOT_DIR/completions/$argc_cmd.sh"
        sed -i 's/'$name'/'$name'[`__choice_'$name2'`]/' $output_file
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