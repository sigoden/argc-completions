#!/usr/bin/env bash

# @describe Automaticlly generate completion script for the command

# @option --spec=generic            Choose a spec
# @option --level=1                 Additonal subcommand level
# @option --cache-dir               Specify cache dir
# @option --output-dir              Specify output dir
# @flag --force                     Ignore cache csv When running
# @arg cmd!                         Specify the command, must able to run locally
# @arg subcmd                       Optional sub command

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

export NO_COLOR=true
export AICHAT_ROLES_FILE="$ROOT_DIR/roles.yaml"

NO_SUBCOMMAND_NAMES=( "help" "command" "command" "subcommand" "none" "N/A" )
NO_ARGUMENT_NAMES=( "flags" "options" "commands" "command" )
NO_OPTION_NAMES=( "--help" "--version" )

store_command_names=()

handle_lines() {
    store_option_names=()
    local csv="$(fetch_csv $@)"
    while read -r item; do
        local body="$(get_body "$item")"
        if [[ -n "$body" ]]; then
            handle_option "$item" >> "$output_file"
        fi
    done < <(echo "$csv" | grep -iE ' *\| *-.*\|')
    while read -r item; do
        local body="$(get_body "$item")"
        if [[ -n "$body" ]]; then
            handle_argument "$item" >> "$output_file"
        fi
    done < <(echo "$csv" | grep -iE ' *\| *argument *\|')
    if [[ $# -gt 1 ]] && [[ ${#args[@]} -eq $# ]]; then
        echo "# SUBCMD-INJECT" >> "$output_file"
    fi
    if [[ $# -lt $(( ${#args[@]} + $argc_level )) ]]; then
        while read -r item; do
            local body="$(get_body "$item")"
            if [[ -n "$body" ]]; then
                handle_subcommand "$item" $@ >> "$output_file"
            fi
        done < <(echo "$csv" | grep -iE ' *\| *(command|subcommand) *\|')
    fi
}

handle_subcommand() {
    local input="$1"
    local valid_names=()
    while read -r name; do
        if [[ "$name" == '<'* ]] || [[ "$name" == '['* ]] || grep -qwi -- "$name" <<<"${NO_SUBCOMMAND_NAMES[@]}"; then
            :;
        else
            if [[  ! " ${store_command_names[*]} " =~ " $name " ]]; then
                valid_names+=( "$name" )
                store_command_names+=( "$name" )
            fi
        fi
    done < <( parse_body "$( get_body "$input" )" )
    if [[ ${#valid_names[@]} -eq 0 ]]; then
        return
    fi
    local cmd_name
    local cmd_aliases=()
    for name in ${valid_names[@]}; do
        if [[ -z "$cmd_name" ]] && [[ ${#name} -gt 2 ]]; then
            cmd_name="$name"
        else
            cmd_aliases+=( "$name" )
        fi
    done
    if [[ -z "$cmd_name" ]]; then
        cmd_name="${cmd_aliases[0]}"
        cmd_aliases=( "${cmd_aliases[@]:1}" )
    fi
    local cmd_args=( "${args[@]}" "$cmd_name" )
    local cmd_level=${#cmd_args[@]}
    echo
    echo "# $(repeat_string '{' $cmd_level) ${cmd_args[@]}"
    echo "# @cmd"
    if [[ -n "$cmd_aliases" ]]; then
        echo "# @alias $(echo "$cmd_aliases" | tr -d ' ')"
    fi
    local subcmd_file="$subcmds_dir/$(concat_args ${cmd_args[@]}).sh"
    if [[ -f "$subcmd_file" ]]; then
        cat "$subcmd_file" \
            | sed 's/^\([^_][A-Za-z0-9_-]\+\)()/'"$name"'::\1()/' \
            | sed -n '/eval.*(argc /{n;x;d;};x;1d;p;${x;p;}' \
            | sed 's/# SUBCMD-INJECT/'"$name"'() {\n    :;\n}/'
    else
        handle_lines ${cmd_args[@]}
        print_cmd_fn $cmd_name
    fi
    echo "# $(repeat_string '}' $cmd_level) ${cmd_args[@]}"
    echo 
}


handle_option() {
    local input="$1"
    local name
    local short_names=()
    local long_names=()
    local name_suffix=""
    local notations=()
    local choices="$(get_choices "$input")"
    local should_dedup=0
    add_notation() {
        local name="$1"
        if [[ "$name" == *'...'* ]]; then
            name_suffix="*"
        fi
        local notation="$(normalize_notation "$name")"
        if [[ "$name_suffix" == '*' ]] && [[ "$notations" == "$notation" ]]; then
            return
        fi
        if [[ $should_dedup -eq 1 ]]; then
            if [[ ! " ${notations[*]} " =~ " $notation " ]]; then
                notations+=( "$notation" )
            fi
        else
            notations+=( "$notation" )
        fi
        should_dedup=0
    }
    local skip=false
    while read -r name; do
        if [[ "$skip" == "true" ]]; then
            continue
        fi
        if [[ " ${NO_OPTION_NAMES[*]} " =~ " $name " ]]; then
            skip=true
            continue
        fi
        if [[  " ${store_option_names[*]} " =~ " $name " ]]; then
            continue
        fi
        if [[ "$name" == '--'* ]]; then
            should_dedup=1
            if [[ "$name" == *'...' ]]; then
                name_suffix="*"
                name="${name::-3}"
            elif [[ "$name" == *'='* ]]; then
                name="$(echo "$name" | tr -cd '[:alnum:]:=_-')"
                add_notation "${name#*=}"
                name="${name%=*}"
            fi
            if [[ "$name" == '--[no-]'* ]]; then
                local name="${name:7}"
                long_names+=( "--$name" "--no-$name" )
                store_option_names+=( "--$name" "--no-$name" )
            else
                long_names+=( "$name" )
                store_option_names+=( "$name" )
            fi
        elif [[ "$name" == '-'* ]]; then
            if [[ "${name:2:1}" =~ [[:alnum:]] ]]; then
                continue
            fi
            name="${name:0:2}"
            short_names+=( "$name" )
            store_option_names+=( "$name" )
        else
            if [[ -z "$choices" ]] && ([[ "$name" == '<'*'>' ]] || [[ "$name" == '('*')' ]]); then
                if grep -qE '<(\w+,)+(\w+)?>' <<<"$name"; then
                    choices="$(echo "${name:1:-1}" | tr ',' '|')"
                    continue
                elif grep -qE '\((\w+,)+(\w+)?\)' <<<"$name"; then
                    choices="$(echo "${name:1:-1}" | tr ',' '|')"
                    continue
                fi
            fi
            add_notation "$name"
        fi
    done < <( parse_body "$( get_body "$input" )" )
    if [[ "$skip" == "true" ]]; then
        return
    fi
    if [[ -z "$short_names" ]] && [[ -z "$long_names" ]]; then
        return
    fi
    local notations_val
    local tag_val
    if [[ -n "$notations" ]] || [[ -n "$choices" ]]; then
        tag_val="# @option"
        if [[ -n "$choices" ]]; then
            name_suffix="${name_suffix}[$choices]"
        fi
        if [[ -n "$notations" ]]; then
            if [[ ${#long_names[@]} -ne 1 ]] || [[ "<$(echo ${long_names:2} | tr '[:lower:]' '[:upper:]')>" != "${notations[*]}" ]]; then
                notations_val=" ${notations[*]}"
            fi
        fi
    else
        tag_val="# @flag"
    fi
    if [[ ${#short_names[@]} -eq 1 ]] && [[ ${#long_names[@]} -eq 1 ]]; then
        echo "${tag_val} ${short_names} ${long_names}${name_suffix}${notations_val}"
    else
        for name in ${short_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notations_val}"
        done
        for name in ${long_names[@]}; do
            echo "${tag_val} ${name}${name_suffix}${notations_val}"
        done
    fi
}

handle_argument() {
    local input="$1"
    local name=""
    local index=0;
    while read -r item; do
        if [[ $index == 0 ]]; then
            name="$item"
        elif [[ $index == 1 ]]; then
            if [[ "$item" == ".." ]] || [[ "$item" == "..." ]]; then
                name="$name..."
            fi
        fi
        index=$(( $index + 1))
    done < <( parse_body "$( get_body "$input" )" )
    if [[ -z "$name" ]]; then
        return
    fi
    local name_suffix=""
    local required=false
    local multiple=false
    if [[ "$name" == '<'* ]] ; then
        required=true
    fi
    if [[ "$name" == *'..'* ]]; then
        multiple=true
    fi
    case "$required:$multiple" in
        "true:true")
            name_suffix="+"
            ;;
        "false:true")
            name_suffix="*"
            ;;
        "true:false")
            name_suffix="!"
            ;;
        *)
            ;;
    esac
    local arg_name="$(echo "$name" | tr -cd '[:alnum:]_-')"
    if grep -qwi -- "$arg_name" <<<"${NO_ARGUMENT_NAMES[@]}"; then
        return
    fi
    local notation="$(normalize_notation "$name")"
    local choices="$(get_choices "$input")"
    if [[ "$notation" == "<$arg_name>" ]]; then
        notation=""
    else
        notation=" $notation"
    fi
    if [[ -n "$choices" ]]; then
        name_suffix="${name_suffix}[$choices]"
    fi
    echo "# @arg $arg_name$name_suffix$notation"
}

fetch_csv() {
    local name=$(echo $@ | sed 's/ /-/g')
    local path="$cache_dir/$name.csv" 
    if [[ "$argc_force" != "1" ]] && [[ -f "$path" ]]; then
        cat "$path" | sed -n '3,$ p' 
    else
        local text
        text="$($@ --help 2>&1)"
        if [[ $? -ne 0 ]]; then
            local last="${!#}"
            local rest=("${@:1:$#-1}")
            text="$($rest help $last 2>&1)"
        fi
        local csv="$(echo "$text" | aichat -S -r "$argc_spec")"
        echo "$csv" > "$path"
        echo "$csv" | sed -n '3,$ p' 
    fi
}

normalize_notation() {
    local notation="$(echo "$1" |  sed 's/\\//g' | sed 's/\.\.\.//')"
    local result
    if grep -q '<.*>' <<<"$notation"; then
        result=$(echo "$notation" | sed 's/.*<\(.\+\)>.*/\1/')
    elif grep -q '\[.*\]' <<<"$notation"; then
        result=$(echo "$notation" | sed 's/.*\[\(.\+\)\].*/\1/')
    else
        result="$notation"
    fi
    echo "<$result>"
}

get_body() {
    echo "$1" | awk -F'|' '{print $3}' | awk '{$1=$1};1'
}

get_choices() {
    choices=$(echo "$1" | awk -F'|' '{print $4}' | awk '{$1=$1};1')
    if [[ -z "$choices" ]]; then
        return
    fi
    commas=$(echo "$choices" | grep -o "," | wc -l)
    choices=( $(echo "$choices" | sed 's/[,/]/ /g' | tr -d '*') )
    if [[ ${#choices[@]} -le 1 ]] || [[ ${#choices[@]} -gt $(( $commas + 1 )) ]]; then
        return
    fi
    echo "${choices[*]}" | tr ' ' '|'
}

merge() {
    local sed_file="$src_dir/${output_name}.sed"
    if [[ -f "$sed_file" ]]; then
        sed -i -f "$sed_file" "$output_file"
    fi
    local src_file="$src_dir/${output_name}.sh"
    if [[ -f "$src_file" ]]; then
        echo >> "$output_file"
        cat "$src_file" >> "$output_file"
        echo >> "$output_file"
        while read -r util_fn_name; do
            util_fn_file="$utils_dir/${util_fn_name}.sh"
            if [ -f "$util_fn_file" ]; then
                echo >> "$output_file"
                cat "$util_fn_file" >> "$output_file"
                echo >> "$output_file"
            else
                echo "Unknown util fn: $util_fn_name" >&2
            fi
        done < <(grep -o '_argc_util_[[:alnum:]_]*' "$src_file" | uniq)
    fi
}

validate_script() {
    output=$(bash "$output_file" --help 2>&1)
    if ! grep -q "USAGE:" <<<"$output"; then
        echo "$output"
    fi
}

set_globals() {
    args=( $argc_cmd $argc_subcmd )
    cache_dir="${argc_cache_dir:-"$ROOT_DIR/cache"}"
    output_dir="${argc_output_dir:-"$ROOT_DIR/completions"}"
    subcmds_dir="$ROOT_DIR/subcmds"
    src_dir="$ROOT_DIR/src"
    utils_dir="$ROOT_DIR/utils"
    store_command_names+=( "$argc_cmd" )
    output_name="$(concat_args ${args[@]})"
    [[ ! -d "$cache_dir" ]] && mkdir -p "$cache_dir"
    [[ ! -d "$output_dir" ]] && mkdir -p "$output_dir"
    [[ ! -d "$subcmds_dir" ]] && mkdir -p "$subcmds_dir"

    if [[ "$output_name" == '__'* ]]; then
        cache_dir="$ROOT_DIR/tests"
        output_dir="$ROOT_DIR/tests"
    fi
    if [[ -n "$argc_subcmd" ]]; then
        output_dir="$subcmds_dir"
    fi
    output_file="$output_dir/$output_name.sh"
}

parse_body() {
    local input="$*"
    local balances=""
    local word=""
    local ch
    for (( i=0; i<${#input}; i++ )); do
        ch="${input:$i:1}"
        if [[ "$ch" == " " ]]; then
            if [[ -z "$balances" ]]; then
                if [[ -n "$word" ]]; then
                    printf "%s\n" "$word" 2>/dev/null
                    word=""
                fi
            else
                word="$word-"
            fi
        elif [[ "$ch" == "<" ]] || [[ "$ch" == "[" ]] || [[ "$ch" == "(" ]]; then
            balances="$balances$ch"
            word="$word$ch"
        elif [[ "$ch" == '>' ]]; then
            if [[ "${balances: -1}" == '<' ]]; then
                balances="${balances::-1}"
            fi
            word="$word$ch"
        elif [[ "$ch" == ']' ]]; then
            if [[ "${balances: -1}" == '[' ]]; then
                balances="${balances::-1}"
            fi
            word="$word$ch"
        elif [[ "$ch" == ')' ]]; then
            if [[ "${balances: -1}" == '(' ]]; then
                balances="${balances::-1}"
            fi
            word="$word$ch"
        elif [[ "$ch" == ',' ]] || [[ "$ch" == '/' ]]; then
            if [[ -z "$balances" ]]; then
                if [[ -n "$word" ]]; then
                    printf "%s\n" "$word" 2>/dev/null
                    word=""
                fi
            else
                word="$word,"
            fi
        elif [[ "$ch" == '\' ]]; then
            :;
        else
            word="$word$ch"
        fi
    done
    if [[ -n "$word" ]]; then
        printf "%s\n" "$word" 2>/dev/null
        word=""
    fi
}

concat_args() {
    echo $@ | awk '{$1=$1};1' | tr ' ' '-'
}

repeat_string() {
    printf "%0.s$1" $(seq 1 $2)
}

print_head() {
    if [[ -z "$argc_subcmd" ]]; then
        printf "%s\n" "#!/usr/bin/env bash"
        printf "%s\n" "# Automatic generated, DON'T MODIFY IT."
        printf "\n"
    fi
}

print_tail() {
    printf "\n%s" "eval \"\$(argc \"\$0\" \"\$@\")\""
}

print_cmd_fn() {
    echo "$1() {"
    echo "    :;"
    echo "}"
}

eval "$(argc "$0" "$@")"

set_globals
print_head > "$output_file"
handle_lines ${args[@]}
merge
print_tail >> "$output_file"
validate_script