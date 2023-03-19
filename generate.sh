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
        local kind=$(echo "$item" | awk -F'|' '{print $2}')
        local name=$(echo "$item" | awk -F'|' '{print $3}')
        if [[ -n "$name" ]] && [[ "$names" != *"($kind:$name)"* ]]; then
            names="$names ($kind:$name) "
            if [[ "$kind" == "option" ]]; then
                handle_option "$item" >> $target
            elif [[ "$kind" == "positional" ]]; then
                handle_positional "$item" >> $target
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
    local name=$(echo "$input" | awk -F'|' '{print $3}')
    if [[ "$name" != "help" ]] &&  [[ "$name" != *" "* ]]; then
        echo
        echo "# @cmd"
        local aliases=$(echo $input | awk -F'|' '{print $8}')
        if [[ -n "$aliases" ]]; then
            echo "# @alias $aliases"
        fi
        local subcmds=()
        local subcmd_names=""
        local csv=( $(fetch_csv $type $cmd $name) )
        for item in ${csv[@]}; do
            local kind=$(echo "$item" | awk -F'|' '{print $2}')
            local subcmd_name=$(echo "$item" | awk -F'|' '{print $3}')
            if [[ -n "$subcmd_name" ]] && [[ "$subcmd_names" != *"($kind:$subcmd_name)"* ]]; then
                subcmd_names="$subcmd_names ($kind:$subcmd_name) "
                if [[ "$kind" == "option" ]]; then
                    handle_option "$item"
                elif [[ "$kind" == "positional" ]]; then
                    handle_positional "$item"
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
    local name=$(echo $input | awk -F'|' '{print $3}')
    local short=$(echo $input | awk -F'|' '{print $4}')
    local notation=$(echo $input | awk -F'|' '{print $5}')
    local multiple=$(echo $input | awk -F'|' '{print $6}')
    local choices="$(echo $input | awk -F'|' '{print $7}' | sed 's/, */|/g')"
    local line=""
    if [[ "$name" == "help" ]] || [[ "$name" == "version" ]]; then
        return
    fi
    if [[ -n "$notation" ]] || [[ -n "$choices" ]]; then
        line="# @option"
        short=$(echo $short | sed 's/-//g')
        if [[ ${#short} -eq 1 ]]; then
            line="$line -$short"
        fi
        line="$line --$name"

        notation="$(sanitize_notation "$notation")"
        if [[ "$notation" == *'|'* ]] && [[ -z "$choices" ]]; then
            choices=$notation
            notation=""
        fi
        if [[ -n "$choices" ]]; then
            line="$line["$choices"]"
        elif [[ "$multiple" == "1" ]]; then
            line="$line*"
        fi
        local name_lc=$(echo "$name" | tr '[:upper:]' '[:lower:]')
        local notation_lc=$(echo "$notation" | tr '[:upper:]' '[:lower:]')
        if [[ -n "$notation" ]] && [[  $name_lc != $notation_lc ]]; then
            line="$line <$notation>"
        fi
    else
        line="# @flag"
        if [[ -n "$short" ]]; then
            line="$line  -$short"
        fi
        line="$line  --$name"
    fi
    echo "$line"
}

handle_positional() {
    local input="$1"
    local name=$(echo $input | awk -F'|' '{print $3}')
    local multiple=$(echo $input | awk -F'|' '{print $6}')
    local choices=$(echo $input | awk -F'|' '{print $7}' | sed 's/, */|/g')
    local line="# @arg $(sanitize_name $name)"
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

sanitize_name() {
    echo $1 | sed 's/\[\(.*\)\]/\1/' | sed 's/<\(.*\)>/\1/' | tr '[:upper:]' '[:lower:]'
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
