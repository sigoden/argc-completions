#!/usr/bin/env bash

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
TMP_DIR="$ROOT_DIR/tmp"
IFS=$'\n'
[[ ! -d "$TMP_DIR" ]] && mkdir -p "$TMP_DIR"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

# @cmd Generate for a generic cli
# @option -a --arg-help=--help Command argument to get help
# @arg cmd! - Specify the command, must able to run locally
generic() {
    run generic $argc_cmd
}

# @cmd Generate for a clap-based/rust cli
# @option -a --arg-help=--help Command argument to get help
# @arg cmd! - Specify the command, must able to run locally
clap() {
    run clap $argc_cmd
}

run() {
    local type=$1
    local bin=$2
    local target="$ROOT_DIR/completions/$bin.sh"
    print_head $type $bin > $target
    csv=( $(fetch_csv $type $bin) )
    local names=""
    for item in ${csv[@]}; do
        local kind=$(get_kind "$item")
        local name=$(get_name "$item")
        if [[ -n "$name" ]] && [[ "$names" != *"($kind:$name)"* ]]; then
            names="$names ($kind:$name) "
            if [[ "$kind" == "option" ]]; then
                handle_option "$item" >> $target
            elif [[ "$kind" == "argument" ]]; then
                handle_argument "$item" >> $target
            elif [[ "$kind" == "command" ]]; then
                handle_subcmd "$item" $type $bin >> $target
            fi
        fi
    done
    apply_patches $bin
    print_tail >> $target
}

handle_subcmd() {
    local input="$1"
    local type=$2
    local cmd="${@:3}"
    local name=$(get_name "$input")
    if [[ "$name" != "help" ]] &&  [[ "$name" != *" "* ]]; then
        echo
        echo "# @cmd"
        local aliases=$(get_aliases "$input")
        if [[ -n "$aliases" ]]; then
            echo "# @alias $(echo $aliases | tr -d ' ')"
        fi
        local subcmds=()
        local subcmd_names=""
        local csv=( $(fetch_csv $type $cmd $name) )
        for item in ${csv[@]}; do
            local kind=$(get_kind "$item")
            local subcmd_name=$(get_name "$item")
            if [[ -n "$subcmd_name" ]] && [[ "$subcmd_names" != *"($kind:$subcmd_name)"* ]]; then
                subcmd_names="$subcmd_names ($kind:$subcmd_name) "
                if [[ "$kind" == "option" ]]; then
                    handle_option "$item"
                elif [[ "$kind" == "argument" ]]; then
                    handle_argument "$item"
                elif [[ "$kind" == "command" ]]; then
                    if [[ "$subcmd_name" != "$name" ]]; then
                        subcmds+=("$item")
                    fi
                fi
            fi
        done
        echo "$name() {"
        echo "    :;"
        echo "}"
        echo
        for item in $subcmds; do
            handle_subcmd "$item" $type $cmd $name
        done
    fi
}


handle_option() {
    local input="$1"
    local name=$(get_name "$input")
    local aliases=$(get_aliases "$input")
    local notation=$(get_notation "$input")
    local multiple=$(get_multiple "$input")
    local choices="$(get_choices "$input")"
    local line tag_val short_val name_suffix notation_val
    local name_aliases=()
    if [[ -n "$aliases" ]]; then
        local vals=( $(echo $aliases | sed 's/, */\n/g') )
        for val in ${vals[@]}; do 
            if [[ ${#val} -eq 1 ]]; then
                short_val=" -$val"
            else
                name_aliases+=( "$val" )
            fi
        done
    fi
    if [[ "$name" =~ ^'[no-]'* ]]; then
        name=${name:5}
        name_aliases+=( "no-$name" )
    fi
    if [[ "$name" == "help" ]] || [[ "$name" == "version" ]]; then
        return
    fi
    if [[ -n "$notation" ]] || [[ -n "$choices" ]]; then
        tag_val="# @option"

        notation="$(sanitize_notation "$notation")"
        if [[ -n "$choices" ]]; then
            name_suffix="["$choices"]"
        elif [[ "$multiple" == "1" ]]; then
            name_suffix="*"
        fi
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
    local multiple=$(get_multiple "$input")
    local choices=$(get_choices "$input")
    local name=$(echo $name | sed 's/\[\(.*\)\]/\1/' | sed 's/<\(.*\)>/\1/' | tr '[:upper:]' '[:lower:]')
    local line="# @arg $name"
    if [[ -n "$choices" ]]; then
        line="$line[$choices]"
    elif [[ "$multiple" == "1" ]]; then
        line="$line*"
    fi
    echo "$line"
}

fetch_csv() {
    local type=$1
    local cmd="${@:2}"
    local name=$(echo $cmd | sed 's/ /-/g')
    local path="$TMP_DIR/$name.csv" 
    if [[ -f "$path" ]]; then
        cat "$path" | sed -n '2,$ p' 
    else
        local text="$($cmd $argc_arg_help 2>&1)"
        local csv="$(echo "$text" | aichat -S -r $type)"
        echo "$csv" > "$path"
        echo "$csv" | sed -n '2,$ p' 
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

get_kind() {
    echo "$1" | awk -F'|' '{print $2}'
}

get_name() {
    echo "$1" | awk -F'|' '{print $3}' | sed 's/ .*//'
}

get_aliases() {
    echo "$1" | awk -F'|' '{print $4}'
}

get_notation() {
    echo "$1" | awk -F'|' '{print $5}'
}

get_multiple() {
    echo "$1" | awk -F'|' '{print $6}'
}

get_choices() {
    echo "$1" | awk -F'|' '{print $7}' | sed 's/, */|/g'
}

apply_patches() {
    local bin=$1
    local files=( $(ls -1 $ROOT_DIR/patches | grep "${bin}__") )
    for patch_file in ${files[@]}; do
        name=$(basename $patch_file .sh | sed 's|'$bin'__||')
        name2=$(echo $name | tr '-' '_')
        target="$ROOT_DIR/completions/$bin.sh"
        sed -i 's/'$name'/'$name'[`__choice_'$name2'`]/' $target
        echo >> $target
        cat $ROOT_DIR/patches/$patch_file >> $target
        echo -e "\n" >> $target
    done
}

print_head() {
    printf "%s\n" "#!/usr/bin/env bash"
    printf "%s\n" "# Generated with \`./generate.sh $1 $2\`. DON'T MODIFY IT"
    printf "\n"
}

print_tail() {
    printf "\n%s" "eval \"\$(argc \"\$0\" \"\$@\")\""
}

eval "$(argc "$0" "$@")"
